---
title: "07-工厂沟通与探厂复盘"
topic: "工厂探访侦察站"
created: "unknown"
updated: "2026-05-17"
type: "research_note"
status: "active"
quality_level: "A"
summary_cn: "工厂探厂与供应商管理知识库目录页，定义探厂全流程的内容范围：探厂计划、问题清单、工厂沟通、设备观察、能力评估、供应链风险、复盘报告。是食品机械采购前验厂的核心参考资料，与客户开发、交付售后、选品研究等目录协同。"
summary_en: "Document regarding README. Provides reference for business decisions."
one_sentence_summary: "# 07-工厂沟通与探厂复盘  ## 这个目录放什么  - 探厂计划 - 探厂问题清单 - 工厂沟通记录 - 设备观察记..."
decision_value: "高"
review_note: "工厂探厂体系核心导航MOC，战略入口，支撑验厂决策"
category: "工厂探访侦察站"
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
  - "[[09-工厂探访评估MOC]]"
---

# 07-工厂沟通与探厂复盘

## 这个目录放什么

- 探厂计划
- 探厂问题清单
- 工厂沟通记录
- 设备观察记录
- 工厂能力评估
- 供应链风险
- 探厂复盘报告

## 不放什么

- 客户开发内容（05-客户开发与成交）
- 交付与售后内容（08-交付与售后复盘）
- 选品内容（11-选品与产品研究）

## 适合什么时候查

- 准备探厂
- 评估工厂能力
- 记录工厂沟通
- 分析供应链风险

## 与其他目录的关系

- 与05-客户开发与成交（工厂类客户）
- 与08-交付与售后复盘（交付环节）
- 与10-食品加工机械作战体系（产品知识）

## 未来迁移来源

- 当前 Vault 的 `19-食品加工机械/17-工厂数据库`（清理后）
- 当前 Vault 的 `19-食品加工机械/03-客户业务模型`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "07-工厂沟通与探厂复盘"
WHERE !contains(file.name, "README")
SORT file.name
```