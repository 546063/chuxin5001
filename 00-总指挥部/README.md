---
title: "00-索引与导航"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "research_note"
status: "active"
quality_level: "B"
summary_cn: "- 首页 MOC（总入口） - 共享中枢 - 商业系统入口 - 个人系统入口 - AI 路由与入口 - 全局标签与术语 - 全局模板 - 目录结构说明相关文档"
summary_en: "Document regarding README. Reference for business decisions."
one_sentence_summary: "# 00-索引与导航  ## 这个目录放什么  - 首页 MOC（总入口） - 共享中枢 - 商业系统入口 - 个人系统..."
decision_value: "Understand directory purpose and content"
review_note: "README, general reference"
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

# 00-索引与导航

## 这个目录放什么

- 首页 MOC（总入口）
- 共享中枢
- 商业系统入口
- 个人系统入口
- AI 路由与入口
- 全局标签与术语
- 全局模板
- 目录结构说明

## 不放什么

- 具体业务文档
- 客户开发内容
- 投流内容
- 个人生活内容

## 适合什么时候查

- 第一次进入知识库
- 找不到某个内容在哪里
- 需要全局视图时
- 需要了解知识库结构时

## 与其他目录的关系

- 所有一级目录的入口汇总
- 通过 wikilink 连接各系统

## 未来迁移来源

- 当前 Vault 的 `00-索引与导航`
- 当前 Vault 的 `AI MOC.md`
- 当前 Vault 的 `总控系统/`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "~/ai-workspaces/AI-Workspace-Obsidian/00-索引与导航"
WHERE !contains(file.name, "README")
SORT file.name
```