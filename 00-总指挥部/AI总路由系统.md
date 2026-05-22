---
title: AI总路由系统
aliases:
  - AI总路由
  - AI Routing System
  - 知识库总路由
  - AI任务分发系统
tags:
  - #AI路由
  - #知识库治理
  - #入口文档
type: moc
status: active
created: 2026-05-17
updated: 2026-05-21
summary_cn: 本系统统一管理知识库路由、模型路由和项目专项路由。AI收到问题时，应先判断问题类型，再进入对应工作类型MOC、项目MOC、模型执行器，而不是全库乱搜。路由总原则包括：先判断任务类型、再判断业务领域、再判断是否需要工具执行、再判断使用哪个模型/执行器、再进入对应MOC和主文稿。
summary_en: "The unified routing system for knowledge retrieval, model selection, and project-specific workflows. AI agents classify questions first, then route to appropriate MOCs, project MOCs, or model executors."
related:
  - "[[01-全库工作总览MOC]]"
  - "[[02-AI读取入口MOC]]"
  - "[[AI知识库路由系统]]"
  - [[AI知识库路由系统]]
  - [[AI模型路由系统]]
  - [[鱼缸项目路由]]
routing_target:
  - AI工作流
  - 知识库治理
retrieval_keywords:
  - AI总路由
  - 知识库路由
  - 模型路由
  - 项目路由
  - 任务分发
  - MOC导航
  - 问题分类
  - AI工作流
  - 知识库治理
  - 入口文档
  - Claude Code
  - 检索优先级
decision_value: 作为AI知识库检索的第一入口，定义所有问题的分流规则，避免全库乱搜和token浪费。
quality_level: A
source: user
---

# AI总路由系统

## 中文总结
本系统统一管理知识库路由、模型路由和项目专项路由。AI收到问题时，应先判断问题类型，再进入对应工作类型MOC、项目MOC、模型执行器，而不是全库乱搜。

## English Summary
This note defines the unified routing system for knowledge retrieval, model selection, and project-specific workflows. AI agents should first classify the question type, then route to the appropriate MOC, project MOC, or model executor.

## 一句话结论
所有问题先走总路由，再分流到知识库、模型和专项项目。

---

## 路由总原则

1. **先判断任务类型** — 是知识库查询、模型执行、还是项目专项。
2. **再判断业务领域** — 属于外贸、投流、财务、鱼缸还是其他。
3. **再判断是否需要工具执行** — 读取还是写入。
4. **再判断使用哪个模型/执行器** — Claude Code、OpenClaw、Codex还是其他。
5. **再进入对应MOC和主文稿** — 从MOC导航，不从碎片开始。
6. **不默认全库搜索** — 先走路由，找不到再有限度扫描。
7. **不默认使用最强模型** — 按任务选模型，性价比优先。
8. **不默认写入Vault** — 写入必须有充分理由。
9. **重要写入必须有锁** — 高风险操作需主控确认。
10. **高风险资料只读** — 原始财务/客户/鱼缸记录不改正文。

---

## 检索执行层

- [[AI检索执行协议]]：规定 AI 检索知识库时的标准流程，包括问题分类、项目路由、工作类型MOC、目录MOC、metadata过滤、关键词检索、related/relations图谱扩展、Top K重排序和最终读取。
- [[AI检索路由配置]]：规定不同问题类型、项目类型、模型工具、执行器、检索模式和安全边界的配置表。

AI后续回答任何需要检索知识库的问题时，必须先进入本层，不允许直接全库乱搜。

---

## 三套路由入口

### 1. 知识库路由
**链接**：[[AI知识库路由系统]] | [[01-全库工作总览MOC]] | [[02-AI读取入口MOC]]

**用途**：决定问题进入哪个MOC/目录/文稿，避免全库乱搜。

### 2. 模型路由
**链接**：[[AI模型路由系统]] | [[14-AI工具自动化MOC]]

**用途**：决定任务用哪个模型、哪个工具、哪台机器执行。

### 3. 项目专项路由
**链接**：[[鱼缸项目路由]] | [[15-财务账单分析MOC]] | [[10-食品机械作战MOC]] | [[07-客户开发成交MOC]]

**用途**：决定专项项目如何调用资料、SOP、日志、模板。

---

## 问题类型快速路由表

