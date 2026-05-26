---
title: TikTok线索广告SOP
aliases:
  - TikTok Lead Generation
  - TikTok 表单广告
  - TikTok 获客SOP
tags:
  - tiktok-ads
  - lead-generation
  - b2b-lead-gen
  - food-machinery
  - sop
type: SOP
module: 海外投流
platform: TikTok
routing_target:
  - tiktok_lead_ads
  - tiktok_ads
quality_level: A
summary_cn: TikTok 线索广告 SOP，覆盖 Lead Generation 表单广告、Website Conversion、Click to WhatsApp、表单设计、线索质量提升。
summary_en: TikTok lead generation ads SOP covering Lead Gen forms, Website Conversion, Click to WhatsApp, form design, lead quality improvement.
related:
  - "[[00-TikTok投流知识库总索引]]"
  - "[[01-TikTok广告账户结构SOP]]"
  - "[[06-Facebook线索广告与落地页]]"
retrieval_keywords:
  - TikTok线索广告怎么做
  - TikTok Lead Generation
  - TikTok表单广告
  - TikTok获客
  - TikTok点击到WhatsApp
decision_value: TikTok 线索广告是 B2B 获客核心渠道，表单设计决定线索质量
created: 2026-05-22
updated: 2026-05-22
---

# TikTok线索广告 SOP

> **适用行业**：B2B 食品加工机械出口
> **官方文档**：https://ads.tiktok.com/help/article/lead-generation

---

## 一、TikTok Lead Generation 广告

### 1.1 什么是 Lead Generation

TikTok 原生表单广告，用户在 TikTok 内填写表单，无需跳出。

**官方来源**：https://ads.tiktok.com/help/article/lead-generation

### 1.2 广告结构

```
Campaign: Objective = Lead Generation
├── Ad Group: 受众定向 + 预算
└── Ad: 视频素材 + 原生表单
    ├── Instant Form（TikTok 内置表单）
    └── 自定义字段
```

### 1.3 Instant Form 设置步骤

1. 创建 Campaign → 选择 "Lead Generation" 目标
2. 创建 Ad Group → 设置受众/预算/出价
3. 创建 Ad → 选择 "Instant Form" 作为 Destination
4. 创建表单：
   - **表单类型**：More Volume / Higher Intent
   - **封面**：品牌 Logo + 标题 + 描述
   - **问题**：预设问题 + 自定义问题
   - **隐私政策**：必须提供链接
   - **感谢页**：提交后展示，可添加 CTA

### 1.4 B2B 推荐表单字段

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| 姓名 | 短文本 | ✅ | 自动预填 |
| 邮箱 | 邮箱 | ✅ | 自动预填 |
| 电话/WhatsApp | 电话 | ✅ | 自动预填 |
| 公司名 | 短文本 | ✅ | 判断 B2B 身份 |
| 国家 | 下拉 | ✅ | 判断市场 |
| 需求描述 | 长文本 | 可选 | 了解采购意向 |
| 预算范围 | 单选 | 可选 | 过滤低预算询盘 |
| 采购时间 | 单选 | 可选 | 判断紧急程度 |

### 1.5 Higher Intent vs More Volume

| 模式 | 说明 | CPL | 线索质量 | B2B推荐 |
|------|------|-----|---------|---------|
| More Volume | 自动预填，一键提交 | 低 | 一般 | 不推荐 |
| Higher Intent | 增加确认步骤 | 较高 | 更好 | **推荐** |

---

## 二、Website Conversion 广告

### 2.1 适用场景

- 已有 B2B 网站/落地页
- 需要追踪完整的转化漏斗
- Pixel 已安装并配置事件

### 2.2 设置步骤

1. Campaign → Conversion 目标
2. Ad Group → 选择优化事件（SubmitForm/Contact）
3. Ad → 落地页 URL

### 2.3 落地页要求

| 要素 | 说明 |
|------|------|
| 加载速度 | < 3秒（TikTok 用户耐心更短） |
| 移动端适配 | 必须（TikTok 90%+ 移动端流量） |
| 表单简洁 | 3-5 个字段 |
| 信任背书 | 工厂照片/认证/客户案例 |
| CTA 明确 | "Get Quote" / "Contact Us" |
| WhatsApp 按钮 | 直接跳转 WhatsApp |

