---
type: 工具链总控台
created: 2026-05-23
status: active
tags:
  - AI工具链
  - ClaudeCode
  - MCP
  - 技能治理
---

# Claude Code 工具链总控台

## 当前原则

- 保留全权限工作流：`bypassPermissions` + `Bash(*)` / `Read(*)` / `Write(*)` / `Edit(*)`。
- 优化目标不是降权，而是让系统更干净、更可控、更少重复。
- 常驻服务只保留有明确价值的；搜索、飞书、模型桥接类 MCP 按任务需要启动。

## MCP 启动分层

默认 profile 已切到 `core`，只启用 `claude-mem`。

切换命令：

```bash
/Users/mac/.claude/scripts/claude-mcp-profile show
/Users/mac/.claude/scripts/claude-mcp-profile core
/Users/mac/.claude/scripts/claude-mcp-profile research
/Users/mac/.claude/scripts/claude-mcp-profile lark
/Users/mac/.claude/scripts/claude-mcp-profile marketing
/Users/mac/.claude/scripts/claude-mcp-profile full
```

| Profile | 启用 MCP | 使用场景 |
|---|---|---|
| core | claude-mem | 默认编码、整理、本地项目维护 |
| research | claude-mem, firecrawl, tavily, serper | 网页研究、竞品、SERP、资料抓取 |
| lark | claude-mem, lark | 飞书消息、文档、日程、任务、多维表 |
| marketing | claude-mem, tavily, serper, minimax, minimax-text | 投流、内容、素材、模型桥接 |
| full | 全部 | 临时全量作战，不建议长期默认 |

## 技能治理

本次已经生成重复技能报告：

- `/Users/mac/.claude/reports/2026-05-23-claude-skill-dedup-report.md`

处理方式：

- 不删除技能。
- 只把 `/Users/mac/.codex/skills` 下与其他技能根完全重复的副本移动到：
  `/Users/mac/.codex/skills.disabled-20260523-claude-toolchain`
- `.claude/skills` 保持不动，避免影响 Claude Code 主工作流。

## 插件来源

已确认：

- `claude-mem@thedotmack` 是核心长期插件，保留。
- `claude-plugins-official` 是官方市场，保留。
- `karpathy-skills` 和 `git-wiki` 指向稳定项目目录，保留。
- `nuwa-skill`、`darwin-skill` 的 marketplace 来源指向 `/tmp`，当前标记为风险来源；未删除，后续如需继续使用，应迁移到稳定目录后再更新 marketplace 配置。

## 后台服务

保留：

- `openclaw` gateway / node
- `cc-connect`
- `claude-mem` worker
- `chroma-mcp`

已清理：

- 一个 standalone `claude --dangerously-skip-permissions` 会话及其子 MCP。
- 一个陈旧的 shell/python 进程，该进程命令参数里带有敏感输入痕迹。

暂不处理：

- cc-connect 下已有的长会话仍可能带 Tavily / Serper / Lark 子进程。为了不断开消息桥，本次未重启。后续可以安排一次“cc-connect 温和重启”，让它使用新的 core profile。

## 备份位置

本次优化前配置备份：

`/Users/mac/.claude/backups/toolchain-optimization-20260523-144622`

## 后续动作

1. 观察 1-2 天，确认默认 Claude 会话不再重复拉起 Tavily / Serper / Lark。
2. 如果 cc-connect 稳定窗口允许，重启 cc-connect，让桥接会话也继承新的 MCP 分层。
3. 再决定是否迁移 `/tmp` 来源插件到稳定目录。
4. 对 `.claude/skills` 内部的同名不同内容技能做人工合并，尤其是 `analytics-tracking` / `tracking`。
