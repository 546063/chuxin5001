---
title: 15-AI工作流与自动化
topic: ''
created: unknown
updated: '2026-05-17'
type: research_note
status: active
quality_level: B
summary_cn: '- Claude Code - OpenClaw - Codex - Feishu 集成 - Obsidian 自动化 - 搜索工具 -
  模型路由 - Agent 工作流 - Prompt 提示词 - AI 技能库 - Token 与成本 - AI 故障排查相关文档'
summary_en: Document regarding README. Reference for business decisions.
one_sentence_summary: '# 15-AI工作流与自动化  ## 这个目录放什么  - Claude Code - OpenClaw - Codex...'
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
  - [[01-全库工作总览MOC]]
retrieval_keywords:
- 目录
- 工具与自动化
- 工具层
- 技能库
- 与成本
- 子目录
- 支撑所有业务系统的
- 个人生活内容
- 这个目录放什么
- 搜索工具
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# 15-AI工作流与自动化

## 这个目录放什么

- Claude Code
- OpenClaw
- Codex
- Feishu 集成
- Obsidian 自动化
- 搜索工具
- 模型路由
- Agent 工作流
- Prompt 提示词
- AI 技能库
- Token 与成本
- AI 故障排查

## 不放什么

- 具体业务内容
- 个人生活内容

## 适合什么时候查

- 使用 AI 工具
- 自动化工作流
- Prompt 提示词
- 模型路由配置

## 与其他目录的关系

- 支撑所有业务系统的 AI 工具层
- 与16-知识库治理（Obsidian 维护）

## 未来迁移来源

- 当前 Vault 的 `10-AI工具与自动化`
- 当前 Vault 的 `11-智囊团与知识蒸馏`
- 当前 Vault 的 `12-AI技能`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "15-AI工作流与自动化"
WHERE !contains(file.name, "README")
SORT file.name
```