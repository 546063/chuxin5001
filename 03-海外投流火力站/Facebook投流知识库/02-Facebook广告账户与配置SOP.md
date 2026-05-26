---
title: Facebook广告账户与配置SOP
aliases:
  - FB账户搭建SOP
  - Facebook Ads 账户配置
  - Pixel CAPI设置
tags:
  - Facebook投流
  - 账户搭建
  - Pixel
  - CAPI
  - SOP
type: SOP
quality_level: A
summary_cn: 从零到投放的7步SOP:账户基础设施准备→素材制作→结构搭建→发布观察→首次优化→扩量。含Pixel+CAPI双轨设置、Event Match Quality优化、域名验证、Aggregated Event Measurement配置。
summary_en: "Complete SOP for Facebook Ads account setup: BM creation, Pixel+CAPI deployment, event configuration, campaign structure."
related:
  - "[[03-海外投流火力站/Facebook投流知识库/00-Facebook投流知识库总索引]]"
  - "[[01-Facebook投流基础认知]]"
  - "[[03-Facebook受众定位与客户画像]]"
  - "[[03-海外投流火力站/Facebook投流知识库/11-Facebook B2B广告账户结构SOP]]"
retrieval_keywords:
  - Facebook账户搭建
  - Pixel安装
  - CAPI配置
  - Business Manager
  - 事件管理工具
  - 域名验证
decision_value: 新账户从零到投放的完整操作指南，新手可按步骤执行
created: 2026-05-21
updated: 2026-05-21
---

# Facebook广告账户与配置SOP

## 一句话总结

从开户到投放：基础设施准备 → 素材制作 → 结构搭建 → 发布观察 → 首次优化 → 扩量，7步完整流程。

## 核心结论

- 学习期内绝对不要大改，除非预算完全花不出去
- 每次扩量预算不超过 20%，间隔 3-4 天
- ASC 前 7-10 天完全不动，只换素材不改受众/出价
- Pixel + CAPI 双轨并行，数据覆盖率从 ~55% 提升到 ~95%+

---

## Step 1：账户与基础设施准备（Day 1-2）

1. 创建 Business Manager → 添加 Ad Account
2. 添加支付方式
3. 创建并安装 Pixel
4. 部署 CAPI
5. 验证域名
6. 配置 Aggregated Event Measurement（8 事件优先级）
7. 安装 Meta Pixel Helper 浏览器插件验证
8. 创建至少 1 个自定义受众（网站访客）

## Step 2：素材与创意准备（Day 2-4）

- 制作 3-5 个广告图片（不同视觉角度）
- 制作 2-3 个视频广告（15-30 秒，含 Hook）
- 准备 5 个文案变体（不同 Hook 开头）
- 制作适配不同版位的素材变体（1:1, 4:5, 9:16, 16:9）
- 准备落地页（加载速度 < 3 秒，移动端优先）

## Step 3：Campaign 结构搭建（Day 4）

- **Campaign 1**：TOF 拉新（Sales 目标，ABO，3 个 Ad Set）
- **Campaign 2**：BOF 再营销（Sales 目标，CBO，1 个 Ad Set）

## Step 4：广告创建（Day 4-5）

- 每个 Ad Set 放 2-3 个广告变体
- 确保文案含明确 CTA
- 落地页 URL 加 UTM 参数追踪
- 检查广告预览在不同版位的效果

## Step 5：发布与学习期观察（Day 5-12）

- 发布后 24 小时：不碰！让系统开始学习
- Day 2-3：检查预算消耗率是否正常（> 70%）
- Day 4-5：看 CTR（是否 > 1%）、CPC、CPM
- Day 7：首次评估是否有转化数据
- Day 7-14：绝对不要大改

## Step 6：首次优化决策（Day 14）

| 情况 | 动作 |
|------|------|
| Ad Set 转化 < 15 次 | 继续观察或关停 |
| Ad Set 转化 15-50 次 | 学习期中，等 |
| Ad Set 转化 > 50 次 | 学习完成，考虑扩量 |
| CPA 超过目标 2 倍 | 降低预算或关停 |

## Step 7：扩量策略（Day 14+）

