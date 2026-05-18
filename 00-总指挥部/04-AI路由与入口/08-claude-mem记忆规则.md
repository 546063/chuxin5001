---
title: "08-claude-mem记忆规则"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "ai-memory-rule"
status: "active"
quality_level: "S"
summary_cn: "claude-mem 只做项目断点续工，不做全量聊天记录仓库。相关文档"
summary_en: "Document regarding 08-claude-mem记忆规则. Reference for business decisions."
one_sentence_summary: "# 08-claude-mem 记忆规则  ## 定位  claude-mem 只做项目断点续工，不做全量聊天记录仓库"
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
  - [[08-目录总览MOC]]
retrieval_keywords:
  - AI读取入口
  - 知识库总索引
  - Obsidian治理
  - Claude Code规则
routing_target:
  - "[[00-目录总览MOC]]"
---

# 08-claude-mem 记忆规则

## 定位

claude-mem 只做项目断点续工，不做全量聊天记录仓库。

## 只允许保存

1. 项目目标
2. 本次完成
3. 当前卡点
4. 下一步任务
5. 重要文件路径
6. 不要重复做的事情
7. 需要用户确认的事项

## 禁止保存

- 完整聊天
- 完整日志
- 大段工具输出
- 大段网页原文
- 大段 Obsidian 原文
- node_modules
- Archive
- raw
- Clippings

## 每次结束工作写入格式

# ClaudeMem 项目交接摘要

## 项目
-

## 本次完成
-

## 当前卡点
-

## 下一步
-

## 重要文件
-

## 不要重复做
-

## 需要用户确认
-

## Token 限制

- 单次摘要 300-800 字
- 只写状态，不写过程
- 只写路径，不复制全文