| 问题类型 | 路由到 |
|---|---|
| 食品机械 | [[10-食品机械作战MOC]] |
| 投流广告 | [[05-广告投流增长MOC]] |
| 内容素材 | [[06-内容素材创意MOC]] |
| 客户开发 | [[07-客户开发成交MOC]] |
| 客户沟通 | [[08-客户沟通复盘MOC]] |
| 工厂探访 | [[09-工厂探访评估MOC]] |
| 选品产品 | [[11-选品产品研究MOC]] |
| 竞品案例 | [[12-行业竞品案例MOC]] |
| 国内业务 | [[13-国内业务代运营MOC]] |
| AI工具 | [[14-AI工具自动化MOC]] |
| 财务账单 | [[15-财务账单分析MOC]] |
| 学习蒸馏 | [[16-学习成长蒸馏MOC]] |
| 资料归档 | [[17-资料下载归档MOC]] |
| 成交案例 | [[18-成交案例战报MOC]] |
| 鱼缸项目 | [[鱼缸项目路由]] |
| 知识库治理 | [[AI知识库路由系统]] |

---

## 模型与执行器快速路由表

| 任务 | 模型/工具 | 机器 | 写入 |
|---|---|---|---|
| 规划/拆任务/验收 | Codex / ChatGPT | iMac主控 | 否 |
| 大批量文件写入 | Claude Code | iMac主控 | 是，需锁 |
| 网页采集/外部资料 | OpenClaw | iMac/Mac mini | 否，先入中转 |
| 只读扫描/报告检查 | OpenClaw / Mac mini Worker | Mac mini | 否 |
| 高价值写入/主库治理 | Claude Code | iMac主控 | 是，需验收 |
| 分区低风险写入 | Claude Code | Mac mini Worker | 是，限分区 |
| 简单总结/轻量改写 | Qwen3.6-plus | 任意 | 可写模板 |
| 复杂推理/高风险决策 | GPT-5.5 / Claude高级 | iMac | 谨慎 |
| 快速草稿/低风险批处理 | MiniMax / GLM | 任意 | 可写草稿 |
| 代码排障/配置检查 | Claude Code + Qwen Coder | iMac | 是，配置类 |
| 最终人工确认 | 用户 | — | — |

---

## 路由字段标准

每篇文稿可包含以下YAML字段：

```yaml
routing_target:
  - "[[对应MOC]]"
  - "[[项目路由]]"

model_route:
  - "claude-code"
  - "openclaw"
  - "codex"
  - "chatgpt"

project_route:
  - "fish_tank"
  - "finance"
  - "food_machine"
  - "client_development"
  - "ads"
  - "knowledge_governance"
```

**注意**：内部链接必须用引号包住。

---

## 18个工作类型MOC

| 目录 | MOC名称 | 优先级 |
|---|---|---|
| 00 | [[00-目录总览MOC]] | S |
| 01 | [[03-外贸市场情报MOC]] | S |
| 02 | [[04-跨境社媒获客MOC]] | S |
| 03 | [[05-广告投流增长MOC]] | S |
| 04 | [[06-内容素材创意MOC]] | S |
| 05 | [[07-客户开发成交MOC]] | S |
| 06 | [[08-客户沟通复盘MOC]] | A |
| 07 | [[09-工厂探访评估MOC]] | A |
| 08 | [[08-客户沟通复盘MOC]] | A |
| 09 | [[08-客户沟通复盘MOC]] | A |
| 10 | [[10-食品机械作战MOC]] | S |
| 11 | [[11-选品产品研究MOC]] | A |
| 12 | [[12-行业竞品案例MOC]] | A |
| 13 | [[13-国内业务代运营MOC]] | B |
| 14 | [[05-广告投流增长MOC]] | A |
| 15 | [[14-AI工具自动化MOC]] | S |
| 16 | [[14-AI工具自动化MOC]] | A |
| 17 | [[15-财务账单分析MOC]] | S |
| 18 | [[16-学习成长蒸馏MOC]] | A |
| 19 | [[16-学习成长蒸馏MOC]] | B |
| 20 | [[17-资料下载归档MOC]] | B |
| 21 | [[01-全库工作总览MOC]] | S |
| 22 | [[14-AI工具自动化MOC]] | B |
| 23 | [[14-AI工具自动化MOC]] | B |
| 24 | [[14-AI工具自动化MOC]] | B |
| 25 | [[18-成交案例战报MOC]] | S |
| 26 | [[01-全库工作总览MOC]] | A |
| 99 | [[14-AI工具自动化MOC]] | C |

---
创建时间：2026-05-17