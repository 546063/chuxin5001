---
type: maintenance_log
created: 2026-05-23
status: done
tags:
  - cc-connect
  - claude-mem
  - MCP
  - 技能治理
---

# cc-connect 与 claude-mem 温和重启记录

## 执行动作

1. 重复技能继续收敛：
   - 保留 `/Users/mac/.claude/skills` 作为 Claude Code 主入口。
   - 将 `.agents/skills` 中与 `.claude/skills` 重复的非 nuwa 技能移动到 disabled 目录。
   - 将 `.claude/skills/tracking` 移动到 disabled，保留 `.claude/skills/analytics-tracking`。
   - nuwa 相关全部保留：`nuwa`、`nuwa-force-segmented`、`feishu-nuwa-trigger`。

2. cc-connect 温和重启：
   - 使用 `launchctl kickstart -k gui/501/com.cc-connect.service` 重启。
   - 新进程已启动。
   - 重启后未自动拉起 Tavily / Serper / Lark 子进程。

3. MCP 分层升级：
   - 默认 active MCP 文件现在只保留 `claude-mem`。
   - 完整 MCP 定义保存在 profile 模板：
     - `/Users/mac/.claude/mcp-profiles/home.full.mcp.json`
     - `/Users/mac/.claude/mcp-profiles/claude.full.mcp.json`
   - `claude-mcp-profile` 现在会同时切换 `enabledMcpjsonServers` 和 active `.mcp.json` 文件。

4. claude-mem 修复：
   - `CLAUDE_MEM_MODEL` 从旧的 `claude-sonnet-4-6` 改为 `qwen3.6-plus`。
   - `CLAUDE_MEM_TIER_SIMPLE_MODEL` 改为 `qwen3.6-plus`。
   - 通过 claude-mem 官方工作目录启动方式恢复 worker。

## 验证结果

当前保留进程：

- `cc-connect`
- `claude-mem worker-service`
- `chroma-mcp`
- claude-mem 后台 Claude：`qwen3.6-plus`

当前未发现：

- cc-connect 旧子 Claude
- standalone `claude --dangerously-skip-permissions`
- Tavily MCP 子进程
- Serper MCP 子进程
- Lark MCP 子进程

claude-mem health：

```text
status=ok
version=12.4.8
initialized=true
mcpReady=true
```

## cc-connect 模型结论

cc-connect 不会直接覆盖全局 Claude Code 设置。

但它存在两个模型来源：

- LaunchAgent 环境：Qwen `qwen3.6-plus`
- `.cc-connect/config.toml` 项目 provider：GLM `glm-5.1`

这不一定是故障，但属于“模型来源不单一”。如果后续想让 cc-connect 与 Claude Code 完全同源，应把 `.cc-connect/config.toml` 的项目 provider 也统一到 Qwen。

## 备份与归档

- MCP active 配置备份：
  `/Users/mac/.claude/backups/mcp-active-core-20260523-1503`
- claude-mem 设置备份：
  `/Users/mac/.claude-mem/settings.json.bak.20260523-claude-mem-qwen`
- 技能去重报告：
  `/Users/mac/.claude/reports/2026-05-23-cloudcode-skill-dedupe-execution.md`
