---
title: "\"Claude Code MiniMax 配置\""
aliases: "[]"
tags: "[AI工作流, ClaudeCode, 工具配置, 故障排查]"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "工具技能"
status: "active"
quality_level: "B"
summary_cn: "Claude Code MiniMax API配置的关键发现:CLI内部使用Anthropic协议格式，不认OpenAI-compatible端点。正确端点是api.minimaxi.com/anthropic，不是api.minimax.chat/v1。"
summary_en: "Document regarding claude-code-minimax-endpoint. Reference for business decisions."
one_sentence_summary: "# claude code minimax endpoint  --- # Claude Code Minimax En..."
decision_value: "Code and automation template reference"
review_note: "Code template"
category: "AI工作流"
platform: "[Claude Code]"
industry: []
scenario: "[知识库维护, 自动化]"
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - Claude Code
  - - MiniMax
  - - API端点
  - - Anthropic协议
  - - 配置
  - - 排错
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# claude code minimax endpoint

---
# Claude Code Minimax Endpoint

# Claude Code MiniMax 配置

## 关键发现

Claude Code CLI **内部使用 Anthropic 协议格式**，不认 OpenAI-compatible 端点。

| 端点格式 | 可用性 | 备注 |
|----------|--------|------|
| `api.minimax.chat/v1` (OpenAI) | ❌ | 模型无法识别 |
| `api.minimax.chat/anthropic/v1` | ❌ | 解析错误 |
| `api.minimaxi.com/anthropic` | ✅ | 唯一可用 |

## 正确配置

settings.json 中的正确配置：
```json
{
  "env": {
    "ANTHROPIC_AUTH_TOKEN": "<your-key>",
    "ANTHROPIC_BASE_URL": "https://api.minimaxi.com/anthropic",
    "ANTHROPIC_MODEL": "MiniMax-M2.7-highspeed",
    "ANTHROPIC_SMALL_FAST_MODEL": "MiniMax-M2.5"
  }
}
```

验证命令：
```bash
# 通过 cc 或 claude 执行
/Users/mac/.local/bin/cc -p "2+2=?" --settings '{"env":{"ANTHROPIC_AUTH_TOKEN":"...","ANTHROPIC_BASE_URL":"https://api.minimaxi.com/anthropic","ANTHROPIC_MODEL":"MiniMax-M2.7-highspeed"}}'
```

## 配置文件位置

| 文件 | 用途 |
|------|------|
| `/Users/mac/.local/bin/cc` | cc wrapper |
| `/Users/mac/.local/bin/claude` | claude wrapper |
| `~/.zshrc` | shell 环境变量 |
| `~/.claude/settings.json` | Claude Code 全局设置 |

## 验证三问

1. 端点是否是 `api.minimaxi.com/anthropic`（不是 `api.minimax.chat/v1`）
2. 协议是否是 Anthropic-compatible
3. 模型名是否在 MiniMax 支持列表中（MiniMax-M2.7 / MiniMax-M2.5 / MiniMax-M2.7-highspeed）

## 故障排查顺序

1. `curl -s -o /dev/null -w "%{http_code}" https://api.minimaxi.com/anthropic` → 应返回 401（非 404/502）
2. 用正确端点手动 curl 测试 key 是否有效
3. 检查 Claude Code 版本是否为最新 (`npm update -g @anthropic-ai/claude-code`)
4. 确认 ~/.claude/settings.json 中的 baseURL 不含多余路径（如 `/v1`）

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]