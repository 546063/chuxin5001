---
title: '"Hook机制"'
aliases: '[]'
tags: '[AI工作流, AI技能, ClaudeCode, Codex, Obsidian, OpenClaw, 工作流, 工具技能, 待补充, 知识库维护]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn: '> [!warning] 仅索引 > 本知识库只做索引，不展开飞书具体操作。相关文档'
summary_en: Document regarding Hook机制. Reference for business decisions.
one_sentence_summary: '"Hook机制"': AI工作流核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[Claude Code, Codex, OpenClaw]'
industry: []
scenario: '[知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - 使用
  - - 不展开飞书具体操作
  - - 避免信息过载
  - - 机制
  - - 圆桌触发
  - - 控制方式
  - - 建议
  - - 设置输出长度上限
  - - 分段
  - - 命令手动控制
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# Hook机制

> [!warning] 仅索引
> 本知识库只做索引，不展开飞书具体操作。

# Hook机制

> 合并来源：Hook-圆桌触发.md + Hook-强制分段.md


## 强制分段

单次输出过长时自动分段，避免信息过载。

**控制方式**：
- 使用 `/分段` 命令手动控制
- 设置输出长度上限（建议≤200字/段）
- 复杂任务拆解为多轮对话

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[文稿合并工作流]]
- [[00_Workflows_MOC]]