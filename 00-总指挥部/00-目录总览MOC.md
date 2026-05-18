---
title: "00-目录总览MOC"
aliases: ["00-总指挥部目录", "总指挥部导航"]
tags: ["MOC", "知识库", "总入口", "导航"]
topic: "00-总指挥部"
created: "2026-05-17"
updated: "2026-05-17"
type: "moc"
status: "active"
quality_level: "S"
summary_cn: "00-总指挥部是整个知识库的治理中枢，包含AI读取入口、全库工作总览MOC、以及18个工作类型MOC的索引。AI读取入口文件全部为S级，是全库运行的底层规则系统。"
summary_en: "00-Command Center is the governance hub of the knowledge vault, containing AI entry rules, all-work MOC index, and 18 work-type MOC references."
one_sentence_summary: "知识库治理中枢，全库AI路由规则与18个工作域MOC入口索引"
decision_value: "进入任意工作域前先查此处，找到对应MOC入口；AI任务路由判断标准出处"
review_note: "S级目录MOC，全库治理基础，每次任务前必查"
category: "知识库治理"
platform: []
industry: []
scenario: ["进入任意工作域之前先查这里", "AI任务路由判断入口", "新用户理解全库结构", "跨MOC协调任务"]
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations: []

routing_target:
  - "[[00-目录总览MOC]]"
---

## 中文总结

00-总指挥部是整个知识库的治理中枢。包含：
- **全库工作总览MOC**：18个MOC的导航索引，告诉你在哪里找食品机械、哪里找AI工具、哪里找内容策略。
- **AI读取入口**：4个核心入口文件（08-claude-mem、09-Codex、10-ClaudeCode、11-知识质量），全部S级，是全库运行的底层规则系统。
- **MOC目录**：18个工作类型MOC的索引入口，每个MOC管理一个工作域。

## English Summary

00-Command Center is the governance hub of the entire knowledge vault. It contains the all-work MOC navigation index, AI entry rules (4 core files all rated S), and references to all 18 work-type MOCs. Every task should check here first to route to the correct work domain.

## 一句话结论

知识库治理中枢，AI任务路由判断标准出处，18个工作域MOC的导航总入口。

---

## 本目录适用场景

- 进入任意工作域之前先查这里
- AI任务路由判断（该用哪个MOC/工具/提示词）
- 新用户理解整个知识库结构
- 跨MOC协调任务时找边界
- 查询全库治理规则（知识质量、信息进入、噪音处理）

## 本目录不适用场景

- 具体执行任务（应直接去对应工作目录找SOP）
- 客户开发内容（应去05-客户开发与成交）
- 广告投流内容（应去03-海外投流火力站）
- 内容素材创意（应去04-内容素材弹药库）

---

## S级核心文稿

### AI读取入口（4个S级入口文件，全部位于 02-AI路由与入口/00-AI读取入口/）

| 文件 | 一句话用途 |
|------|-----------|
| [[00-总指挥部/02-AI路由与入口/00-AI读取入口/08-claude-mem记忆规则]] | claude-mem 只做项目断点续工，不做全量聊天记录仓库 |
| [[00-总指挥部/02-AI路由与入口/00-AI读取入口/09-Codex总指挥规则]] | Codex 是总指挥，规划、拆解、风控、验收，不做执行苦力 |
| [[00-总指挥部/02-AI路由与入口/00-AI读取入口/10-ClaudeCode执行规则]] | Claude Code 是执行者，按 Codex 规划执行，小步快跑 |
| [[00-总指挥部/02-AI路由与入口/00-AI读取入口/11-知识质量判断标准]] | 判断知识库内容质量等级（S/A/B/C），决定引用优先级 |

### 治理规则文件（3个S级，位于 02-AI路由与入口/）

