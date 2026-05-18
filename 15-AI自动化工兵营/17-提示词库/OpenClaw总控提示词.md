---
title: OpenClaw总控提示词
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: prompt
status: active
quality_level: B
summary_cn: OpenClaw Agent 执行任务时的默认知识库调用指令。相关文档
summary_en: Document regarding OpenClaw总控提示词. Reference for business decisions.
one_sentence_summary: OpenClaw总控提示词: ''核心方法和实战经验。
decision_value: AI tool usage and prompt engineering reference
review_note: AI tool reference
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
retrieval_keywords:
  - - 用途
  - - 总控提示词
  - - 索引与导航
  - - 先读取
  - - 遵循模型调用优先级规则
  - - 根据任务类型调用对应的场景模板和业务资料
  - - 执行任何任务前
  - - 模板
  - - 使用总规则
  - - 总控系统
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# OpenClaw总控提示词

## 用途

OpenClaw Agent 执行任务时的默认知识库调用指令。

## 提示词

```text
执行任何任务前，先读取：
- 00-索引与导航/总控系统/AI使用总规则.md
- 11-智囊团与知识蒸馏/模型路由器/model-router.md

根据任务类型调用对应的场景模板和业务资料。
遵循模型调用优先级规则，不超过5个模型。
涉及最新事实时，必须联网搜索。
```

## 相关文件

- [[Claude Code总控提示词]]
- [[11-智囊团与知识蒸馏/模型路由器/model-router]]
