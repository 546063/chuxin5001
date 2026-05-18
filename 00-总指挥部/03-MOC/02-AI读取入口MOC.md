---
title: "02-AI读取入口MOC"
aliases: ["AI读取入口", "AI读取结构", "知识库AI入口", "Claude Code读取"]
tags: ["MOC", "AI读取", "知识库", "技术治理"]
topic: "AI读取入口"
created: "2026-05-17"
updated: "2026-05-17"
type: "moc"
status: "active"
quality_level: "S"
summary_cn: "给Claude Code/OpenClaw/Codex快速读取知识库的主入口。说明目录结构、质量评级、检索优先级、任务路由规则。AI进入主库的第一站，告诉AI先读什么、从哪里找、如何判断优先级。"
summary_en: "Primary entry for Claude Code/OpenClaw/Codex to quickly read the knowledge base. Explains directory structure, quality ratings, retrieval priorities, and task routing rules."
one_sentence_summary: "02-AI读取入口MOC": "知识库治理"核心方法和实战经验。
decision_value: "告诉AI进入知识库后先读什么、按什么顺序找、如何判断优先级"
review_note: "S级主MOC，AI读取结构核心，所有AI agent的入口规范"
category: "知识库治理"
platform: []
industry: []
scenario: ["Claude Code启动时读取结构", "OpenClaw执行任务前读取", "Codex路由判断", "AI任务分发"]
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - - - type: "part_of"
  - - target: "[[00-总指挥部/03-MOC/01-全库工作总览MOC]]"
  - - note: "全库总览的治理层组成部分"
related:
  - "[[AI检索执行协议]]"
  - "[[AI检索路由配置]]"
  - "[[AI总路由系统]]"
  - "[[AI知识库路由系统]]"
  - "[[AI模型路由系统]]"
retrieval_keywords:
  - - - "AI读取入口"
  - - - "Claude Code读取"
  - - - "知识库AI入口"
  - - - "检索优先级"
  - - - "任务路由"
  - - - "目录结构说明"
  - - --
  - --
routing_target:
  - "[[00-目录总览MOC]]"
---

# 02-AI读取入口MOC

## 中文总结
给Claude Code/OpenClaw/Codex快速读取知识库的主入口。AI进入主库时，先读本MOC了解：目录结构（全库分为10大工作域）、质量评级（S/A/B/C/D五级）、检索优先级（MOC > 终局文稿 > 过程稿 > 碎片）、任务路由规则（判断任务类型 → 进入对应MOC → 找到核心文稿）。AI不应从碎片文稿开始，而应从MOC导航开始。

## English Summary
Primary entry point for AI agents (Claude Code, OpenClaw, Codex) to quickly read the knowledge base. Explains directory structure, quality ratings, retrieval priorities, and task routing rules. AI should start from MOC navigation, not from fragments.

## 一句话结论
AI进入知识库后，先读这里再看具体文稿。

## 适用场景
- Claude Code启动时读取结构
- OpenClaw执行任务前读取
- Codex路由判断
- AI任务分发

## 不适用场景
- 不包含具体业务内容（MOC导航到业务MOC）
- 不包含碎片文稿（碎片由MOC管理）
- 不包含AI执行日志

## 知识库目录结构

```
AI-Workspace-Obsidian/
├── 00-总指挥部/          ← AI第一优先级读取
│   ├── MOC/             ← MOC入口索引（所有MOC在此）
│   │   ├── 01-全库工作总览MOC.md
│   │   ├── 02-AI读取入口MOC.md
│   │   └── ...
│   ├── AI-Execution-System/  ← AI执行日志
│   ├── Decision-System/      ← 决策系统
│   └── INDEX/
│
├── 10-食品加工机械作战体系/  ← 业务层（AI第二优先级）
│   ├── MOC.md
│   ├── 食品机械作战体系总入口.md  ← 8大终局文稿
│   ├── 食品机械设备知识总纲.md
│   ├── 食品机械产品参数与选型标准总纲.md
│   ├── 食品机械市场买家与采购决策总纲.md
│   ├── 食品机械海外获客与内容打法总纲.md
│   ├── 食品机械客户沟通成交总纲.md
│   ├── 食品机械工厂合作与供应链评估总纲.md
│   ├── 食品机械认证物流与贸易交付总纲.md
│   └── [工作目录...]
│
├── 20-内容投流体系/
├── 30-客户开发体系/
├── 40-工厂供应链/
├── 50-认证物流体系/
├── 90-Decision-System/
└── 91-AI-Execution-System/
```

## 质量评级体系

| 级别 | 定义 | AI检索优先级 |
|-----|------|------------|
| **S级** | 终局文稿，主决策入口，S级MOC | 最高优先 |
| **A级** | 核心文稿，主业务内容，成熟度高 | 次高优先 |
| **B级** | 标准文稿，有框架但需补充 | 中等优先 |
| **C级** | 过程稿，有内容但不完整 | 较低优先 |
| **D级** | 碎片、待整理、废弃 | 最后考虑 |

**AI读取规则：**
- 先读S级MOC，找到对应工作域
- 再读A级终局文稿，获取核心内容
- B/C级作为补充，不作为主入口
- D级不主动读取，除非用户明确指定

## 检索优先级

1. **MOC索引** — 任务路由，判断该去哪个MOC
2. **终局文稿**（S/A级）— 核心决策内容
3. **标准文稿**（B级）— 参考框架
4. **过程稿**（C级）— 补充参考
5. **碎片文稿**（D级）— 按需读取

## 任务路由规则

### 判断任务类型
```
任务输入 → 判断类型 → 进入对应MOC → 找到核心文稿
```

| 任务类型 | 判断关键词 | 进入MOC |
|---------|----------|---------|
| 食品机械外贸业务 | 食品机械、客户、报价、采购 | [[10-食品机械作战MOC]] |
| AI工具配置 | Claude Code、自动化、模型路由 | [[14-AI工具自动化MOC]] |
| 内容投流 | Facebook、TikTok、LinkedIn、广告 | [[08-海外投流MOC]] |
| LinkedIn开发 | LinkedIn、开发信、档案 | [[09-LinkedIn开发MOC]] |
| 获客话术 | 话术、异议、催单 | [[11-获客话术MOC]] |
| 工厂合作 | 工厂、供应链、质量判断 | [[12-工厂合作MOC]] |
| 认证物流 | 认证、物流、出口 | [[13-认证物流MOC]] |

### 路由优先级
1. 优先从[[01-全库工作总览MOC]]确认工作域
2. 再进入具体MOC获取结构
3. 最后读取核心文稿执行任务

## AI 新会话接入知识库时，必须先读：

1. [[AI总路由系统]]
2. [[AI检索执行协议]]
3. [[AI检索路由配置]]
4. [[AI知识库路由系统]]
5. [[AI模型路由系统]]

## AI读取流程

```
1. 读取 [[01-全库工作总览MOC]]
   ↓ 确认工作域
2. 进入对应MOC（如 [[10-食品机械作战MOC]]）
   ↓ 确认核心文稿
3. 读取终局文稿（如 食品机械作战体系总入口.md）
   ↓ 获取核心决策
4. 执行任务
```

## 维护规则

- 新文稿进入需更新对应MOC
- 质量评级调整需更新本MOC
- AI路由规则变更需更新本MOC
- 目录结构变更需更新本MOC