---
title: "Obsidian Local REST API 检测报告"
topic: ""
created: "2026-05-14"
updated: "2026-05-17"
type: "research_note"
status: "active"
quality_level: "C"
summary_cn: "- **路径**: `/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/` - **状态**: ✅ 存在，可访问 - **总 .md 文件数**: 1479 - **一级目录** (19个):   ```   00-索引与导航/          07-广告素材与创意/        14-学习与成长/   01-跨境相关文档"
summary_en: "Document regarding obsidian-local-rest-api-check. Reference for business decisions."
one_sentence_summary: "# Obsidian Local REST API 检测告  ## 检测时间  2026-05-14 15:47  ##..."
decision_value: "Reference clipping, not actionable"
review_note: "Clipping, low decision value"
category: ""
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[00-目录总览MOC]]
retrieval_keywords:
  - AI读取入口
  - 知识库总索引
  - Obsidian治理
  - Claude Code规则
routing_target:
  - "[[00-目录总览MOC]]"
---

# Obsidian Local REST API 检测告

## 检测时间

2026-05-14 15:47

## 1. Vault 路径检查

- **路径**: `/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/`
- **状态**: ✅ 存在，可访问
- **总 .md 文件数**: 1479
- **一级目录** (19个):
  ```
  00-索引与导航/          07-广告素材与创意/        14-学习与成长/
  01-跨境社媒与获客/      08-投流策略与复盘/        15-Archive/
  02-海外投流/           09-国内业务/             16-共享中枢/
  03-国内投流/           10-AI工具与自动化/       17-个人财务与账单分析/
  04-跨境选品与产品/      11-智囊团与知识蒸馏/     01-AI水族系统/
  05-跨境运营与客户开发/  12-AI技能/              Clippings/
  06-行业案例库/          13-问题库QA/
  ```

## 2. Obsidian Local REST API 检查

- **插件版本**: 3.6.2 (已安装 ✅)
- **Obsidian 版本**: 1.12.7
- **端口**: 27124 (HTTPS), 27123 (HTTP, 未启用)
- **API Key**: 已配置
- **证书**: 有效 (剩余 364 天)
- **状态**: ✅ 插件安装成功，API 在 Obsidian 运行时可用
- **认证测试**: `authenticated: true`

> **注意**: API 仅在 Obsidian 应用运行时可用。如果 Obsidian 未打开，API 将不可用。
> 开始审计前请确保 Obsidian 已打开并运行。

## 3. 能否读取文件

- **REST API 方式**: ✅ 可用（Obsidian 运行时）
- **直接文件系统访问**: ✅ 可用

测试成功的 API 端点：
- `GET /` — 返回服务状态和版本信息 ✅
- `GET /vault/?depth=1` — 返回根目录列表 ✅

## 4. 能否写入测试文件

- **REST API 方式写入**: API 支持 PUT/PATCH 写入（插件能力），但未实际测试写入
- **直接文件系统写入**: ✅ 可用

## 5. 下一步

确保 Obsidian 保持运行状态，然后启动第二阶段：全库审计。

审计将使用直接文件系统方式（而非 REST API），原因：
1. 更快，不受 API 连接稳定性影响
2. 不需要 Obsidian 持续运行
3. iCloud 同步文件可直接读写
