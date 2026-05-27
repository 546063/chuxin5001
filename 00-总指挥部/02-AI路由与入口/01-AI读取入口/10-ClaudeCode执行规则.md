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

## V2 路由优先规则

处理 Obsidian 主库内容任务时，优先进入 V2 路由系统。

入口文件：

`00-总指挥部/AI路由系统/08-ClaudeCode执行图_V2.md`

默认流程：

用户任务 → 任务分类器 → 场景路由 → 知识包索引 → Top K 文稿读取 → 输出/执行 → 验收报告。

V2 启动顺序：

1. 先读 `00-总指挥部/AI路由系统/08-ClaudeCode执行图_V2.md`
2. 再读 `00-总指挥部/AI路由系统/00-任务分类器路由_V2.md`
3. 根据任务类型进入对应场景路由
4. 再读 `00-总指挥部/AI路由系统/07-知识包索引总表_V2.md`
5. 按 Top 3 / Top 5 / Top 8 预算读取正文

旧路由处理方式：

- `00-总指挥部/00-总控台路由/` 仅作为 fallback
- `00-总指挥部/01-业务作战地图/` 仅作为 fallback
- 只有 V2 无法匹配任务时，才允许进入旧路由

默认执行模式：

- 问答类任务：read_only
- 文案/脚本生成：generate_only
- 知识库治理：scan_only / report_only
- 用户明确要求写入后：execute_write

硬性禁止：

- 禁止默认全库扫描。
- 禁止默认全库 grep。
- 禁止扫描 Archive / raw / Clippings 作为默认行为。
- 禁止一次性读取 8 篇以上正文。
- 禁止把 C/D 级文稿作为主依据。
- 禁止新增或改名一级目录。
- 禁止 Mac mini 抢写 iMac 主库。
- 禁止未 dry-run 就批量修改。
- 禁止将人物蒸馏、书籍蒸馏、课程蒸馏默认塞进无关文案任务。

---

## 禁止默认扫描

- 整个 HOME
- 整个 Obsidian
- Archive
- raw
- Clippings
- node_modules
- .git
