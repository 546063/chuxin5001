---
title: '"投流知识库建设任务书"'
aliases: '[]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: merged_knowledge_node
status: active
quality_level: B
summary_cn: '"投流知识库建设任务书，AI工作流标准化操作指南，用于整理Obsidian投流知识库，包含平台特化、目录结构建议、核心笔记要求、验收标准。"'
summary_en: Document regarding ads_knowledge_base_build. Reference for business decisions.
one_sentence_summary: '# 投流知识库建设任务书  你是 Claude Code CLI，负责整理 Obsidian 投流知识库'
decision_value: AI automation documentation
review_note: General AI doc
category: ''
platform: '[Claude Code, Obsidian]'
industry: []
scenario: '[投流研究, 内容生成, 知识库维护, 自动化]'
source_files: ''
merged_from: ''
old_versions: []
archived_reason: []
relations: []
related:
  - [[01-全库工作总览MOC]]
retrieval_keywords:
- 知识整合
- 负责整理
- 账户
- 目标
- 产品文档
- 请直接在目标
- 需要网上资料时
- 广告后台术语页
- 先读取目标目录现状
- 优先使用官方帮助中心
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# 投流知识库建设任务书

你是 Claude Code CLI，负责整理 Obsidian 投流知识库。请直接在目标 Obsidian 文件夹中创建和更新 Markdown 笔记。

## 目标

把 `{{PLATFORM_NAME}}` 相关投流知识整理成一个可长期问答、可执行、可复盘的知识库。用户之后会问：

- 某个广告功能怎么用？
- 一个投流计划/账户/素材/数据表现好不好？
- 遇到成本高、不起量、学习期失败、素材疲劳、转化差等问题怎么排查？
- 新手应该按什么步骤搭建计划？
- 不同目标、预算、行业、本地生活/跨境电商场景应该怎么选择策略？

知识库必须让这些问题能被快速回答：结论明确、步骤清楚、判断标准具体。

## 路径

- Vault 根目录：`{{VAULT_ROOT}}`
- 目标总目录：`{{TARGET_PATH}}`
- 平台目录名：`{{PLATFORM_DIR}}`

如果平台目录不存在，请创建。不要删除或大规模迁移已有文件。已有内容只做必要补充、索引和去重建议。

## 工作原则

1. 先读取目标目录现状，保留现有结构和文件名风格。
2. 优先使用官方帮助中心、产品文档、政策文档、广告后台术语页、权威行业资料；需要网上资料时，请记录来源链接和访问日期。
3. 每篇笔记都要有 frontmatter：`title`、`aliases`、`tags`、`type`、`platform`、`created`、`updated`、`source_status`。
4. 使用 Obsidian wikilink 连接相关笔记。
5. 内容写成“操作手册 + 判断框架 + 排查清单”，不要只写概念解释。
6. 对不确定或平台政策可能变化的内容，标注“需后台/官方文档复核”。
7. 不要生成空泛长文。宁可分多篇，每篇解决一个具体问题。

## 建议目录结构

在 `{{TARGET_PATH}}/{{PLATFORM_DIR}}/` 下建设：

- `00_{{PLATFORM_NAME}}投流MOC.md`
- `01_基础机制/`
- `02_账户与计划搭建/`
- `03_定向与人群/`
- `04_出价预算与学习期/`
- `05_素材与创意/`
- `06_数据指标与归因/`
- `07_优化诊断SOP/`
- `08_行业场景案例/`
- `09_政策风控与限制/`
- `10_FAQ/`
- `99_资料来源与待复核清单.md`

如果现有目录已经能承载部分内容，可以沿用现有目录，但必须建立平台 MOC 和清晰入口。

## 每个平台必须产出的核心笔记

至少创建或补齐以下主题：

1. 平台广告系统底层机制：投放目标、竞价、学习期/探索、转化优化逻辑。
2. 账户结构建议：账户、资产、广告系列/计划、广告组、广告、像素/转化追踪等层级。
3. 新计划搭建 SOP：从目标选择、预算、出价、定向、素材、落地页/门店页、发布检查到上线后观察。
4. 数据指标词典：CTR、CVR、CPA、CPC、CPM、ROAS、频次、消耗速度、转化率、学习期状态等；说明健康范围、异常信号、下一步动作。
5. 优化诊断树：不起量、成本高、点击差、转化差、预算花不出去、学习期失败、素材疲劳、审核拒登。
6. 素材策略：Hook、脚本、卖点、首帧、素材测试、疲劳判断、迭代节奏。
7. 复盘模板：用户给出一个计划数据时，如何判断计划好不好，并输出建议。
8. FAQ：用问答形式沉淀高频问题。
9. 来源清单：列出所有官方/权威来源链接、用途、复核日期。

## 平台差异要求

针对 `{{PLATFORM_NAME}}` 做平台特化，不要写成通用广告课。

如果平台是 Facebook/Meta：
- 覆盖 Meta Ads Manager、Campaign/Ad Set/Ad、Pixel、Conversions API、事件、归因、Advantage+、受众、版位、学习期、广告审核、商务管理平台、目录/商品广告。
- 对“跨境电商/独立站/本地服务线索”分别给出策略差异。

如果平台是 抖音巨量本地推：
- 覆盖巨量本地推/巨量引擎的本地生活投放场景、门店/团购/线索/到店转化、计划搭建、地域半径、人群、短视频/直播/POI/团购券、预算出价、数据诊断、审核与资质。
- 对“餐饮/到店服务/本地生活团购/同城获客”分别给出策略差异。

## 输出格式

每篇 Markdown 用以下结构：

```markdown
---
title: ""
aliases: []
tags: []
type: "guide"
platform: "{{PLATFORM_NAME}}"
created: "{{DATE}}"
updated: "{{DATE}}"
source_status: "researched"
---

# 标题

## 适用场景

## 核心结论

## 操作步骤

## 判断标准

## 常见错误

## 排查/优化动作

## 相关笔记

## 资料来源
```

## 验收标准

完成后请在回复中报告：

- 创建/更新了哪些文件
- 每个目录覆盖了哪些问题
- 哪些内容来自官方资料，哪些是经验性整理
- 哪些点还需要用户提供后台截图、计划数据或业务细节才能继续深化