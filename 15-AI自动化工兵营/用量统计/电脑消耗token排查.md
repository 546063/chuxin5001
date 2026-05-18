---
title: '"电脑消耗token排查"'
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: research_note
status: active
quality_level: B
summary_cn: '把本台电脑所有的token消耗备份一份到obsidian文件夹，包含Hermes，codex和claude code，cc-connect等，生成obdidian报告，保存在/Users/a1/Library/Mobile
  Documents/iCloud~md~obsidian/Documents。。。。Last login: Tue May 12 20:14:21 on ttys000
  a1@相关文档'
summary_en: Document regarding 电脑消耗token排查. Reference for business decisions.
one_sentence_summary: 把本台电脑所有的token消耗备份一份到obsidian文件夹，包含Hermes，codex和claude code，c...
decision_value: AI automation documentation
review_note: General AI doc
category: ''
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
- projects.agent.providers
retrieval_keywords:
- 排查
- 电脑消耗
- 消耗备份一份到
- 保存在
- 候选列表
- 生成
- 发现候选清理项
- 包含
- 把本台电脑所有的
- 其他任意输入跳过
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---
把本台电脑所有的token消耗备份一份到obsidian文件夹，包含Hermes，codex和claude code，cc-connect等，生成obdidian报告，保存在/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents。。。。Last login: Tue May 12 20:14:21 on ttys000 a1@Mac ~ % >.... if \[ "$TOTAL\_SKILLS" -gt 100 \]; then echo "" echo "当前 skill 总数：$TOTAL\_SKILLS，超过 100。" echo "发现候选清理项：$CANDIDATE\_COUNT 个。" echo "" echo "候选列表：$CANDIDATES" echo "备份目录：$BACKUP\_DIR" echo "" echo "是否把这些候选 skill 移动到备份目录？" echo "输入 YES 执行；其他任意输入跳过：" read CONFIRM if \[ "$CONFIRM" = "YES" \]; then MOVED=0 while read p; do if \[ -d "$p" \]; then parent=$(dirname "$p") base=$(basename "$p") safe\_parent=$(echo "$parent" | sed "s#^$HOME##" | sed 's#\[/ \]#\_#g') dest="$BACKUP\_DIR/${safe\_parent}\_${base}" mv "$p" "$dest" 2>/dev/null && MOVED=$((MOVED+1)) || true fi done < "$CANDIDATES" echo "" >> "$REPORT" echo "## 12. 已移动 Skill" >> "$REPORT" echo "" >> "$REPORT" echo "已移动数量：$MOVED" >> "$REPORT" echo "备份目录：$BACKUP\_DIR" >> "$REPORT" echo "✅ 已移动 $MOVED 个 skill 到备份目录：$BACKUP\_DIR" else echo "已跳过移动。只生成报告。" fi else echo "当前 skill 总数：$TOTAL\_SKILLS，未超过 100，不自动清理。" fi echo "===== 8) 生成快速检查命令 =====" section "13. 后续建议命令" cat >> "$REPORT" <<'EOT' ### 查看当前 AI 进程

```
bash
ps aux | egrep -i 'claude|cc-connect|openclaw|codex|node|python|mcp|agent' | egrep -v 'egrep'
heredoc> 
heredoc>
```

---