---

## 三、Click to WhatsApp on TikTok

### 3.1 设置方法

TikTok 目前主要通过以下方式实现 WhatsApp 承接：

1. **Website Conversion 广告**：落地页放置 WhatsApp 按钮
2. **Lead Gen 表单感谢页**：添加 WhatsApp 链接
3. **广告 CTA**：使用 "Contact Us" → 跳转 WhatsApp 链接

### 3.2 WhatsApp 链接格式

```
https://wa.me/{国家码}{手机号}?text={预填消息}

示例：
https://wa.me/8613800000000?text=Hi%2C%20I%27m%20interested%20in%20your%20food%20processing%20machinery.%20Please%20send%20me%20a%20catalog.
```

---

## 四、线索质量提升方法

### 4.1 表单过滤

| 方法 | 效果 |
|------|------|
| Higher Intent 模式 | 减少随意提交 |
| 增加自定义问题 | 过滤不认真对待的用户 |
| 添加预算范围 | 排除低预算询盘 |
| 添加采购时间 | 判断紧急程度 |
| 公司名必填 | 过滤 C 端用户 |

### 4.2 受众优化

| 方法 | 效果 |
|------|------|
| 收窄兴趣定向 | 提高相关性 |
| 排除低质量国家 | 减少无效线索 |
| 年龄限制 25+ | 过滤年轻非决策者 |
| 使用自定义受众 | 再营销 + LAL |

### 4.3 素材优化

| 方法 | 效果 |
|------|------|
| 素材中明确 B2B 属性 | 自动过滤 C 端 |
| 展示工厂/设备/认证 | 增加专业感 |
| 明确价格区间 | 过滤预算不符用户 |
| 强调 MOQ/定制能力 | 筛选目标客户 |

---

## 五、TikTok vs Facebook Lead Ads 对比

| 维度 | TikTok Lead Gen | Facebook Lead Ads |
|------|----------------|-------------------|
| 表单类型 | Instant Form | Native Lead Form |
| 预填功能 | ✅ | ✅ |
| Higher Intent | ✅ | ✅ |
| 移动端体验 | 优 | 优 |
| CPL（参考级） | 待验证 | 待验证 |
| 线索质量 | 待验证 | 待验证 |
| CRM 集成 | 通过 API/Zapier | 原生 + API |
| 受众精准度 | 中等 | 高 |

> **注意**：TikTok Lead Gen 的 CPL 和线索质量数据需实际投放后验证。

---

## 六、线索同步与管理

### 6.1 线索导出

- TikTok Ads Manager → Leads Center → 手动导出 CSV
- 或通过 API 自动同步
- 推荐使用 Zapier/Make 自动同步到 Google Sheets

### 6.2 线索跟进节奏

| 时间 | 动作 |
|------|------|
| 5 分钟内 | 首次联系（WhatsApp/邮件） |
| 24 小时内 | 发送产品目录/报价 |
| 3 天后 | 跟进是否收到/阅读 |
| 7 天后 | 提供额外价值（案例/视频） |
| 14 天后 | 最后跟进，标记沉默 |

---

## 七、B2B 食品机械线索广告 Checklist

- [ ] 选择 Lead Generation 或 Conversion 目标
- [ ] 表单使用 Higher Intent 模式
- [ ] 包含公司名、国家、预算字段
- [ ] 隐私政策链接有效
- [ ] 感谢页包含 WhatsApp 链接
- [ ] 素材明确 B2B 属性
- [ ] 受众定向排除 C 端用户
- [ ] Pixel 事件正常触发
- [ ] 线索同步到 CRM/表格
- [ ] 5 分钟内首响机制就绪

---

> **参考来源**：
> - TikTok Lead Generation: https://ads.tiktok.com/help/article/lead-generation
> - TikTok Instant Form: https://ads.tiktok.com/help/article/instant-form
> - TikTok Conversion Tracking: https://ads.tiktok.com/help/article/conversion-tracking
