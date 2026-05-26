---
title: Facebook B2B广告账户结构SOP
aliases:
  - B2B广告账户搭建
  - Facebook B2B 账户结构
  - B2B Facebook Ads Structure
  - B2B广告怎么搭账户
tags:
  - Facebook广告
  - B2B广告
  - 账户结构
  - SOP
type: SOP
module: 海外投流
platform:
  - Facebook
  - Instagram
routing_target:
  - facebook_b2b_ads
  - b2b_lead_generation
  - facebook_ads
quality_level: A
summary_cn: B2B 食品机械 Facebook 广告账户结构 SOP，覆盖冷启动测试、多国家拆分、漏斗分层、预算分配、命名规范和扩量策略。可直接按步骤搭建。
summary_en: B2B food processing machinery Facebook Ads account structure SOP covering cold start testing, multi-country breakdown, funnel layering, budget allocation, naming conventions, and scaling strategy.
related:
  - "[[16-知识库治理/YAML红色源码修复备份/2026-05-23_092803/03-海外投流/Facebook投流知识库/10-Facebook投流路由入口]]"
  - "[[02-Facebook广告账户与配置SOP]]"
  - "[[05-Facebook投放结构与预算模型]]"
  - "[[22-食品加工机械Facebook投流案例库]]"
retrieval_keywords:
  - Facebook B2B广告怎么搭账户
  - B2B广告账户结构
  - 食品机械Facebook广告怎么投
  - Facebook广告Campaign怎么拆
  - B2B投流冷启动
decision_value: 账户结构决定测试效率——正确的结构让你在2周内找到赢家，错误的结构让你烧钱还找不到原因。
created: 2026-05-22
updated: 2026-05-22
---

# Facebook B2B广告账户结构SOP

## 一句话总结
B2B 食品机械 Facebook 广告账户搭建：冷启动用 3 Campaign 结构（拉新测试 + 再营销 + 品牌），多国家按 Ad Set 拆分，预算分配 60/30/10。

---

## 核心原则

1. **保持简单**：B2B 不需要像电商那样拆 10 个 Campaign，3-5 个足够
2. **一个变量一次**：每次只测试一个变量（受众 或 素材 或 国家）
3. **命名即文档**：好的命名让你 3 秒看懂任何广告在跑什么
4. **预算集中**：B2B 线索量少，预算分散 = 学习期永远过不了

---

## 标准账户结构（3 Campaign）

```
Ad Account
├── Campaign 1: TOF_冷受众测试（ABO, 60%预算）
│   ├── Ad Set 1: Broad_目标国家1
│   ├── Ad Set 2: Broad_目标国家2
│   ├── Ad Set 3: Interest_行业兴趣
│   └── 每个 Ad Set 放 2-3 个 Ad（不同素材）
│
├── Campaign 2: Retargeting_再营销（CBO, 30%预算）
│   ├── Ad Set 1: 网站访客_30d
│   ├── Ad Set 2: 视频观看_50%_90d
│   └── Ad Set 3: 表单未提交_30d
│
└── Campaign 3: Brand_品牌认知（CBO, 10%预算）
    └── Ad Set 1: Broad_所有目标国家
```

### Campaign 1: TOF 冷受众测试（核心）

| 字段 | 设置 |
|------|------|
| 目标 | Leads（留资广告）或 Engagement（Messenger/WhatsApp） |
| 预算类型 | ABO（每个 Ad Set 独立预算） |
| 预算分配 | 每个 Ad Set 等预算（$10-20/天） |
| 版位 | Advantage+ Placements（自动版位） |
| 优化事件 | Leads（表单提交）或 Messaging Conversations |

#### Ad Set 拆分逻辑

**方式 A：按国家拆分**（推荐用于多国家投放）

| Ad Set | 国家 | 预算 |
|--------|------|------|
| AS 1 | 沙特 + 阿联酋 | $15/天 |
| AS 2 | 马来西亚 + 印尼 | $15/天 |
| AS 3 | 美国 + 加拿大 | $15/天 |

**方式 B：按受众类型拆分**（推荐用于单国家深度投放）

| Ad Set | 受众 | 预算 |
|--------|------|------|
| AS 1 | Broad（不限兴趣） | $15/天 |
| AS 2 | Interest: Food Processing + Commercial Kitchen | $15/天 |
| AS 3 | LAL 1%（已有客户邮箱） | $15/天 |

### Campaign 2: 再营销

| 字段 | 设置 |
|------|------|
| 目标 | Leads 或 Sales |
| 预算类型 | CBO |
| 版位 | Advantage+ Placements |
| 优化事件 | Leads |

