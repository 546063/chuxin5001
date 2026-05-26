---
title: TikTok广告账户结构SOP
aliases:
  - TikTok Ads 账户搭建
  - TikTok Campaign 结构
  - TikTok B2B 账户SOP
tags:
  - tiktok-ads
  - account-structure
  - b2b-marketing
  - food-machinery
  - sop
type: SOP
module: 海外投流
platform: TikTok
routing_target:
  - tiktok_ads
  - tiktok_account_setup
quality_level: A
summary_cn: TikTok Ads 账户搭建 SOP，覆盖账户注册、Campaign/Ad Group/Ad 三级结构、Pixel 配置、出价策略、B2B 食品机械行业账户结构示例。
summary_en: TikTok Ads account setup SOP covering registration, Campaign/Ad Group/Ad structure, Pixel configuration, bidding strategies, B2B food machinery example.
related:
  - "[[00-TikTok投流知识库总索引]]"
  - "[[03-TikTok广告素材创意SOP]]"
  - "[[02-Facebook广告账户与配置SOP]]"
retrieval_keywords:
  - TikTok广告账户怎么注册
  - TikTok Campaign怎么建
  - TikTok Pixel怎么设置
  - TikTok出价策略
  - TikTok B2B账户搭建
decision_value: TikTok 账户结构是投流第一步，正确搭建才能有效测试和优化
created: 2026-05-22
updated: 2026-05-22
---

# TikTok广告账户结构 SOP

> **适用行业**：B2B 食品加工机械出口（整单 ≥ ¥20,000）
> **官方文档**：https://ads.tiktok.com/help/article/campaign-structure

---

## 一、TikTok Ads Manager 账户注册

### 1.1 注册方式

| 方式 | 说明 | 适合 |
|------|------|------|
| TikTok Ads Manager 自助注册 | ads.tiktok.com 直接注册 | 自投工厂 |
| TikTok 代理商开户 | 通过授权代理商 | 需要代运营 |
| 企业邮箱注册 | 使用公司域名邮箱 | B2B 企业账户 |

### 1.2 注册前准备

- [ ] 营业执照（扫描件）
- [ ] 企业邮箱
- [ ] 目标市场域名网站
- [ ] 支付方式（Visa/MasterCard）
- [ ] 网站域名（用于 Pixel 安装）

### 1.3 账户审核要点

- TikTok 审核通常 1-3 个工作日
- B2B 工厂网站建议先完成基础页面
- 广告账户需绑定 TikTok Business Center

---

## 二、Campaign / Ad Group / Ad 三级结构

### 2.1 层级关系

```
Campaign（广告系列）
├── Ad Group 1（广告组）
│   ├── Ad 1（广告）
│   └── Ad 2
├── Ad Group 2
│   ├── Ad 1
│   └── Ad 2
└── Ad Group 3
    ├── Ad 1
    └── Ad 2
```

### 2.2 Campaign 层（目标层）

| 设置项 | 说明 | B2B推荐 |
|--------|------|---------|
| 营销目标 | Conversion / Lead Generation / Traffic | Lead Generation 或 Conversion |
| 预算类型 | Daily Budget / Lifetime Budget | Daily Budget（便于控制） |
| 优化目标 | Complete Payment / Submit Form / Contact | Submit Form / Contact |

### 2.3 Ad Group 层（受众层）

| 设置项 | 说明 | B2B推荐 |
|--------|------|---------|
| 地理位置 | 目标国家/地区 | 按市场拆分 Ad Group |
| 年龄 | 18-65+ | 25-65（决策者年龄） |
| 性别 | 全部/男/女 | 全部 |
| 兴趣定向 | 兴趣标签 | 商业/工业/食品加工 |
| 行为定向 | 用户行为 | 搜索过B2B相关关键词 |
| 设备 | iOS/Android/全部 | 全部 |
| 预算 | Ad Group 级预算 | 由 Campaign 级控制 |
| 出价 | Lowest Cost / Cost Cap | 测试期用 Lowest Cost |

### 2.4 Ad 层（创意层）

| 设置项 | 说明 | B2B推荐 |
|--------|------|---------|
| 广告格式 | In-Feed / TopView / Branded Hashtag | In-Feed（信息流） |
| 视频素材 | 9:16 / 1:1 / 16:9 | 9:16 竖屏为主 |
| 标题 | 100字符内 | 产品亮点 + CTA |
| CTA | 按钮文字 | Learn More / Contact Us |
| 落地页 | 着陆 URL | 产品页 / 留资页 / WhatsApp |

---

## 三、Pixel 与事件追踪

### 3.1 Pixel 安装

**官方文档**：https://ads.tiktok.com/help/article/pixel

1. TikTok Ads Manager → Events → Web Events → Create Pixel
2. 获取 Pixel 代码
3. 安装到网站 `<head>` 中
4. 或使用 TikTok Pixel Helper 浏览器插件验证

### 3.2 推荐追踪事件

