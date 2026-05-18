---
title: "AI检索执行协议"
aliases:
  - "AI Retrieval Protocol"
  - "AI检索协议"
  - "知识库检索执行协议"
tags:
  - "AI检索"
  - "知识库路由"
  - "Obsidian治理"
  - "RAG"
topic: "AI如何在Obsidian知识库中快速检索正确文稿"
created: "2026-05-17"
updated: "2026-05-17"
type: "standard"
status: "active"
quality_level: "S"
summary_cn: "本文定义AI在Obsidian知识库中检索信息的统一执行协议。它规定AI收到问题后，必须先判断任务类型和项目路由，再进入工作类型MOC、目录MOC和主文稿，最后结合metadata、关键词、related/relations图谱和重排序结果读取Top文稿。该协议适用于食品机械、投流、客户沟通、财务、鱼缸、AI工具等所有知识库检索任务，能减少全库乱搜、泛关键词误召回和token浪费。AI后续遇到需要检索知识库的问题时，应优先调用本文。"
summary_en: "This protocol defines how AI should retrieve information from the Obsidian knowledge base. It routes questions through project type, work-type MOCs, directory MOCs, metadata filters, keyword search, graph links, and reranking before reading the final notes."
one_sentence_summary: "AI检索必须先路由、再过滤、再检索、再重排序，禁止一上来全库乱搜。"
decision_value: "帮助AI在1000+篇Obsidian文稿中快速定位正确文稿，降低误检索、漏检索和token浪费。"
review_note: "这是当前Obsidian知识库检索的核心执行协议，应作为AI读取入口和模型路由的基础规则。"
category: "AI自动化"
platform:
  - "Obsidian"
  - "Claude Code"
  - "OpenClaw"
  - "Codex"
  - "ChatGPT"
industry:
  - "知识库治理"
scenario:
  - "知识库检索"
  - "AI路由"
  - "RAG"
  - "多Agent协同"
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - type: "part_of"
    target: "[[AI总路由系统]]"
    note: "本文是AI总路由系统中的检索执行层。"
  - type: "supports"
    target: "[[AI知识库路由系统]]"
    note: "为知识库路由提供具体检索步骤和验收标准。"
  - type: "supports"
    target: "[[AI模型路由系统]]"
    note: "为模型路由提供何时调用哪个执行器的判断依据。"
related:
  - "[[AI总路由系统]]"
  - "[[AI知识库路由系统]]"
  - "[[AI模型路由系统]]"
  - "[[01-全库工作总览MOC]]"
  - "[[02-AI读取入口MOC]]"
retrieval_keywords:
  - "Obsidian知识库检索协议"
  - "AI路由执行步骤"
  - "RAG混合检索流程"
  - "metadata过滤检索"
  - "related关系图谱检索"
  - "rerank Top K文稿"
  - "Claude Code知识库读取"
  - "OpenClaw只读扫描"
routing_target:
  - "[[AI总路由系统]]"
  - "[[AI知识库路由系统]]"
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "chatgpt"
  - "codex"
  - "claude-code"
  - "openclaw"
project_route:
  - "knowledge_governance"
---

# AI检索执行协议

## 中文总结

本文是当前 Obsidian 知识库的 AI 检索执行协议。它规定 AI 收到问题后，不允许直接全库搜索，而要先判断任务类型、项目类型和工作场景，再进入对应的工作类型 MOC、目录总览 MOC 和主文稿。检索时要结合 `routing_target`、`quality_level`、`category`、`scenario`、`retrieval_keywords`、`related`、`relations` 等字段，先过滤候选，再混合检索，最后重排序，只读取 Top 3–8 篇最相关文稿。该协议适用于食品机械、投流、客户开发、财务、鱼缸、AI工具等所有知识库问答和执行任务。

## English Summary

This protocol defines the retrieval workflow for the Obsidian knowledge base. AI must route a query through task type, project type, MOCs, metadata filters, keyword search, graph links, and reranking before reading the final notes.

## 一句话结论

AI 检索不能全库乱搜，必须先路由、再过滤、再检索、再重排序。

---

## 1. 总原则

### 1.1 禁止默认全库搜索

AI 收到问题后，不能直接扫描全库 1000+ 篇文稿。

必须先判断：

1. 用户问的是什么任务。
2. 属于哪个业务领域。
3. 是否是专项项目。
4. 是否需要工具执行。
5. 是否需要写入 Vault。
6. 是否涉及高风险原始记录。
7. 应该调用哪些 MOC 和主文稿。

### 1.2 检索顺序

标准流程：