| Ad Set | 受众来源 | 时间窗口 |
|--------|---------|---------|
| AS 1 | 网站访客（Pixel） | 30 天 |
| AS 2 | 视频观看者（50%+） | 90 天 |
| AS 3 | 表单开启但未提交 | 30 天 |
| AS 4 | 已有线索（排除已成交） | 180 天 |

### Campaign 3: 品牌认知（可选）

| 字段 | 设置 |
|------|------|
| 目标 | Awareness 或 Video Views |
| 预算类型 | CBO |
| 用途 | 收集视频观看者 → 用于再营销 |

---

## 不同预算级别的结构

### 低预算（$300-500/月）

```
Ad Account
├── Campaign 1: TOF_Leads（ABO）
│   ├── Ad Set 1: Broad_核心国家（$10/天）
│   └── Ad Set 2: Interest_行业（$10/天）
└── Campaign 2: Retargeting（CBO, $5/天）
    └── Ad Set 1: 网站访客_90d
```

### 中预算（$1000-2000/月）

```
Ad Account
├── Campaign 1: TOF_Leads（ABO）
│   ├── Ad Set 1: Broad_中东（$15/天）
│   ├── Ad Set 2: Broad_东南亚（$15/天）
│   └── Ad Set 3: Interest_行业（$10/天）
├── Campaign 2: Retargeting（CBO, $15/天）
│   ├── Ad Set 1: 网站访客_30d
│   └── Ad Set 2: 视频观看_50%_90d
└── Campaign 3: ClickToWhatsApp（CBO, $10/天）
    └── Ad Set 1: Broad_所有国家
```

### 高预算（$3000-5000+/月）

```
Ad Account
├── Campaign 1: TOF_Leads（ABO）
│   ├── Ad Set 1-5: 按国家拆分（各$15-20/天）
│   └── Ad Set 6: LAL 1-3%
├── Campaign 2: Retargeting（CBO, $30-50/天）
│   ├── Ad Set 1: 网站访客_30d
│   ├── Ad Set 2: 视频观看_50%_90d
│   ├── Ad Set 3: 表单未提交
│   └── Ad Set 4: 已有线索培育
├── Campaign 3: ClickToWhatsApp（CBO, $20-30/天）
└── Campaign 4: Brand_VideoViews（CBO, $10-20/天）
```

---

## 命名规范

```
Campaign: [漏斗层级]_[目标]_[日期]_[状态]
示例: TOF_Leads_20260522_ACTIVE
示例: Retargeting_Leads_20260522_ACTIVE

Ad Set: [受众类型]_[国家/地区]_[预算]
示例: Broad_SA_UAE_$15/day
示例: LAL1%_Global_$20/day
示例: Interest_FoodProcessing_$15/day

Ad: [素材类型]_[Hook]_[版本]
示例: Video_FactoryDemo_V1
示例: Image_ProductSpec_V2
示例: Carousel_MultiProduct_V1
```

---

## 受众排除策略

| 排除对象 | 原因 |
|---------|------|
| 已有成交客户 | 避免浪费预算 |
| 已提交表单但未跟进的（>30天） | 线索已冷 |
| 竞品员工 | 避免给同行看 |
| 公司内部 IP | 避免自己的点击 |
| 18-24 岁 | 不太可能是 B2B 决策者 |
| 学生 | 非目标客户 |

---

## 扩量操作

### 什么时候扩

| 信号 | 动作 |
|------|------|
| Ad Set CPA < 目标 × 0.7 持续 7 天 | +30% 预算 |
| Ad Set CPA < 目标 × 0.9 持续 7 天 | +20% 预算 |
| 有效率 > 50% | 加预算 + 复制 Ad Set 到新国家 |
| 素材 CTR > 2% 持续 7 天 | 保持 + 加预算 |

### 怎么扩

1. **纵向扩量**：给表现好的 Ad Set 加预算（每次 +20%，间隔 3-4 天）
2. **横向扩量**：复制赢家 Ad Set 到新国家/新受众
3. **素材扩量**：给赢家 Ad Set 加新素材变体
4. **ASC 扩量**：有 50+ 转化/周后，启动 ASC Campaign

---

## 常见坑

| 坑 | 后果 | 避免方法 |
|---|------|---------|
| 一个 Ad Set 放太多国家 | 数据不清晰，不知道哪个国家好 | 按 Ad Set 拆分国家 |
| 预算太低 | 学习期过不了 | 日预算 ≥ 目标 CPL × 3 |
| 频繁改结构 | 重置学习期 | 7 天内不做大改 |
| 受众重叠 > 30% | 自己和自己竞价 | 检查受众重叠工具 |
| 不跑再营销 | 浪费了 60%+ 的冷受众曝光 | 至少设 1 个再营销 Campaign |
