---
title: 模型切换 SOP
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: SOP
status: active
quality_level: A
summary_cn: '> 家里 Mac Mini（a1@172.24.49.53）Claude Code 模型切换的完整 6 步流程。相关文档'
summary_en: Document regarding 模型切换SOP. Reference for business decisions.
one_sentence_summary: '# 模型切换 SOP  > 家里 Mac Mini（a1@172.24.49.53）Claude Code 模型切换的完...'
decision_value: Build AI automation workflows and scripts
review_note: Core AI automation playbook
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
- CC-Connect配置体系
retrieval_keywords:
- 模型名
- 文件
- 如果切换默认模型
- 步流程
- 个要素
- 保持其他模型定义不变
- 不要把所有模型都指向同一个
- 用记忆里的
- 重写该模型变量块
- 关键
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# 模型切换 SOP

> 家里 Mac Mini（a1@172.24.49.53）Claude Code 模型切换的完整 6 步流程。

## 前置信息收集

需要用户提供的 3 个要素：
1. **模型名称**：如 `qwen3.6-plus`
2. **Base URL**：如 `https://coding.dashscope.aliyuncs.com/apps/anthropic`
3. **API Key**：如 `REMOVED_DASHSCOPE_API_KEY=REMOVED

如果用户说"用记忆里的 XXX 模型"，从 [[CC-Connect配置体系]] 查找已有模型的端点和 key。

## Step 1: 更新 models.sh

文件：`~/.config/claude-models/models.sh`

- 重写该模型变量块：`{NAME, MODEL, BASE_URL, AUTH_TOKEN, API_KEY}`
- 保持其他模型定义不变
- 如果切换默认模型，改 `DEFAULT_MODEL_NAME="模型名"`
- **关键**：不要把所有模型都指向同一个 fallback，每个模型要有真实 credentials

## Step 2: 更新 current_model

```bash
echo '模型名(如qwen36plus)' > ~/.config/claude-models/current_model
```

## Step 3: 更新 config.toml

文件：`~/.cc-connect/config.toml`

- default project 的第一个 provider 改为目标模型
- env 块中所有 `ANTHROPIC_*` 变量指向新模型
- 旧 primary provider 移到后面并加 `fallback = true`
- **不要删除** fallback provider，保持备用链

## Step 4: 更新 plist

文件：`~/Library/LaunchAgents/com.cc-connect.service.plist`

- `EnvironmentVariables` 中所有 `ANTHROPIC_*` 变量更新
- 包括 `ANTHROPIC_MODEL`, `ANTHROPIC_BASE_URL`, `ANTHROPIC_AUTH_TOKEN`
- 以及 `_SMALL_FAST_MODEL`, `_DEFAULT_HAIKU_MODEL`, `_DEFAULT_SONNET_MODEL`, `_DEFAULT_OPUS_MODEL`, `CLAUDE_CODE_SUBAGENT_MODEL`

## Step 5: 更新 settings.json + .claude.json

文件：`~/.claude/settings.json` — `env` 块中所有 `ANTHROPIC_*` 变量更新

文件：`~/.claude.json` — `env` 段更新为相同值，`hasCompletedOnboarding` 设为 `true`

## Step 6: 重启 cc-connect + 测试

```bash
launchctl unload ~/Library/LaunchAgents/com.cc-connect.service.plist
sleep 2
launchctl load ~/Library/LaunchAgents/com.cc-connect.service.plist
sleep 2
# 验证进程 env
ps eww $(pgrep -f cc-connect | head -1) | tr " " "\n" | grep ANTHROPIC_
# 实际测试
echo "你是哪个模型？只回复模型名。" | /opt/homebrew/bin/claude --print
```

## 每次切换必须改的 9 个 env 变量

| 变量 | 说明 |
|------|------|
| ANTHROPIC_MODEL | 主模型名称 |
| ANTHROPIC_BASE_URL | 端点地址 |
| ANTHROPIC_AUTH_TOKEN | API Key |
| ANTHROPIC_API_KEY=REMOVED
| ANTHROPIC_SMALL_FAST_MODEL | 快速模型 |
| ANTHROPIC_DEFAULT_HAIKU_MODEL | haiku 替代 |
| ANTHROPIC_DEFAULT_SONNET_MODEL | sonnet 替代 |
| ANTHROPIC_DEFAULT_OPUS_MODEL | opus 替代 |
| CLAUDE_CODE_SUBAGENT_MODEL | 子代理模型 |

## 需要改的 6 个文件

1. `~/.config/claude-models/models.sh` — 模型定义
2. `~/.config/claude-models/current_model` — 当前选中
3. `~/.cc-connect/config.toml` — cc-connect provider 链
4. `~/Library/LaunchAgents/com.cc-connect.service.plist` — 系统服务 env
5. `~/.claude/settings.json` — Claude Code 设置
6. `~/.claude.json` — Claude Code 全局配置

## 已有模型端点参考

| 模型 | Base URL | Key 前缀 |
|------|----------|----------|
| qwen3.6-plus | `https://coding.dashscope.aliyuncs.com/apps/anthropic` | sk-sp- |
| MiniMax-M2.7 | `https://api.minimaxi.com/anthropic` | sk-cp- |
| MiniMax-M2.7-highspeed | `https://api.minimaxi.com/anthropic` | sk-cp- |
| GLM-5.1 | `https://open.bigmodel.cn/api/anthropic` | (无) |
| DeepSeek | `https://api.deepseek.com/anthropic` | (无) |
