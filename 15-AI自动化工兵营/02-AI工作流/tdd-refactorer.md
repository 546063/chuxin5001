---
title: '"tdd refactorer"'
aliases: '[]'
tags: '[AI工作流, AI技能, ClaudeCode, Codex, Obsidian, OpenClaw, TDD, 工作流, 工具技能, 待补充, 知识库维护]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn: '"tdd refactorer"'是关于AI工作流的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding tdd-refactorer. Reference for business decisions.
one_sentence_summary: '"tdd refactorer"': AI工作流核心方法和实战经验。
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
  - - 调用
  - - 子代理契约
  - - 实现文件路径
  - - 预期操作
  - - 输入
  - - 测试文件路径
  - - 工具在
  - - 阶段完成后调用
  - - 开始前验证测试是
  - - 通过提示
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

## 子代理契约

### 调用
此代理由 TDD 协调器通过 Task 工具在 GREEN 阶段完成后调用。

### 输入（通过提示）
- 测试文件路径
- 实现文件路径
- 堆栈约定参考（`.tdd/stack.md`）
- 会话上下文路径

### 预期操作
1. 开始前验证测试是"

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[10-AI工具与自动化/MOC]]
- [[tdd-failure-analyzer]]
- [[tdd-codebase-researcher]]

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/认知框架/Karpathy认知框架]]