---
title: TikTok投流路由入口
aliases:
  - TikTok Ads 路由
  - TikTok AI 路由
tags:
  - tiktok-ads
  - ai-routing
  - routing-entry
type: 路由入口
module: 海外投流
platform: TikTok
routing_target:
  - tiktok_ads
  - tiktok_lead_ads
  - tiktok_creative
  - tiktok_review
quality_level: S
summary_cn: TikTok 投流 AI 路由入口，当用户问 TikTok 广告相关问题时优先读取。
summary_en: TikTok ads AI routing entry point for all TikTok advertising questions.
related:
  - "[[00-TikTok投流知识库总索引]]"
  - "[[11-TikTok投流常见问题路由表]]"
  - "[[03-海外投流火力站/Facebook投流知识库/10-Facebook投流路由入口]]"
retrieval_keywords:
  - TikTok投流
  - TikTok广告
  - TikTok Ads
  - TikTok怎么投
decision_value: TikTok 投流问题的 AI 路由入口，快速定位对应文档
created: 2026-05-22
updated: 2026-05-22
---

# TikTok投流路由入口

> TikTok Ads 投流问题优先读取本文档，再进入子路由。

---

## 路由规则

| # | 问题类型 | 触发词 | routing_target | 优先读取文档 |
|---|---------|--------|---------------|-------------|
| 1 | 平台认知 | TikTok广告、TikTok投流、TikTok Ads | tiktok_ads | [[00-TikTok投流知识库总索引]]、[[05-TikTok投流B2B适配性分析]] |
| 2 | 账户搭建 | 账户注册、Campaign结构、Pixel | tiktok_ads | [[01-TikTok广告账户结构SOP]] |
| 3 | 线索广告 | Lead Gen、表单广告、获客、留资 | tiktok_lead_ads | [[02-TikTok线索广告SOP]] |
| 4 | 素材创意 | 视频素材、钩子、脚本、创意 | tiktok_creative | [[03-TikTok广告素材创意SOP]] |
| 5 | 数据复盘 | CPL、CTR、复盘、优化、数据差 | tiktok_review | [[04-TikTok投流复盘指标体系]] |
| 6 | B2B适配 | 食品机械、B2B、设备 | tiktok_ads | [[05-TikTok投流B2B适配性分析]] |
| 7 | Spark Ads | Spark Ads、有机放大 | tiktok_creative | [[03-TikTok广告素材创意SOP]] |

---

## 快速判断

**用户问 TikTok + 投流/广告** → 读取 [[01-TikTok广告账户结构SOP]]
**用户问 TikTok + 线索/获客** → 读取 [[02-TikTok线索广告SOP]]
**用户问 TikTok + 素材/视频** → 读取 [[03-TikTok广告素材创意SOP]]
**用户问 TikTok + 数据/复盘** → 读取 [[04-TikTok投流复盘指标体系]]
**用户问 TikTok + 适不适合/要不要投** → 读取 [[05-TikTok投流B2B适配性分析]]

---

## 关联知识库

- [[03-海外投流火力站/Facebook投流知识库/10-Facebook投流路由入口|Facebook 投流路由入口]]
- [[00-LinkedIn投流知识库总索引|LinkedIn 投流知识库]]
- [[14-国内投流/巨量引擎与本地推/巨量引擎AD广告投流路由入口|巨量引擎路由入口]]