- 对表现好的 Ad Set 逐步加预算（每 3-4 天加 20%）
- 复制成功 Ad Set 到新的 CBO Campaign
- 考虑启动 ASC（如果有足够数据）
- 制作新素材替换疲劳广告

---

## Pixel + CAPI 双轨设置

### 为什么需要双轨

| 数据源 | 数据丢失率 | 优势 |
|--------|-----------|------|
| Pixel（浏览器端） | 丢失 15-30% | 实时、含用户行为数据 |
| CAPI（服务端） | 丢失 < 5% | 不受 ITP/ATT 影响 |
| 双轨并行 | 覆盖率 ~95%+ | **最佳方案** |

### 设置步骤

1. Events Manager → 创建新 Pixel
2. 安装 Pixel 基础代码到网站所有页面的 `<head>`
3. 配置标准事件（Purchase/Lead/AddToCart 等）
4. 设置 CAPI（Shopify 原生集成最简单）
5. 配置去重：每个事件必须传 `event_id`
6. 验证：Events Manager → Test Events → 模拟用户行为

### 必须追踪的事件（按优先级）

1. Purchase — 购买
2. Lead — 留资/表单提交
3. AddToCart — 加入购物车
4. InitiateCheckout — 发起结账
5. ViewContent — 浏览商品/页面
6. CompleteRegistration — 注册完成
7. Subscribe — 订阅

### Event Match Quality 优化

传递越多用户信息 → 匹配质量越高（目标 ≥ 6.0，优秀 ≥ 8.0）：

1. email（SHA-256 加密）
2. phone（SHA-256 加密）
3. fbc（Facebook Click ID）
4. fbp（Facebook Browser ID）
5. client_user_agent
6. client_ip_address
7. first_name, last_name
8. city, state, zip, country

---

## 命名规范体系

```
Campaign: [目标]_[品类]_[受众类型]_[日期]_[状态]
示例：Sales_LED_LAL1%_20260501_ACTIVE

Ad Set: [受众描述]_[版位]_[预算]/day
示例：LAL1%_Purchase_90d_Auto_$50/day

Ad: [素材类型]_[Hook类型]_[时长]_[版本]
示例：UGC_Testimonial_QuestionHook_15s_V1
```

## 不同业务类型的冷启动差异

### DTC 电商冷启动
- Day 1-2：建 ABO Campaign，3 Ad Set
- Day 3-7：不干预，等学习期
- Day 7-10：关掉 CPA > 目标的组
- Day 10-14：赢家进 CBO，开始扩量
- 预算：$50-200/天起步

### B2B 线索冷启动
- Day 1-2：建 Lead Gen Campaign（用 Facebook Lead Form）
- Day 3-7：跑 Broad + 行业兴趣，$30-50/天
- Day 7-14：分析线索质量（不是数量）
- Day 14-21：优化 Lead Form 问题
- 预算：$30-100/天起步

### 高客单（>$500）冷启动
- Day 1-2：建 Awareness Campaign（视频观看目标）
- Day 3-14：收集视频观看 > 50% 的受众
- Day 14-21：建 Retargeting Campaign
- Day 21-30：用 LAL 跑冷受众
- 预算：$50-150/天起步
- 预期周期：30-60 天才能出首单

## 避坑清单

### 严重坑（浪费预算）
- 一天内多次改广告 → 重置学习期
- 预算加太猛（> 50%）→ 重置学习期
- 频繁新建 Campaign → 数据分散
- 选错 Campaign 目标 → 系统优化错误行为
- 像素没配 CAPI → iOS 用户数据丢失 50%+

### 中坑（影响效果）
- 受众重叠 > 30% → 自己跟自己竞价
- 只用一个版位 → 错失 40-60% 展示机会
- 广告文案太长/没重点 → CTR < 0.8%
- 落地页加载 > 3 秒 → 跳出率 > 60%

## 相关知识点

- [[03-海外投流火力站/Facebook投流知识库/00-Facebook投流知识库总索引]] — 知识库导航
- [[01-Facebook投流基础认知]] — 算法底层逻辑
- [[03-Facebook受众定位与客户画像]] — 定向方法
- [[05-Facebook投放结构与预算模型]] — 预算管理
- [[07-Facebook再营销与转化追踪]] — 再营销
- [[09-Facebook投流复盘与优化SOP]] — 复盘优化
