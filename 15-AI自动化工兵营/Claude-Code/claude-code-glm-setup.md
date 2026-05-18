---
title: "\"Claude Code GLM 配置排错\""
aliases: "[]"
tags: "[AI工作流, ClaudeCode, 工具配置, 故障排查]"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "工具技能"
status: "active"
quality_level: "B"
summary_cn: "Claude Code第三方模型配置排错指南，重点说明GLM和MiniMax的配置方法。关键发现Claude Code使用Anthropic格式而非OpenAI格式，提供正确的API端点和模型配置。"
summary_en: "Document regarding claude-code-glm-setup. Reference for business decisions."
one_sentence_summary: "# claude code glm setup  --- # Claude Code Glm Setup  # Clau..."
decision_value: "Code and automation template reference"
review_note: "Code template"
category: "AI工作流"
platform: "[Claude Code, Hermes]"
industry: []
scenario: "[内容生成, 知识库维护, 自动化]"
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - Claude Code
  - - GLM配置
  - - MiniMax配置
  - - API端点
  - - 排错
  - - Anthropic格式
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# claude code glm setup

---
# Claude Code Glm Setup

# Claude Code 第三方模型配置排错（GLM + MiniMax）

## ⚠️ 2026-04-23 关键新发现：`cc` alias 与 `bash -l -c` 冲突

**症状**：在脚本中用 `bash -l -c 'cc -p "OK"'` 执行，`cc` 变成 `/usr/bin/cc`（C 编译器同名冲突）。

**根因**：`bash -l -c` 是**非交互 login shell**，不展开 aliases。`.zshrc` 里的 `alias cc="claude ..."` 只在交互 shell 中生效。

**症状表现**：
```
$ bash -l -c 'type cc'
cc is /usr/bin/cc     ← 冲突！

$ bash -l -c 'cc -p "OK"'
clang: error: no input files     ← 系统 C 编译器被调用
```

**正确做法**：
1. 创建 wrapper 脚本 `/Users/mac/.local/bin/cc`（跳过 alias 解析）：
```bash
#!/bin/bash
MINIMAX_KEY="sk-cp-..."    完整 key（避免 shell 变量展开丢失）
exec /Users/mac/.npm-global/bin/claude \
  --settings "{\"env\":{\"ANTHROPIC_AUTH_TOKEN\":\"$MINIMAX_KEY\",\"ANTHROPIC_BASE_URL\":\"https://api.minimaxi.com/anthropic\",\"ANTHROPIC_MODEL\":\"MiniMax-M2.7\"}}" \
  --dangerously-skip-permissions --remote-control "$@"
```

2. `.zshrc` alias 改为指向 wrapper：
```bash
alias cc="/Users/mac/.local/bin/cc"
```

3. 验证：
```bash
/Users/mac/.local/bin/cc -p "OK"    ✅ OK
```

**教训**：环境变量在非交互 shell 中传递有多种失效途径（alias 不展开、变量被截断、被覆盖），用 `--settings` 注入配置最可靠。


# Claude Code GLM 模型配置排错

## 核心发现（2026-04-20 实测）

Claude Code 使用 Anthropic 格式（`POST /v1/messages`），不是 OpenAI 格式。

| GLM 端点 | 格式 | Claude Code 兼容 |
|---------|------|----------------|
| `https://open.bigmodel.cn/api/coding/paas/v4` | OpenAI `/v1/chat/completions` | ❌ 404 |
| `https://open.bigmodel.cn/api/anthropic` | Anthropic `/v1/messages` | ✅ 可用 |
| `https://api.z.ai/api/anthropic/v1/messages` | Anthropic | ✅ 可用（glm-cli 用这个） |

## MiniMax M2.7 配置（2026-04-23 实测）

### MiniMax API 端点

| 用户地区 | ANTHROPIC_BASE_URL |
|---------|-------------------|
| 中国区 | `https://api.minimaxi.com/anthropic` |
| 国际区 | `https://api.minimax.io/anthropic` |

### 正确模型名（curl 实测）

- ✅ `MiniMax-M2.7` / `MiniMax-M2.5` / `MiniMax-M2.5-highspeed`
- ❌ `MiniMax-M1` — 套餐不支持
- ❌ `--model MiniMax-M2.7` 参数在 CLI 中有时不生效（需通过 `--settings` 注入）

### `--settings` 注入法（最可靠）

```bash
/Users/mac/.npm-global/bin/claude -p "OK" \
  --settings '{
    "env": {
      "ANTHROPIC_AUTH_TOKEN": "<MINIMAX_KEY>",
      "ANTHROPIC_BASE_URL": "https://api.minimaxi.com/anthropic",
      "ANTHROPIC_MODEL": "MiniMax-M2.7",
      "ANTHROPIC_SMALL_FAST_MODEL": "MiniMax-M2.5-highspeed"
    }
  }'
```

### curl 验证命令

```bash
curl -s -X POST "https://api.minimaxi.com/anthropic/v1/messages" \
  -H "Authorization: Bearer <MINIMAX_KEY>" \
  -H "Content-Type: application/json" \
  -H "anthropic-version: 2023-06-01" \
  -d '{"model":"MiniMax-M2.7","messages":[{"role":"user","content":"OK"}],"max_tokens":5}'
```

## 正确配置（settings.json）