Last login: Tue May 12 20:21:44 on ttys001 a1@Mac ~ % >.... cat >> "$REPORT" <<EOT ## 十四、Obsidian 双链 - \[\[AI Token 消耗备份索引\]\] - \[\[Claude Code\]\] - \[\[Codex\]\] - \[\[Hermes\]\] - \[\[cc-connect\]\] - \[\[OpenClaw\]\] - \[\[MCP\]\] - \[\[Token统计\]\] - \[\[AI运维\]\] ## 十五、下一步建议 1. 当前 skills 如果仍是 96 个，数量已经合格，不要为了数量继续删。 2. 优先检查超大的 skill： - \\ `~/.claude/skills/seo\` - \\ `~/.claude/skills/claude-office-skills\` - \\ `~/.claude/skills/nuwa-skill\` 3. 如果这些 skill 只是资料库，建议迁移到 Obsidian，不要长期放在 skills 目录。 4. cc-connect 日志要重点看是否存在循环调用、重复转发、反复重连。 5. Codex / Claude / Hermes 的配置要重点看： - 自动 watch - background loop - recursive - max\_tokens 过大 - 多模型 fallback 反复重试 - MCP 工具自动检索过宽 - Tavily / Serper 查询被循环触发 EOT echo "" echo "✅ 备份完成" echo "Obsidian 报告：$REPORT" echo "Obsidian 索引：$INDEX" echo "压缩包：$ARCHIVE" echo "" echo "正在打开 Obsidian 备份目录..." open "$RUN\_DIR" EOF chmod +x ~/Desktop/backup-ai-token-to-obsidian.sh ~/Desktop/backup-ai-token-to-obsidian.sh ===== AI Token 消耗备份到 Obsidian ===== 备份目录：/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI运维/Token消耗备份/20260512\_202340 报告文件：/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI运维/Token消耗备份/20260512\_202340/AI\_Token\_Consumption\_Backup\_20260512\_202340.md ===== 1) 当前 AI 相关进程 ===== ===== 2) 备份关键配置文件 ===== ===== 3) 备份 cc-connect / Claude-to-IM 日志 ===== ===== 4) 查找 token / usage / cost / log 文件 =====

---

成功了，这次已经完成备份。你的结果显示：

```bash
✅ 快速备份完成
报告：/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI运维/Token消耗备份/20260512_202625/AI_Token_Consumption_Backup_FAST_20260512_202625.md
目录：/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI运维/Token消耗备份/20260512_202625
```

前面的这个报错：

```bash
zsh: parse error near \`)'
```

不用管，是因为你把脚本运行中的提示文字：

```bash
===== 4) 查找 token / usage / cost / log 文件 =====
```

单独粘到终端执行了。后面真正的快速脚本已经跑完。

现在建议你再执行这 3 个检查命令，确认高消耗进程已经清干净：

```bash
ps aux | egrep -i "glob.glob|Missing frontmatter|frontmatter" | egrep -v egrep
```
```bash
ps aux | egrep -i "claude|cc-connect|codex|openclaw|hermes|mcp|tavily|serper|python|node" | egrep -v egrep
```
```bash
open "/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI运维/Token消耗备份/20260512_202625"
```

从目前已知结果看，最关键的结论是：

1. 那个长期 100% CPU 的 Markdown frontmatter 扫描进程已经被你杀掉了。
2. Token 消耗备份报告已经保存进 Obsidian。
3. skill 数量之前是 96 个，已经低于 100，不需要继续为了数量删除。
4. 后续重点不是删 skill，而是检查报告里的 `cc-connect` 高消耗记录、 `tools` 数量异常、 `output_tokens` 异常、以及 `allow_from is not set` 。

---

分析一下，看占token的因素，怎么优化，帮我制定方案

---

我先按“证据 → 原因 → 优化方案 → 可直接执行动作”的结构来分析。你这份报告里已经有足够线索：最大问题不是 skill 数量，而是 cc-connect 的长会话、多工具调用、飞书消息排队、MCP 常驻和旧任务递归扫描。

---

你这份配置里， **allow\_from 主配置已经加上了** ，但还有几个明显问题会继续导致 token 高消耗。重点不是“飞书谁能访问”了，而是 **工作目录、bypassPermissions、fallback、超长 timeout、旧备份配置、session 复用** 。

## 一、当前配置里已经做对的地方

你现在主配置里两个项目都已经限制了用户：

```toml
allow_from = ["ou_35dfc186e9f6018f2f6fab53b1486cdf"]
```

`default` 项目和 `codex` 项目都有这个限制，说明现在不是所有人都能触发了。之前日志里一直提示 `allow_from is not set` ，很可能是旧配置或旧进程启动时留下的日志，不一定代表当前配置仍然没生效。

