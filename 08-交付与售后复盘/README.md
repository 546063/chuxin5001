---
title: "08-交付与售后复盘"
topic: "交付与售后复盘"
created: "unknown"
updated: "2026-05-17"
type: "research_note"
status: "active"
quality_level: "A"
summary_cn: "聚焦食品机械成交后的交付与售后全流程，涵盖订单交付、物流、安装培训、售后问题、配件耗材、客户满意度六大复盘模块。帮助团队系统性追踪交付风险、解决售后问题、提升客户体验，为复购转化奠定基础。"
summary_en: "Document regarding README. Provides reference for business decisions."
one_sentence_summary: "# 08-交付与售后复盘  ## 这个目录放什么  - 订单交付复盘 - 物流交付复盘 - 安装培训复盘 - 售后问题复..."
decision_value: "高"
review_note: "高价值参考"
category: "交付与售后复盘"
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related: ""
retrieval_keywords: ""
routing_target:
  - "[[08-客户沟通复盘MOC]]"
---

# 08-交付与售后复盘

## 这个目录放什么

- 订单交付复盘
- 物流交付复盘
- 安装培训复盘
- 售后问题复盘
- 配件与耗材复盘
- 客户满意度复盘

## 不放什么

- 客户开发内容（05-客户开发与成交）
- 工厂沟通内容（07-工厂沟通与探厂复盘）
- 销售过程（09-销售过程复盘）

## 适合什么时候查

- 订单交付遇到问题
- 客户有售后问题
- 需要改进交付流程
- 提升客户满意度

## 与其他目录的关系

- 承接05-客户开发与成交（成交后的交付）
- 与07-工厂沟通与探厂复盘（供应商交付）
- 与09-销售过程复盘（销售结果）

## 未来迁移来源

- 当前 Vault 的 `08-投流策略与复盘` 中交付相关

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "08-交付与售后复盘"
WHERE !contains(file.name, "README")
SORT file.name
```