```text
用户问题
→ 问题意图判断
→ 项目路由判断
→ 工作类型MOC
→ 目录总览MOC
→ metadata过滤
→ retrieval_keywords关键词检索
→ related/relations图谱扩展
→ Top K重排序
→ 读取Top 3–8篇
→ 回答或执行
```

### 1.3 不同字段的用途

| 字段 | 作用 | 是否用于检索 |
|---|---|---|
| `routing_target` | 决定该文稿属于哪个路由入口 | 第一优先级 |
| `quality_level` | 决定调用优先级 | 第一优先级 |
| `category` | 业务分类 | 第一优先级 |
| `platform` | 平台分类 | 第二优先级 |
| `industry` | 行业分类 | 第二优先级 |
| `scenario` | 使用场景 | 第一优先级 |
| `retrieval_keywords` | 精确关键词召回 | 第一优先级 |
| `related` | 横向关系图谱扩展 | 第二优先级 |
| `relations` | 结构化关系扩展 | 第二优先级 |
| `model_route` | 决定模型/工具 | 执行阶段 |
| `project_route` | 决定专项项目 | 第一优先级 |

---

## 2. 问题意图分类

AI 首先把用户问题归为以下类型之一：

| 问题类型 | 典型问题 | 初始路由 |
|---|---|---|
| 知识查询 | “食品机械怎么做海外获客？” | 知识库路由 |
| 执行任务 | “帮我整理这批文稿” | 模型路由 + 写入规则 |
| 路由优化 | “怎么让AI更快检索？” | AI总路由系统 |
| 项目专项 | “鱼缸水浑怎么办？” | 鱼缸项目路由 |
| 财务分析 | “年度支出怎么分析？” | 财务账单分析MOC |
| 投流问题 | “Facebook线索质量差怎么办？” | 广告投流增长MOC |
| 客户沟通 | “客户嫌贵怎么回？” | 客户沟通复盘MOC |
| 工厂判断 | “探厂应该问什么？” | 工厂探访评估MOC |
| 选品判断 | “这个产品能不能做？” | 选品产品研究MOC |
| AI工具排障 | “Claude Code模型怎么配？” | AI模型路由系统 |

---

## 3. 项目路由判断

如果问题属于专项项目，先进入项目路由。

| 项目 | `project_route` | 路由入口 |
|---|---|---|
| 鱼缸项目 | `fish_tank` | 鱼缸项目路由文件暂时缺失，待补充 |
| 财务项目 | `finance` | [[15-财务账单分析MOC]] |
| 食品机械项目 | `food_machine` | [[10-食品机械作战MOC]] |
| 客户开发项目 | `client_development` | [[07-客户开发成交MOC]] |
| 投流广告项目 | `ads` | [[05-广告投流增长MOC]] |
| 知识库治理 | `knowledge_governance` | [[AI知识库路由系统]] |
| AI工具项目 | `ai_tools` | [[14-AI工具自动化MOC]] |

### 3.1 鱼缸项目特殊规则

鱼缸项目不要直接给结论，必须先判断问题类型：

```text
水质 → 鱼缸水质记录 / 鱼缸换水记录 / 鱼缸异常处理SOP
设备 → 鱼缸设备清单 / 鱼缸设备维护记录
生物 → 鱼缸生物记录 / 鱼病观察记录
维护 → 鱼缸维护SOP / 鱼缸喂食记录
异常 → 鱼缸异常处理SOP / 鱼缸日志
自动化 → 鱼缸AI管家方案 / 鱼缸自动化工作流
```

禁止编造水质数值、鱼种、设备型号。没有记录就说“需要补测/补记录”。

---

## 4. 工作类型 MOC 路由

用户问题必须先进入对应工作类型 MOC。

| 用户问题 | 首选 MOC | 辅助 MOC |
|---|---|---|
| 外贸市场、国家、贸易基础 | [[03-外贸市场情报MOC]] | [[07-客户开发成交MOC]] |
| 跨境社媒获客 | [[04-跨境社媒获客MOC]] | [[06-内容素材创意MOC]] |
| 广告投流、线索广告 | [[05-广告投流增长MOC]] | [[06-内容素材创意MOC]]、[[07-客户开发成交MOC]] |
| 内容素材、短视频、文案 | [[06-内容素材创意MOC]] | [[05-广告投流增长MOC]] |
| 客户开发、线索判断 | [[07-客户开发成交MOC]] | [[08-客户沟通复盘MOC]] |
| 客户沟通、异议处理 | [[08-客户沟通复盘MOC]] | [[18-成交案例战报MOC]] |
| 工厂探访、工厂评估 | [[09-工厂探访评估MOC]] | [[10-食品机械作战MOC]] |
| 食品加工机械 | [[10-食品机械作战MOC]] | [[09-工厂探访评估MOC]]、[[08-客户沟通复盘MOC]] |
| 选品产品研究 | [[11-选品产品研究MOC]] | [[12-行业竞品案例MOC]] |
| 行业竞品案例 | [[12-行业竞品案例MOC]] | [[11-选品产品研究MOC]] |
| 国内业务代运营 | [[13-国内业务代运营MOC]] | [[05-广告投流增长MOC]] |
| AI工具与自动化 | [[14-AI工具自动化MOC]] | [[AI模型路由系统]] |
| 财务账单分析 | [[15-财务账单分析MOC]] | 无 |
| 学习成长蒸馏 | [[16-学习成长蒸馏MOC]] | [[18-成交案例战报MOC]] |
| 资料下载归档 | [[17-资料下载归档MOC]] | 对应目标 MOC |
| 成交案例战报 | [[18-成交案例战报MOC]] | [[07-客户开发成交MOC]] |

