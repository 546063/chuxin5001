#!/bin/bash
# check_evidence_inbox.sh
# 投流证据导入箱扫描脚本
# 功能：扫描导入箱中的文件，生成报告，不读取/删除/移动文件
# 用法：bash check_evidence_inbox.sh

set -euo pipefail

# 配置
INBOX_DIR="$HOME/ai-workspaces/AI-Workspace-Obsidian/20-原始资料与下载暂存/投流证据导入箱"
REPORT_DIR="$HOME/ai-workspaces/AI-Workspace-Obsidian/16-知识库治理/投流知识库治理记录"
TODAY=$(date +%Y-%m-%d)
REPORT_FILE="$REPORT_DIR/投流证据导入箱扫描报告-${TODAY}.md"

# 检查导入箱是否存在
if [ ! -d "$INBOX_DIR" ]; then
    echo "ERROR: 导入箱目录不存在: $INBOX_DIR"
    exit 1
fi

# 确保报告目录存在
mkdir -p "$REPORT_DIR"

# 扫描文件
FILE_COUNT=0
IMAGE_COUNT=0
CSV_COUNT=0
EXCEL_COUNT=0
PDF_COUNT=0
OTHER_COUNT=0
SENSITIVE_COUNT=0

# 临时文件列表
TMPFILE=$(mktemp)

# 遍历文件（排除 README 和 dotfiles）
find "$INBOX_DIR" -maxdepth 1 -type f ! -name "README*" ! -name ".*" | while IFS= read -r filepath; do
    filename=$(basename "$filepath")
    filesize=$(stat -f%z "$filepath" 2>/dev/null || stat -c%s "$filepath" 2>/dev/null || echo "unknown")
    modtime=$(stat -f%Sm "$filepath" 2>/dev/null || stat -c%y "$filepath" 2>/dev/null || echo "unknown")

    # 判断文件类型
    ext="${filename##*.}"
    ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    case "$ext_lower" in
        png|jpg|jpeg|gif|bmp|webp)
            file_type="图片"
            ;;
        csv)
            file_type="CSV"
            ;;
        xls|xlsx)
            file_type="Excel"
            ;;
        pdf)
            file_type="PDF"
            ;;
        mp4|mov|avi)
            file_type="视频"
            ;;
        md|txt|json)
            file_type="文本"
            ;;
        *)
            file_type="其他($ext_lower)"
            ;;
    esac

    # 判断可能类别
    category="未知"
    if echo "$filename" | grep -qi "metric"; then
        category="广告数据"
    elif echo "$filename" | grep -qi "dashboard"; then
        category="广告后台截图"
    elif echo "$filename" | grep -qi "creative"; then
        category="素材截图"
    elif echo "$filename" | grep -qi "competitor"; then
        category="竞品广告截图"
    elif echo "$filename" | grep -qi "leadchat"; then
        category="客户聊天"
    fi

    # 判断是否可能含敏感信息
    sensitive="否"
    if echo "$filename" | grep -qi "sensitive\|leadchat\|whatsapp\|messenger"; then
        sensitive="可能"
    fi

    # 输出到临时文件
    echo "| $filename | $file_type | $filesize bytes | $modtime | $category | $sensitive |" >> "$TMPFILE"
done

# 统计
if [ -f "$TMPFILE" ]; then
    FILE_COUNT=$(wc -l < "$TMPFILE" | tr -d '[:space:]')
    IMAGE_COUNT=$(grep -c "图片" "$TMPFILE" 2>/dev/null | tr -d '[:space:]' || true)
    CSV_COUNT=$(grep -c "CSV" "$TMPFILE" 2>/dev/null | tr -d '[:space:]' || true)
    EXCEL_COUNT=$(grep -c "Excel" "$TMPFILE" 2>/dev/null | tr -d '[:space:]' || true)
    PDF_COUNT=$(grep -c "PDF" "$TMPFILE" 2>/dev/null | tr -d '[:space:]' || true)
    SENSITIVE_COUNT=$(grep -c "可能" "$TMPFILE" 2>/dev/null | tr -d '[:space:]' || true)
fi

