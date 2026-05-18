---
title: "ClaudeCode执行规则"
topic: ""
created: "2026-05-13"
updated: "2026-05-17"
type: "ai-entry"
status: "active"
quality_level: "S"
summary_cn: "1. 当前项目 CLAUDE.md 2. PROJECT_STATE.md 3. TASKS.md 4. LINKS_TO_OBSIDIAN.md 5. Obsidian AI 读取入口 6. ClaudeMem 项目进展索引相关文档"
summary_en: "Document regarding 10-ClaudeCode执行规则. Reference for business decisions."
one_sentence_summary: "# 10-Claude Code 执行规则  Claude Code 是主力执行层"
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
  - [[10-食品机械作战MOC]]
  - [[10-目录总览MOC]]
  - [[09-工厂探访评估MOC]]
  - [[08-客户沟通复盘MOC]]
retrieval_keywords:
  - Codex主控任务拆解
  - Claude Code执行规则
  - AI路由总指挥
  - AI Agent协调
  - Obsidian知识治理
routing_target:
  - "[[00-目录总览MOC]]"
---

# 10-Claude Code 执行规则

Claude Code 是主力执行层。

## 启动规则

不要在 HOME 根目录启动：

cd ~
claude

必须在项目目录启动：

cd ~/ai-workspaces/项目名
claude

## 默认只读取

1. 当前项目 CLAUDE.md
2. PROJECT_STATE.md
3. TASKS.md
4. LINKS_TO_OBSIDIAN.md
5. Obsidian AI 读取入口
6. ClaudeMem 项目进展索引

## 禁止默认扫描

- 整个 HOME
- 整个 Obsidian
- Archive
- raw
- Clippings
- node_modules
- .git