---

## 5. Metadata 过滤规则

### 5.1 第一层过滤

优先用以下字段筛选候选：

```yaml
routing_target:
project_route:
quality_level:
category:
scenario:
```

### 5.2 第二层过滤

再用：

```yaml
platform:
industry:
retrieval_keywords:
type:
```

### 5.3 质量等级调用规则

| 等级 | 调用优先级 | 用途 |
|---|---|---|
| S | 最高 | 决策、执行、主节点 |
| A | 高 | 高价值参考 |
| B | 中 | 背景补充 |
| C | 低 | 兜底参考 |
| D | 禁止 | 已迁移，不应在 Vault 中 |

默认读取顺序：

```text
S → A → B → C
```

除非用户明确要求看原始资料，否则不要优先读取 C 级。

---

## 6. 混合检索规则

AI 检索候选文稿时，使用四种方式组合。

### 6.1 metadata_filter

用 Properties 过滤：

```text
routing_target = 目标MOC
project_route = 目标项目
quality_level in [S, A, B]
scenario = 目标场景
```

### 6.2 keyword_search

用 `retrieval_keywords` 和标题检索。

错误方式：

```text
Facebook
AI
食品机械
客户
投流
```

正确方式：

```text
Facebook线索广告表单优化
Facebook无效线索过滤
食品机械WhatsApp询盘回复
切菜机产能选型
客户价格异议处理
Claude Code多Agent并行
鱼缸水质记录
鱼缸异常处理
```

### 6.3 semantic_search

用于用户表达不标准、关键词不明确的情况。

例如：

```text
“客户一直问最低价怎么办？”
→ 语义匹配：价格异议处理、报价前需求确认、客户采购权判断
```

### 6.4 related_graph

用 `related` 和 `relations` 扩展候选。

规则：

1. 从首批候选向外扩展 1 层。
2. 高价值复杂问题可以扩展 2 层。
3. 不做无限图谱扩展。
4. 只扩展 S/A/B 文稿。
5. 不读取已归档或低价值文稿。

---

## 7. 重排序规则

候选文稿必须重排序，不是搜到就读。

### 7.1 加分项

| 条件 | 加分 |
|---|---|
| quality_level = S | +5 |
| quality_level = A | +3 |
| routing_target 命中 | +5 |
| project_route 命中 | +5 |
| scenario 命中 | +4 |
| retrieval_keywords 精确命中 | +4 |
| title 精确命中 | +3 |
| related 与候选互链 | +2 |
| relations 有明确 supports/part_of | +2 |
| 最近更新且非旧版本 | +1 |

### 7.2 减分项

| 条件 | 减分 |
|---|---|
| quality_level = C | -2 |
| 只有泛关键词 | -4 |
| topic 不匹配 | -4 |
| scenario 不匹配 | -3 |
| 只是过程记录 | -5 |
| 旧版本 | -5 |
| 原始记录但问题不需要原始材料 | -3 |

### 7.3 Top K 规则

| 任务复杂度 | 读取数量 |
|---|---|
| 简单问题 | Top 3 |
| 普通业务问题 | Top 5 |
| 复杂分析 | Top 8 |
| 高风险决策 | Top 8 + 用户确认 |
| 大规模治理 | 先读 MOC + 批量扫描 |

不要一次读取 20+ 篇，除非是只读统计任务。

---

## 8. 模型路由联动

检索完成后，再决定谁执行。

| 任务 | 执行器 | 模型 |
|---|---|---|
| 简单问答 | ChatGPT / Claude Code | Qwen3.6-plus |
| 深度判断 | ChatGPT / Codex | GPT-5.5 / 高级模型 |
| 批量写入 Obsidian | Claude Code | Qwen3.6-plus |
| 代码/配置排障 | Claude Code | qwen3-coder-plus / Kimi |
| 网页采集 | OpenClaw | GLM / MiniMax / Qwen |
| 只读扫描 | OpenClaw / Mac mini | 低成本模型 |
| 高风险财务/客户/原始记录 | iMac 主控 | 高级模型 + 人工确认 |
| 鱼缸异常判断 | ChatGPT / Claude Code | Qwen 或高级模型 |

