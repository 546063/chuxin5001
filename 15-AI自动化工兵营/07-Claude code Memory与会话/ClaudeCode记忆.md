---
title: ClaudeCode记忆
topic: ''
created: '2026-04-23'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: ClaudeCode记忆是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding ClaudeCode记忆. Reference for business decisions.
one_sentence_summary: ClaudeCode记忆: AI工具核心方法和实战经验。
decision_value: AI tool usage and prompt engineering reference
review_note: AI tool reference
category: AI工具
platform: 多平台
industry: AI
scenario: 会话管理
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: ''
related:
retrieval_keywords:
  - - 对跨境贸易的价值
  - - 目录
  - - 适合场景
  - - 主设置文件
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 说明文件
  - - 需要后续搜索的内容
  - - 来源文件
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






---

# Claude Code 记忆文件

## 一句话总结
# Claude Code 记忆文件

## 核心结论
- 待补充

## 适用场景
- 适合平台：
- 适合行业：
- 适合场景：

## 可复用方法
- 方法 1：待补充
- 方法 2：待补充

## 对我的业务有什么价值
- 对跨境贸易的价值：待补充
- 对 Facebook 投流的价值：待补充
- 对巨量本地推的价值：待补充
- 对客户开发的价值：待补充
- 对知识库沉淀的价值：待补充

## 相关案例
- [[相关案例]]（待补充）

## 后续可提问的问题
- 这个内容适合哪个行业复用？
- 这个策略适合什么平台？
- 这个方法的核心是什么？
- 有什么数据需要补充？
- 有什么风险需要注意？

## 待补充
- 需要补充的数据
- 需要补充的案例
- 需要后续搜索的内容
#待补充
## 来源文件
- `~/.claude/settings.json` - 主设置文件
- `~/.claude/CLAUDE.md` - GLM Code说明文件（非真正配置）
- `~/.claude/skills/` - 29个skills目录

---

## settings.json 关键配置

```json
{
  "model": "claude-sonnet-4-6",
  "api_key": "sk-ant-***",
  "base_url": "https://api.anthropic.com",
  "temperature": 1.0,
  "max_tokens": 8192
}
```

### 模型配置
- **主模型:** claude-sonnet-4-6
- **API Provider:** Anthropic 官方

### 其他配置文件
- `settings.glm-flash.json` - GLM Flash配置
- `settings.glm.json` - GLM配置
- `settings.minimax.json` - MiniMax配置
- `settings.local.json` - 本地覆盖配置

---

## Skills 列表 (29个)

### Lark系列 (符号链接到 ~/.agents/skills/)
- lark-approval, lark-attendance, lark-base, lark-calendar
- lark-contact, lark-doc, lark-drive, lark-event, lark-im
- lark-mail, lark-minutes, lark-openapi-explorer, lark-shared
- lark-sheets, lark-skill-maker, lark-slides, lark-task
- lark-vc, lark-whiteboard, lark-whiteboard-cli, lark-wiki
- lark-workflow-meeting-summary, lark-workflow-standup-report

### 独立Skills
- claude-to-im, composio-cli, skills

### 子目录
- `.clawdhub/` - ClawHub相关

---

## 通道配置 (channels/)
- `telegram/` - Telegram Bot配置
- `discord/` - Discord Bot配置

---

## 使用统计

- `model_usage.log` - 模型使用日志
- `history.jsonl` - 对话历史

---

## 相关链接
- [[10-AI工具与自动化/工作流/Hermes技能体系 MOC|ClaudeCode技能库]]
- [[15-AI自动化工兵营/07-Claude code Memory与会话/ClaudeCode配置概要]]
- [[11-智囊团与知识蒸馏/MOC]]

## 关联笔记
- [[01-记忆与配置/MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
