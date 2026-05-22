---
title: "LinkedIn广告基础结构SOP"
aliases:
  - "LinkedIn Ads Basics"
  - "LinkedIn 广告搭建"
tags:
  - linkedin
  - linkedin-ads
  - b2b-marketing
type: "SOP"
module: "海外投流"
platform: "LinkedIn"
routing_target:
  - linkedin_ads
  - linkedin_b2b_content
quality_level: "A"
summary_cn: "LinkedIn 广告基础结构 SOP，轻量版，覆盖 Campaign 搭建、定向、格式选择、B2B 推荐配置。"
summary_en: "LinkedIn ads basic structure SOP (lightweight), covering campaign setup, targeting, format selection, B2B recommendations."
related:
  - "[[00-LinkedIn获客路由入口]]"
  - "[[03-海外投流/LinkedIn投流知识库/02-LinkedIn广告账户与Campaign Manager配置]]"
retrieval_keywords:
  - "LinkedIn广告怎么投"
  - "LinkedIn Sponsored Content"
  - "LinkedIn Lead Gen Form"
  - "LinkedIn广告预算"
decision_value: "LinkedIn 广告适合高客单价 B2B，轻量版先搭建框架"
created: "2026-05-22"
updated: "2026-05-22"
---

# LinkedIn广告基础结构SOP

> **适用行业**：B2B 食品加工机械出口
> **定位**：轻量版，后续可深挖
> **官方来源**：https://www.linkedin.com/campaign-manager/

---

## 一、LinkedIn Ads 特征

| 特征 | 说明 |
|------|------|
| 用户意图 | 职业/商业 |
| B2B 适配 | 最高（决策者集中） |
| CPL | $20-100+（高于 Facebook/TikTok） |
| 定向精度 | 最高（职位/公司/行业） |
| 素材要求 | 图文为主，视频辅助 |
| 预算 | 较高（建议 $50+/天） |

---

## 二、Campaign 结构

### 2.1 基础结构

```
Campaign
├── Ad Group
│   ├── Sponsored Content (Single Image / Video / Carousel)
│   └── Lead Gen Form (optional)
└── Ad Group
    ├── Message Ads (InMail)
    └── Lead Gen Form
```

### 2.2 Campaign 设置

| 设置项 | B2B推荐 |
|--------|--------|
| 目标 | Lead Generation |
| 预算 | $50-100/天 |
| 出价 | Maximum Delivery 或 Manual CPC |
| 格式 | Single Image + Lead Gen Form |

### 2.3 Ad Group 定向

| 定向维度 | B2B推荐 |
|---------|--------|
| 地理位置 | 目标国家 |
| 行业 | Food & Beverages |
| 职位 | Manager+ |
| 公司规模 | 50+ |
| 技能 | Food Processing 等 |

---

## 三、广告格式

### 3.1 Sponsored Content

| 格式 | 适合 |
|------|------|
| Single Image | 产品展示 |
| Video | 产品演示/工厂介绍 |
| Carousel | 多产品展示/解决方案 |
| Document Ad | 白皮书/案例集 |

### 3.2 Lead Gen Form

LinkedIn 原生表单，用户无需跳转即可提交信息。

| 字段 | 建议 |
|------|------|
| 姓名 | 自动预填 |
| 邮箱 | 自动预填 |
| 公司名 | 自动预填 |
| 职位 | 自动预填 |
| 自定义问题 | 1-2 个（需求描述/预算） |

---

## 四、与 Facebook Ads 对比

| 维度 | LinkedIn | Facebook |
|------|----------|----------|
| CPL | $20-100+ | $5-30 |
| 线索质量 | 最高 | 高 |
| 定向精度 | 最高 | 高 |
| 素材要求 | 图文 | 视频+图文 |
| 适合行业 | B2B高客单价 | 通用 |
| 预算门槛 | $50+/天 | $30+/天 |

---

## 五、预算建议

| 阶段 | 预算 | 说明 |
|------|------|------|
| 测试 | $500-1000/月 | 验证线索质量和成本 |
| 优化 | $1000-3000/月 | 保留有效 Campaign |
| 放量 | $3000+/月 | 拓展新市场 |

---

## 六、Checklist

- [ ] LinkedIn Campaign Manager 账户
- [ ] Insight Tag 安装到网站
- [ ] Lead Gen Form 配置
- [ ] 广告素材准备（图片+文案）
- [ ] 定向设置（职位/行业/地理）
- [ ] 预算设置
- [ ] 线索同步到 CRM/表格
- [ ] 数据监控设置