# 确保计数为数字
FILE_COUNT=${FILE_COUNT:-0}
IMAGE_COUNT=${IMAGE_COUNT:-0}
CSV_COUNT=${CSV_COUNT:-0}
EXCEL_COUNT=${EXCEL_COUNT:-0}
PDF_COUNT=${PDF_COUNT:-0}
SENSITIVE_COUNT=${SENSITIVE_COUNT:-0}

# 生成报告
cat > "$REPORT_FILE" << EOF
---
title: "投流证据导入箱扫描报告-${TODAY}"
tags:
  - evidence-layer
  - scan-report
  - 投流证据层
type: "扫描报告"
module: "知识库治理"
created: "${TODAY}"
---

# 投流证据导入箱扫描报告

> 扫描时间：$(date +"%Y-%m-%d %H:%M:%S")
> 扫描路径：\`20-原始资料与下载暂存/投流证据导入箱/\`

---

## 一、概览

| 指标 | 数值 |
|------|------|
| 文件总数 | ${FILE_COUNT} |
| 图片数量 | ${IMAGE_COUNT} |
| CSV 数量 | ${CSV_COUNT} |
| Excel 数量 | ${EXCEL_COUNT} |
| PDF 数量 | ${PDF_COUNT} |
| 可能含敏感信息 | ${SENSITIVE_COUNT} |

---

## 二、文件清单

| 文件名 | 类型 | 大小 | 修改时间 | 可能类别 | 含敏感信息 |
|--------|------|------|---------|---------|-----------|
EOF

if [ -f "$TMPFILE" ] && [ "${FILE_COUNT:-0}" -gt 0 ] 2>/dev/null; then
    cat "$TMPFILE" >> "$REPORT_FILE"
else
    echo "| *(导入箱为空)* | - | - | - | - | - |" >> "$REPORT_FILE"
fi

cat >> "$REPORT_FILE" << 'EOF'

---

## 三、处理建议

EOF

if [ "${FILE_COUNT:-0}" -eq 0 ] 2>/dev/null; then
    echo "导入箱当前为空，无待处理文件。" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    echo "用户如需导入资料，请将文件放入：" >> "$REPORT_FILE"
    echo "  \`20-原始资料与下载暂存/投流证据导入箱/\`" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    echo "命名规范参考：" >> "$REPORT_FILE"
    echo "- 广告数据：\`platform_country_product_metrics_YYYYMMDD.csv\`" >> "$REPORT_FILE"
    echo "- 广告截图：\`platform_country_product_dashboard_YYYYMMDD_001.png\`" >> "$REPORT_FILE"
    echo "- 素材截图：\`platform_country_product_creative_YYYYMMDD_001.png\`" >> "$REPORT_FILE"
    echo "- 竞品截图：\`platform_country_product_competitor_YYYYMMDD_001.png\`" >> "$REPORT_FILE"
    echo "- 客户聊天：\`platform_country_product_leadchat_YYYYMMDD_001_sensitive.png\`" >> "$REPORT_FILE"
else
    echo "发现 ${FILE_COUNT} 个待处理文件。" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"

    if [ "${SENSITIVE_COUNT:-0}" -gt 0 ] 2>/dev/null; then
        echo "**注意**：${SENSITIVE_COUNT} 个文件可能包含敏感信息，需先脱敏。" >> "$REPORT_FILE"
        echo "" >> "$REPORT_FILE"
    fi

    echo "下一步：" >> "$REPORT_FILE"
    echo "1. 确认文件命名符合规范" >> "$REPORT_FILE"
    echo "2. 检查含敏感信息的文件是否需要脱敏" >> "$REPORT_FILE"
    echo "3. 由 Claude Code 执行归档和索引" >> "$REPORT_FILE"
fi

echo "" >> "$REPORT_FILE"
echo "---" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "**扫描完成。**" >> "$REPORT_FILE"

# 清理临时文件
rm -f "$TMPFILE"

echo "=== 扫描完成 ==="
echo "报告已生成: $REPORT_FILE"
echo "文件总数: $FILE_COUNT"
echo "图片: $IMAGE_COUNT | CSV: $CSV_COUNT | Excel: $EXCEL_COUNT | PDF: $PDF_COUNT | 可能含敏感: $SENSITIVE_COUNT"
