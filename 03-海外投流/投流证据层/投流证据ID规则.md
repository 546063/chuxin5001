---
title: "投流证据ID规则"
aliases:
  - "证据ID规则"
  - "Evidence ID Rules"
tags:
  - evidence-layer
  - id-rules
  - 投流证据层
type: "ID规则"
module: "投流证据层"
routing_target:
  - evidence_layer_entry
  - evidence_id_rules
  - paid_ads_router
quality_level: "S"
summary_cn: "投流证据ID规则，定义所有证据层实体的ID格式和反向关联方法。"
summary_en: "Evidence ID rules defining ID formats and reverse-lookup methods for all evidence layer entities."
related:
  - "[[投流证据层总入口]]"
  - "[[投流证据层字段规范]]"
  - "[[投流证据层录入SOP]]"
retrieval_keywords:
  - "case_id格式"
  - "lead_id格式"
  - "creative_id格式"
  - "证据ID怎么分配"
  - "证据编号规则"
decision_value: "证据层基础规范，确保每个实体有唯一ID且可反向关联。"
created: "2026-05-22"
updated: "2026-05-22"
---

# 投流证据ID规则

> **适用范围**：所有证据层实体的ID分配和管理。
> **核心原则**：唯一、可追溯、可反向关联。

---

## 一、ID 格式

| ID 类型 | 格式 | 示例 | 用途 |
|---------|------|------|------|
| case_id | CASE-YYYYMMDD-001 | CASE-20260522-001 | 每个真实投放案例 |
| lead_id | LEAD-YYYYMMDD-001 | LEAD-20260522-001 | 每条客户线索 |
| creative_id | CREATIVE-YYYYMMDD-001 | CREATIVE-20260522-001 | 每个广告素材 |
| data_id | DATA-YYYYMMDD-001 | DATA-20260522-001 | 每组广告数据记录 |
| competitor_id | COMP-YYYYMMDD-001 | COMP-20260522-001 | 每个竞品素材 |
| screenshot_id | SHOT-YYYYMMDD-001 | SHOT-20260522-001 | 每张截图（通用） |
| customer_id | Customer-A | Customer-A, Customer-B | 每个客户（脱敏代号） |
| conversion_id | CONV-YYYYMMDD-001 | CONV-20260522-001 | 每次客户转化 |
| review_id | REVIEW-YYYYMMDD-001 | REVIEW-20260522-001 | 每次投放复盘 |

---

## 二、编号规则

### 日期部分

- 使用 ID 分配当天的日期，不是文件创建日期或投放开始日期
- 格式：YYYYMMDD（如 20260522）

### 序号部分

- 每日从 001 开始递增
- 同一类型的 ID 在同一日内不重复
- 不同类型 ID 序号独立（CASE-001 和 LEAD-001 可以同时存在）

### 序号分配表（内部管理）

> 建议在单独文件中维护当前序号，避免冲突。

```
# 当前ID计数器（自动更新）
last_case_date: 2026-05-22
last_case_seq: 0
last_lead_date: 2026-05-22
last_lead_seq: 0
last_creative_date: 2026-05-22
last_creative_seq: 0
last_data_date: 2026-05-22
last_data_seq: 0
last_comp_date: 2026-05-22
last_comp_seq: 0
last_shot_date: 2026-05-22
last_shot_seq: 0
```

---

## 三、ID 分配规则

| 规则 | 说明 |
|------|------|
| 1. 每个真实案例必须有 case_id | 案例库中每条记录的唯一标识 |
| 2. 每条客户线索必须有 lead_id | 询盘跟进记录库中每条线索的唯一标识 |
| 3. 每个素材必须有 creative_id | 广告素材截图索引中每个素材的唯一标识 |
| 4. 每组广告数据必须有 data_id | 真实数据记录表中每组数据的唯一标识 |
| 5. 每个竞品素材必须有 competitor_id | 竞品截图索引中每个竞品素材的唯一标识 |
| 6. 每张截图必须有 screenshot_id | 通用截图编号，用于辅助索引 |
| 7. ID 不要重复 | 同类型 ID 全局唯一 |
| 8. ID 要能反向关联到文件路径 | 通过 ID 可找到对应文件和文档位置 |

---

## 四、反向关联规则

每个 ID 必须能通过以下方式反向找到对应实体：

### case_id 反向查找

```
CASE-YYYYMMDD-001
→ 03-海外投流/投流证据层/投流真实案例库.md → 案例索引表
→ 对应案例的详细模板部分
```

### lead_id 反向查找

```
LEAD-YYYYMMDD-001
→ 03-海外投流/投流证据层/询盘跟进记录库.md → 询盘记录索引表
→ customer_id → 客户转化记录库
```

### creative_id 反向查找

```
CREATIVE-YYYYMMDD-001
→ 03-海外投流/投流证据层/广告素材截图索引.md → 截图索引表
→ 20-原始资料与下载暂存/投流素材截图/{文件名}.png
```

### data_id 反向查找

```
DATA-YYYYMMDD-001
→ 03-海外投流/投流证据层/投流真实数据记录表.md → 数据索引表
→ 03-海外投流/投流证据层/投流真实数据记录表.csv → 对应行
```

### competitor_id 反向查找

```
COMP-YYYYMMDD-001
→ 03-海外投流/投流证据层/竞品广告素材截图索引.md → 竞品索引表
→ 20-原始资料与下载暂存/投流素材截图/competitor_{文件名}.png
```

### customer_id 反向查找

```
Customer-A
→ 独立存储的客户映射表（密码保护）
→ 客户转化记录库.md → 对应转化记录
```

---

## 五、ID 关联关系

```
case_id (CASE-001)
├── data_id[] (DATA-001, DATA-002...)  → 多组数据
├── creative_id[] (CREATIVE-001...)     → 多个素材
├── lead_id[] (LEAD-001...)             → 多个线索
│   └── customer_id (Customer-A)        → 对应客户
│       └── conversion_id (CONV-001)    → 转化记录
├── competitor_id[] (COMP-001...)       → 竞品参考（可选）
└── review_id (REVIEW-001)              → 复盘记录
```

---

## 六、ID 命名与文件名的关系

| ID 类型 | 对应文件名模式 | 示例 |
|---------|---------------|------|
| creative_id | `*_creative_YYYYMMDD_*.png` | `facebook_sa_foodmachine_creative_20260522_001.png` |
| competitor_id | `*_competitor_YYYYMMDD_*.png` | `facebook_sa_foodmachine_competitor_20260522_001.png` |
| data_id | `*_metrics_YYYYMMDD.csv` | `facebook_saudi_foodmachine_metrics_20260522.csv` |
| screenshot_id | `*_dashboard_YYYYMMDD_*.png` | `facebook_sa_foodmachine_dashboard_20260522_001.png` |

> 文件名中的编号（001, 002...）与 ID 中的序号保持一致，便于反向关联。
