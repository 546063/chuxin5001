---
title: "\"16-知识库治理\""
topic: "\"知识库治理\""
created: "\"unknown\""
updated: "2026-05-17"
type: "\"research_note\""
status: "\"active\""
quality_level: "\"B\""
summary_cn: "\"- 结构审计 - MOC 管理 - 断链检查 - Dataview 规则 - Graph 治理 - 归档规则 - 重构记录 - 迁移映射\""
summary_en: "\"Knowledge base governance document regarding README.\""
one_sentence_summary: "\"# 16-知识库治理  ## 这个目录放什么  - 结构审计 - MOC 管理 - 断链检查 - Dataview 规则...\""
decision_value: "\"高 - 知识库维护\""
review_note: "\"一般参考文档\""
category: "\"知识库治理\""
platform: "[]"
industry: "[]"
scenario: "[]"
source_files: "[]"
merged_from: "[]"
old_versions: "[]"
archived_reason: "[]"
relations: "[]"
related:
  - [[14-AI工具自动化MOC]]
retrieval_keywords:
  - Obsidian双链治理
  - AI知识库质量评级
  - YAML Properties补全
  - MOC导航优化
  - 知识库分层级维护
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"
---

# 16-知识库治理

## 这个目录放什么

- 结构审计
- MOC 管理
- 断链检查
- Dataview 规则
- Graph 治理
- 归档规则
- 重构记录
- 迁移映射

## 不放什么

- 具体业务内容
- AI 工具内容（15-AI工作流与自动化）

## 适合什么时候查

- 审计知识库结构
- 修复断链
- 管理 MOC
- 制定归档规则

## 与其他目录的关系

- 维护整个知识库的结构
- 与15-AI工作流与自动化（Obsidian 维护）

## 未来迁移来源

- 当前 Vault 的 `00-索引与导航/知识库深度整理报告`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "16-知识库治理"
WHERE !contains(file.name, "README")
SORT file.name
```