## 二、现在最影响 token 的 5 个配置问题

### 1\. work\_dir = "/Users/a1" 太大

两个项目都是：

```toml
work_dir = "/Users/a1"
```

这会让 Claude Code / Codex 默认站在整个用户目录下工作。它可能扫描 Desktop、Documents、Obsidian、Downloads、`.claude` 、`.codex` 、`.cc-connect` ，甚至各种缓存。这个是大 token 的核心原因之一。

建议改成专门工作区，例如：

```toml
work_dir = "/Users/a1/ai-workspaces/cc-connect"
```

Codex 可以单独：

```toml
work_dir = "/Users/a1/ai-workspaces/codex"
```

这样能大幅减少误扫全家桶。

---

### 2\. mode = "bypassPermissions" 风险高

两个项目都是：

```toml
mode = "bypassPermissions"
```

这个模式会让 agent 更容易直接执行命令、读文件、改文件。方便，但也容易出现大范围搜索、递归扫描、批量读取。

如果 cc-connect 主要是远程飞书控制，建议不要长期默认 bypass。更安全的方案是：

```toml
mode = "default"
```

或者至少只给 Claude Code 项目保留，Codex 项目改成更保守。

---

### 3\. MiniMax fallback 可能导致重复消耗

`default` 项目里：

```toml
[[projects.agent.providers]]
name = "minimax-m27"
fallback = true
```

如果主模型失败、超时、格式不兼容，就可能触发 fallback。fallback 本身不是错，但在长任务里，可能出现一次请求先跑 Qwen，再重试 MiniMax，导致额外消耗。

建议：先把 fallback 关掉，排查稳定性：

```toml
# fallback = true
```

或者直接删掉这一行。

---

### 4\. API\_TIMEOUT\_MS = "3000000" 太长

MiniMax 和 OpenRouter 里都有：

```toml
API_TIMEOUT_MS = "3000000"
```

这是 3000 秒，约 50 分钟。任务卡住时会拖很久，飞书消息继续排队，旧 session 继续增长。

建议改成：

```toml
API_TIMEOUT_MS = "180000"
```

也就是 3 分钟。最多：

```toml
API_TIMEOUT_MS = "300000"
```

也就是 5 分钟。

你之前日志里有 41 分钟、18 分钟的大任务，所以 timeout 太长会放大问题。

---

### 5\. 旧备份配置里还有很多 allow\_from = "\*"

你的 `grep` 结果显示很多备份配置还有：

```toml
allow_from = "*"
```

例如：

```
config.toml.backup.20260512_184318
config.toml.bak-kimi-20260508-191826
config.toml.bad
config.toml.bad2
```

这些备份文件一般不会被 cc-connect 主程序读取，但如果你以后手动恢复了旧配置，就会把开放权限带回来。

建议把旧备份移到归档目录，避免误恢复。

---

## 三、我建议你的最终优化方案

### 方案 A：保守优化，不影响正常使用

适合你现在先稳定运行。

改 4 点：

```
1. work_dir 从 /Users/a1 改成专用工作区
2. timeout 改成 180000 或 300000
3. 关闭 fallback
4. 归档旧 bad / bak 配置
```

不动模型、不动 key、不动飞书 app。

---

### 方案 B：强控 token 版本

适合你想明显降低消耗。

额外再做：

```
1. Codex 项目暂时停用飞书入口
2. 只保留 Claude Code default 一个项目
3. Codex 需要时再本地打开
4. cc-connect 只作为轻任务入口
```

因为你现在 cc-connect 同时启动：

```
project=default agent=claudecode
project=codex agent=codex
```

双项目意味着两个 bot、两个入口、两套 session，排查复杂度更高。

---

## 四、可以直接执行的安全优化代码

这段会做：