---

## 9. 回答生成规则

AI 回答前必须确认：

1. 已命中正确 MOC。
2. 已读取 Top 3–8 篇。
3. 没有使用 D 级文稿。
4. 没有把关键词当链接。
5. 没有忽略项目路由。
6. 如果资料不足，要说“不足”，不要编造。
7. 鱼缸、财务、客户原始记录不能凭空猜测。
8. 涉及写入 Vault，要说明写入路径和风险等级。

---

## 10. 失败回退规则

如果检索结果不准：

### 10.1 扩大范围

```text
目标MOC → 相邻MOC → 目录MOC → 全库关键词
```

### 10.2 换检索方式

```text
metadata_filter 不够 → keyword_search
keyword_search 不够 → semantic_search
semantic_search 不够 → related_graph
related_graph 不够 → 用户确认
```

### 10.3 换模型/工具

```text
Qwen不够 → GPT-5.5 / 高级模型
OpenClaw采集失败 → Claude Code只读扫描
Claude Code写入冲突 → iMac主控接管
Mac mini冲突 → 停止写入，只读复核
```

---

## 11. 鱼缸项目检索示例

### 用户问题

```text
鱼缸水浑怎么办？
```

### 路由

```text
project_route = fish_tank
routing_target = 鱼缸项目路由文件暂时缺失，待补充
scenario = 水质监控 / 异常处理
```

### 读取顺序

1. 鱼缸项目路由文件暂时缺失，待补充
2. [[鱼缸水质记录]]
3. [[鱼缸换水记录]]
4. [[鱼缸异常处理SOP]]
5. [[鱼缸设备清单]]

### 输出要求

1. 先判断可能原因。
2. 再列今日检查项。
3. 再列不建议操作。
4. 没有水质记录就要求补测。
5. 不编造数据。

---

## 12. 食品机械检索示例

### 用户问题

```text
食品机械怎么做海外 Facebook 获客？
```

### 路由

```text
project_route = food_machine
routing_target:
  - [[10-食品机械作战MOC]]
  - [[05-广告投流增长MOC]]
platform = Facebook
scenario = 海外获客 / 广告投放 / 线索判断
```

### 读取顺序

1. [[10-食品机械作战MOC]]
2. [[食品机械海外获客与内容打法总纲]]
3. [[食品机械市场买家与采购决策总纲]]
4. [[05-广告投流增长MOC]]
5. [[07-客户开发成交MOC]]

---

## 13. 财务检索示例

### 用户问题

```text
2025年我的消费结构有什么问题？
```

### 路由

```text
project_route = finance
routing_target = [[15-财务账单分析MOC]]
scenario = 年度支出分析 / 现金流复盘
```

### 读取顺序

1. [[15-财务账单分析MOC]]
2. 年度分析主文稿
3. 账单清洗规则
4. 人工复核规则
5. 原始记录只读

---

## 14. 最终验收标准

每次检索完成后，检查：

1. 是否命中正确 MOC。
2. 是否读取 S/A 主文稿。
3. 是否只读取 Top 3–8 篇。
4. 是否避免全库乱搜。
5. 是否没有使用 D 级文稿。
6. 是否没有编造不存在的信息。
7. 是否输出了下一步动作。
8. 是否需要写入 Vault。
9. 是否需要用户确认。
10. 是否记录路由失败点。

---

## 15. 后续维护规则

每新增一篇文稿，必须补：

```yaml
routing_target:
quality_level:
summary_cn:
summary_en:
one_sentence_summary:
retrieval_keywords:
related:
relations:
```

每新增一个项目，必须补：

```yaml
project_route:
routing_target:
MOC:
项目路由:
```

每新增一种任务类型，必须更新：

1. [[AI总路由系统]]
2. [[AI知识库路由系统]]
3. [[AI模型路由系统]]
4. 本文：[[AI检索执行协议]]

---

## 16. 禁止事项

1. 禁止默认全库搜索。
2. 禁止只搜一个泛关键词。
3. 禁止 related 写普通词。
4. 禁止使用 D 级文稿。
5. 禁止跳过 MOC。
6. 禁止跳过项目路由。
7. 禁止读取大量低价值文稿。
8. 禁止凭空补鱼缸/财务/客户数据。
9. 禁止在不确定时强行回答。
10. 禁止无锁写入 Obsidian。
