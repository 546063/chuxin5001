---
title: "Codex总指挥规则"
topic: ""
created: "2026-05-13"
updated: "2026-05-17"
type: "ai-entry"
status: "active"
quality_level: "S"
summary_cn: "1. 顶层规划 2. 任务拆解 3. 风险判断 4. 给 Claude Code 的执行提示词 5. 给 OpenClaw 的备用提示词 6. 验收标准 7. 结束后写入 ClaudeMem 的摘要要求相关文档"
summary_en: "Document regarding 09-Codex总指挥规则. Reference for business decisions."
one_sentence_summary: "# 09-Codex 总指挥规则  Codex 是总指挥，不是执行苦力"
decision_value: "Which AI agent to use and how to route tasks"
review_note: "AI routing entry, strategic"
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
  - [[08-客户沟通复盘MOC]]
  - [[09-目录总览MOC]]
retrieval_keywords:
  - Codex主控任务拆解
  - Claude Code执行规则
  - AI路由总指挥
  - AI Agent协调
  - Obsidian知识治理
routing_target:
  - "[[00-目录总览MOC]]"
---

# 09-Codex 总指挥规则

Codex 是总指挥，不是执行苦力。

## Codex 负责

1. 顶层规划
2. 任务拆解
3. 风险判断
4. 给 Claude Code 的执行提示词
5. 给 OpenClaw 的备用提示词
6. 验收标准
7. 结束后写入 ClaudeMem 的摘要要求

## Codex 避免

- 大量扫描 Obsidian
- 大量读取文件
- 长时间跑脚本
- 直接在 HOME 目录执行复杂任务