| 文件 | 一句话用途 |
|------|-----------|
| [[00-总指挥部/02-AI路由与入口/12-信息进入知识库SOP]] | 新信息进入知识库的标准流程和筛选规则 |
| [[00-总指挥部/02-AI路由与入口/13-噪音与垃圾信息处理规则]] | 判断并处理低价值信息的规则 |
| [[00-总指挥部/02-AI路由与入口/14-人的审判规则]] | AI处理不了的问题交给人的审判标准 |

### 其他S级文件

| 文件 | 一句话用途 |
|------|-----------|
| [[00-总指挥部/02-AI路由与入口/15-个人微信与OpenClaw连接说明]] | 个人微信与OpenClaw的连接配置说明 |

---

## A级高价值文稿

| 文件 | 一句话用途 |
|------|-----------|
| [[00-总指挥部/01-共享中枢/Clippings/2026_classification_audit_v2]] | 2026年分类审计报告V2，治理状态核查 |
| [[00-总指挥部/01-共享中枢/Clippings/Obsidian跨境 知识库整理]] | Obsidian跨境知识库整理记录 |
| [[00-总指挥部/01-共享中枢/Clippings/obsidian-local-rest-api-check]] | Obsidian本地REST API检查记录 |

---

## B级参考文稿

（无）

---

## C级整合文稿

（无）

---

## 模板与SOP

（本目录以规则文件为主，不设模板SOP）

---

## 原始记录

（无）

---

## 相关工作类型MOC

全库18个工作类型MOC，通过 [[00-总指挥部/03-MOC/01-全库工作总览MOC]] 可以找到全部入口。以下是18个MOC的快速索引：

| # | MOC名称 | 所在路径 |
|---|---------|---------|
| 01 | [[MOC/01-全库工作总览MOC]] | 00-总指挥部/03-MOC/ |
| 02 | [[MOC/02-AI读取入口MOC]] | 00-总指挥部/03-MOC/ |
| 03 | [[MOC/03-外贸市场情报MOC]] | 00-总指挥部/03-MOC/ |
| 04 | [[MOC/04-跨境社媒获客MOC]] | 00-总指挥部/03-MOC/ |
| 05 | [[MOC/05-广告投流增长MOC]] | 00-总指挥部/03-MOC/ |
| 06 | [[MOC/06-内容素材创意MOC]] | 00-总指挥部/03-MOC/ |
| 07 | [[MOC/07-客户开发成交MOC]] | 00-总指挥部/03-MOC/ |
| 08 | [[MOC/08-客户沟通复盘MOC]] | 00-总指挥部/03-MOC/ |
| 09 | [[MOC/09-工厂探访评估MOC]] | 00-总指挥部/03-MOC/ |
| 10 | [[MOC/10-食品机械作战MOC]] | 00-总指挥部/03-MOC/ |
| 11 | [[MOC/11-选品产品研究MOC]] | 00-总指挥部/03-MOC/ |
| 12 | [[MOC/12-行业竞品案例MOC]] | 00-总指挥部/03-MOC/ |
| 13 | [[MOC/13-国内业务代运营MOC]] | 00-总指挥部/03-MOC/ |
| 14 | [[MOC/14-AI工具自动化MOC]] | 00-总指挥部/03-MOC/ |
| 15 | [[MOC/15-财务账单分析MOC]] | 00-总指挥部/03-MOC/ |
| 16 | [[MOC/16-学习成长蒸馏MOC]] | 00-总指挥部/03-MOC/ |
| 17 | [[MOC/17-资料下载归档MOC]] | 00-总指挥部/03-MOC/ |
| 18 | [[MOC/18-成交案例战报MOC]] | 00-总指挥部/03-MOC/ |

---

## AI调用规则

- 任务路由：先查本MOC，找到对应工作域MOC入口
- AI角色判断：Codex规划 → Claude Code执行
- 知识质量：引用前先查 11-知识质量判断标准
- 记忆调用：claude-mem只做断点续工，不做全量仓库

---

## 维护规则

- 每月检查AI读取入口文件是否需要更新
- 新增MOC时同步更新 01-全库工作总览MOC
- S级文件修改需经过治理审计