- 备份当前配置；
- 创建专用工作区；
- 把 `/Users/a1` 改成专用目录；
- 把超长 timeout 改短；
- 注释掉 fallback；
- 把旧 bad/bak 配置移动到 archive；
- 重启 cc-connect。
```bash
cat > ~/Desktop/optimize-cc-connect-token.sh <<'EOF'
#!/bin/zsh
set -e

CFG="$HOME/.cc-connect/config.toml"
TS="$(date +%Y%m%d_%H%M%S)"
BACKUP="$HOME/.cc-connect/config.toml.backup.token_opt_$TS"
ARCHIVE="$HOME/.cc-connect/old-config-archive-$TS"

echo "===== 1) 备份当前 cc-connect 配置 ====="
cp "$CFG" "$BACKUP"
echo "已备份：$BACKUP"

echo "===== 2) 创建专用工作区 ====="
mkdir -p "$HOME/ai-workspaces/cc-connect-default"
mkdir -p "$HOME/ai-workspaces/cc-connect-codex"

echo "===== 3) 优化 work_dir / timeout / fallback ====="

python3 <<PY
from pathlib import Path

cfg = Path("$CFG")
text = cfg.read_text()

# 第一个项目 default
text = text.replace('work_dir = "/Users/a1"', 'work_dir = "/Users/a1/ai-workspaces/cc-connect-default"', 1)

# 第二个项目 codex
text = text.replace('work_dir = "/Users/a1"', 'work_dir = "/Users/a1/ai-workspaces/cc-connect-codex"', 1)

# 缩短超长 timeout
text = text.replace('API_TIMEOUT_MS       = "3000000"', 'API_TIMEOUT_MS       = "300000"')
text = text.replace('API_TIMEOUT_MS       = "300000"', 'API_TIMEOUT_MS       = "300000"')

# 关闭 fallback
text = text.replace('fallback = true', '# fallback = true  # disabled for token control')

cfg.write_text(text)
PY

echo "===== 4) 归档旧 bad / bak 配置，避免误恢复 ====="
mkdir -p "$ARCHIVE"

find "$HOME/.cc-connect" -maxdepth 1 -type f \( \
  -name "config.toml.bad*" -o \
  -name "config.toml.bak*" -o \
  -name "config.toml.backup.2026*" \
\) -print -exec mv {} "$ARCHIVE/" \; 2>/dev/null || true

echo "旧配置归档目录：$ARCHIVE"

echo "===== 5) 检查优化后的关键项 ====="
grep -nE 'name = |allow_from|work_dir|mode|fallback|API_TIMEOUT_MS' "$CFG" || true

echo "===== 6) 重启 cc-connect ====="
pkill -f "cc-connect" 2>/dev/null || true
sleep 2

nohup cc-connect > "$HOME/.cc-connect/logs/cc-connect.out.log" 2> "$HOME/.cc-connect/logs/cc-connect.err.log" &

sleep 3

echo "===== 7) 查看进程 ====="
ps aux | egrep -i "cc-connect" | egrep -v egrep || true

echo ""
echo "✅ 优化完成"
echo "当前配置：$CFG"
echo "配置备份：$BACKUP"
echo "旧配置归档：$ARCHIVE"
EOF

chmod +x ~/Desktop/optimize-cc-connect-token.sh
~/Desktop/optimize-cc-connect-token.sh
```

## 五、优化后的使用规则

以后飞书里这样用，会省很多 token：

### 小任务

```
直接问
```

### 中等任务

```
/new
先分析，不要执行。只告诉我要读哪些文件、可能调用哪些工具、预计风险。
```

### 大任务

```
/new
分阶段执行。每阶段最多读取 20 个文件，最多调用 10 次工具。超过后暂停总结，等我确认再继续。
```

### 卡住或超过 3 分钟

```
/stop
/new
```

## 六、最重要的判断

你现在已经不是“谁都能触发”的问题了。  
你现在的主要问题是：

```
/Users/a1 作为工作目录太大
bypassPermissions 太开放
timeout 太长
fallback 可能重复跑
cc-connect 长 session + 飞书排队
大 skill 和 MCP 增加工具调用噪音
```

优先改这几个，比继续删 skill 更有效。