| 事件 | 说明 | B2B重要性 |
|------|------|-----------|
| PageView | 页面浏览 | 基础 |
| CompleteRegistration | 注册/留资完成 | ★★★★★ |
| Contact | 点击联系按钮 | ★★★★★ |
| SubmitForm | 提交表单 | ★★★★★ |
| AddToCart | 加入购物车 | ★★★ |
| ViewContent | 查看内容 | ★★ |

### 3.3 事件优先级

B2B 食品机械出口重点关注：

1. **SubmitForm** — 留资表单提交
2. **Contact** — WhatsApp/Messenger 点击
3. **CompleteRegistration** — 询盘提交

---

## 四、出价策略

### 4.1 三种出价模式

| 模式 | 说明 | 适合阶段 |
|------|------|---------|
| Lowest Cost | 系统自动优化，花完预算 | 测试期 / 冷启动 |
| Cost Cap | 设定目标 CPA 上限 | 有数据后优化 |
| Bid Cap | 设定每次出价上限 | 精细控制时 |

### 4.2 B2B 推荐出价策略

**测试期（前 7-14 天）**：
- 使用 Lowest Cost
- 每日预算 $30-50/Campaign
- 3-5 个 Ad Group（不同受众）
- 每个 Ad Group 2-3 个 Ad（不同素材）

**优化期（14-30 天）**：
- 切换到 Cost Cap
- 根据实际 CPL 设置 Cap（建议实际 CPL 的 1.2-1.5 倍）
- 关停 CPL 最高的 30% Ad Group
- 增加表现最好的素材变体

**放量期（30 天+）**：
- 使用 Bid Cap 或 Cost Cap
- 逐步增加预算（每次 +20-30%）
- 拓展新市场/新受众

---

## 五、B2B 食品机械账户结构示例

```
Campaign: Food_Machinery_LeadGen_Daily
├── Budget: $50/day
├── Objective: Lead Generation
│
├── Ad Group: ME_Saudi_Arabic (中东-阿拉伯语)
│   ├── Geo: Saudi Arabia, UAE
│   ├── Language: Arabic
│   ├── Interest: Food Industry, Manufacturing
│   ├── Bid: Lowest Cost
│   ├── Ad 1: 产品演示视频_阿拉伯语字幕
│   └── Ad 2: 工厂实力展示_产能数据
│
├── Ad Group: SEA_English (东南亚-英语)
│   ├── Geo: Philippines, Malaysia, Thailand
│   ├── Language: English
│   ├── Interest: Food Processing, Restaurant
│   ├── Bid: Lowest Cost
│   ├── Ad 1: 生产线演示_英文
│   └── Ad 2: 客户案例_东南亚工厂
│
└── Ad Group: Retargeting_Visitors (再营销)
    ├── Custom Audience: 网站访问者 30天
    ├── Bid: Lowest Cost
    ├── Ad 1: 询盘引导_CTA
    └── Ad 2: 限时优惠_催单
```

---

## 六、TikTok vs Facebook 账户结构差异

| 维度 | TikTok Ads | Facebook Ads |
|------|-----------|-------------|
| 层级 | Campaign → Ad Group → Ad | Campaign → Ad Set → Ad |
| 优化目标 | 类似（Conversion/Lead/Traffic） | 类似 |
| 受众定向 | 兴趣 + 行为 + 自定义 | 兴趣 + 行为 + LAL + 自定义 |
| 再营销 | 自定义受众（网站/Pixel） | 自定义受众（更全面） |
| 素材要求 | 视频为主 | 视频 + 图片 + 轮播 |
| Spark Ads | 支持（有机内容放大） | 无对应功能 |
| 学习期 | 约 50 个转化 | 约 50 个转化 |

---

## 七、常见问题

### Q1: TikTok 广告账户审核被拒怎么办？
- 检查网站是否有完整内容
- 确保有隐私政策页面
- B2B 网站需要看起来是真实企业

### Q2: 最低预算多少可以开始？
- 建议 $30-50/天/Campaign
- 低于 $20/天难以积累足够数据

### Q3: 一个账户可以投多个国家吗？
- 可以，但建议按市场拆分 Ad Group
- 不同语言/文化需要不同素材

---

## 八、Checklist

- [ ] 注册 TikTok Ads Manager 账户
- [ ] 绑定 Business Center
- [ ] 安装 Pixel 到网站
- [ ] 配置事件追踪（SubmitForm/Contact）
- [ ] 创建 Campaign（目标 + 预算）
- [ ] 按市场/受众拆分 Ad Group
- [ ] 每个 Ad Group 准备 2-3 个素材
- [ ] 设置出价策略（Lowest Cost）
- [ ] 测试投放前确认所有链接正常
- [ ] 设置数据监控 Dashboard

---

> **参考来源**：
> - TikTok Campaign Structure: https://ads.tiktok.com/help/article/campaign-structure
> - TikTok Pixel: https://ads.tiktok.com/help/article/pixel
> - TikTok Bidding: https://ads.tiktok.com/help/article/bidding-optimization
> - TikTok Ads Products: https://ads.tiktok.com/help/article/tiktok-ads-products