```json
{
  "model": "glm-4.7",
  "env": {
    "ANTHROPIC_BASE_URL": "https://open.bigmodel.cn/api/anthropic",
    "ANTHROPIC_AUTH_TOKEN": "<your-key>",
    "ANTHROPIC_MODEL": "glm-4.7",
    "ANTHROPIC_SMALL_FAST_MODEL": "glm-4.7",
    "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-4.7",
    "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-4.7",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-4.7"
  }
}
```

**注意（2026-04-22 更新）：** `GLM-5.1` 已可用，`glm-4.7` 仍可用作备选。

## 验证命令

```bash
curl -s --max-time 10 \
  -X POST 'https://open.bigmodel.cn/api/anthropic/v1/messages' \
  -H 'Authorization: Bearer <KEY>' \
  -H 'Content-Type: application/json' \
  -H 'anthropic-version: 2023-06-01' \
  -d '{"model":"glm-4.7","max_tokens":10,"messages":[{"role":"user","content":"Say OK"}]}'
```

返回 `content[0].text` 有内容即表示可用。

## 诊断步骤

1. **先验证 API 端点** — curl 直接测 `/v1/messages`，不用 Claude Code 绕路
2. **检查 base URL** — 必须是 `/api/anthropic` 而不是 `/api/coding/paas/v4`
3. **检查模型名** — 用 `glm-4.7` 而不是 `GLM-5.1` 或 `GLM-5`
4. **看 Claude Code tmux session** — `tmux capture-pane -t <session> -p`

## Claude Code Telegram MCP（已知问题）

**MCP 插件 bug（v0.0.6）**：消息被消费但不触发对话，而是触发 `/mcp list` 界面。

**推荐方案：用 cc-connect 替代 MCP 插件**

cc-connect 是独立 daemon，不依赖 Claude Code MCP transport，更可靠：

```bash
cc-connect daemon install --work-dir /Users/mac/.cc-connect
cc-connect daemon status
# 日志: ~/.cc-connect/logs/cc-connect.log
```

cc-connect 配置（`~/.cc-connect/config.toml`）：
```toml
[[01-记忆与配置/配置/TOOLS|projects]]
name = "claude-code-telegram"
[projects.agent]
type = "claudecode"
[projects.agent.options]
work_dir = "/Users/mac/projects"
mode = "bypassPermissions"
[[01-记忆与配置/配置/TOOLS|projects.platforms]]
type = "telegram"
[projects.platforms.options]
token = "<bot_token>"
allow_from = "5412787764"
```

cc-connect 与 MCP 插件可以共存（各用独立 Bot Token），但建议只用 cc-connect。

**MCP 插件信息（备用）：**
- Bot Token: `@taone888claude_bot` (8226642261:AAEaFfrQBVjH-L6EPTcMllclNI-ZutrqEyQ)
- Proxy: `http://127.0.0.1:7897`（Clash Verge）
- `.env` 路径: `~/.claude/channels/telegram/.env`
- MCP Connected 状态不等于实际可用 — 必须发 Telegram 消息实测

## 重要：Token 完全丢失的诊断（2026-04-23 新发现）

所有 token 在 `settings.json` 中可能显示为"EMPTY"（`len=0`），而不仅仅是截断占位符。两种严重程度：

| 程度 | 症状 | 诊断 |
|------|------|------|
| Token 截断 | 显示如 `sk-cp-...7Phk` | `grep API_KEY ~/.claude/settings.json` |
| Token 为空 | Token 长度 = 0（完全丢失） | `python3 -c "import json; print(len(json.load(open('~/.claude/settings.json'))['profiles']['minimax_m27']['env'].get('API_KEY','')))"` |

**症状（两种情况相同）**：
- 所有模型测试返回 401 认证失败
- 即使切换到其他模型仍然 401
- curl 直接测试 API 端点返回 401

**发现（2026-04-23）**：`python3 ~/.hermes/scripts/claude_code_model_rotation.py smart` 在非高峰期只检查时段，不测试 API 健康状态，即使当前模型返回 404 也不会触发切换。

**GLM CLI 独立配置**：
当 `settings.json` 中所有 token 都丢失时，检查 GLM CLI 的独立配置：
```bash
glm config --show
cat ~/.config/glm-claude/config.json
```
GLM CLI 有独立的有效 token（与 settings.json 分离）。

## Token 显示截断 vs 实际存储（2026-04-23 重要澄清）

`settings.json` 中的 API key 值在终端显示时会被 macOS 自动脱敏（如 `sk-cp-...ECZ0`），但**文件本身存储是正确的**。

验证方法：
```bash
# 看文件原始内容（不用 json.load）
grep AUTH /Users/mac/.claude/settings.json | head -3
# 或用 xxd 查看原始字节
xxd /Users/mac/.claude/settings.json | grep -A2 "AUTH"
```

json.load/dump 循环不会破坏 key 值，macOS 终端对密钥的显示脱敏是**展示层**行为，不是数据损坏。

## 相关文件

- `~/.claude/settings.json` — 主配置（所有 profile 的 token 可能全为空）
- `~/.config/glm-claude/config.json` — GLM CLI 独立配置（可能包含有效 token）
- `~/.claude/channels/telegram/.env` — Telegram Bot Token + 代理
- `~/.npm-global/lib/node_modules/glm-claude/src/config/constants.js` — glm-cli 参考配置

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]