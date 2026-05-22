---
title: "Facebook投流路由测试问题集"
aliases:
  - "FB投流测试问题"
  - "Facebook Ads Routing Test"
tags:
  - Facebook广告
  - 路由测试
  - AI路由
type: "测试问题集"
module: "海外投流"
routing_priority: "P0"
quality_level: "S"
summary_cn: "Facebook 投流知识库路由测试问题集，100 条测试问题覆盖 10 大分类，用于验证路由表和 JSON 路由文件的准确性。"
summary_en: "Facebook Ads routing test question set, 100 questions across 10 categories for validating routing accuracy."
related:
  - "[[10-Facebook投流路由入口]]"
  - "[[16-Facebook投流常见问题路由表]]"
  - "[[routing_rules_facebook_ads]]"
retrieval_keywords:
  - Facebook投流路由测试
  - 路由准确率
  - 知识库自测
decision_value: "用这 100 个问题定期自测路由准确率，确保知识库可被 AI 准确检索。"
created: "2026-05-22"
updated: "2026-05-22"
---

# Facebook投流路由测试问题集

## 使用说明
用以下问题测试路由表的准确性。检查：
1. 问题是否能命中正确的 routing_target
2. 是否能读取到对应文档
3. 回答是否包含文档中的核心信息

---

## 1. Facebook / Meta 平台问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q1 | Facebook 广告和 Google 广告有什么区别？ | facebook_ads | [[01-Facebook投流基础认知]] |
| Q2 | Meta Ads 和 Facebook Ads 是一回事吗？ | facebook_ads | [[01-Facebook投流基础认知]] |
| Q3 | Facebook 广告账户怎么注册？ | facebook_ads | [[02-Facebook广告账户与配置SOP]] |
| Q4 | Instagram 广告和 Facebook 广告可以一起投吗？ | facebook_ads | [[05-Facebook投放结构与预算模型]] |
| Q5 | Facebook 广告 Pixel 是什么？ | facebook_ads | [[02-Facebook广告账户与配置SOP]] |
| Q6 | Facebook 广告被拒登怎么处理？ | facebook_ad_policy | [[23-Facebook目标市场广告合规清单]] |
| Q7 | Facebook 广告账户被封了怎么办？ | facebook_ad_policy | [[23-Facebook目标市场广告合规清单]] |
| Q8 | Facebook 广告最低预算多少可以开始？ | facebook_ads | [[05-Facebook投放结构与预算模型]] |
| Q9 | Facebook 广告学习期是什么意思？ | facebook_ads | [[02-Facebook广告账户与配置SOP]] |
| Q10 | Facebook 广告多久能看到效果？ | facebook_b2b_ads | [[02-Facebook广告账户与配置SOP]] |

## 2. B2B 账户结构问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q11 | B2B Facebook 广告账户怎么搭建？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q12 | Campaign 和 Ad Set 怎么拆分？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q13 | ABO 和 CBO 有什么区别？ | facebook_ads | [[05-Facebook投放结构与预算模型]] |
| Q14 | 新账户冷启动怎么测受众？ | facebook_b2b_ads | [[02-Facebook广告账户与配置SOP]]、[[11-Facebook B2B广告账户结构SOP]] |
| Q15 | 多国家广告怎么拆 Ad Set？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q16 | B2B 广告用什么营销目标？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q17 | Facebook 广告命名规范怎么定？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q18 | 受众重叠超过 30% 怎么办？ | facebook_b2b_ads | [[02-Facebook广告账户与配置SOP]] |
| Q19 | B2B 广告怎么扩量？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]]、[[05-Facebook投放结构与预算模型]] |
| Q20 | 再营销 Campaign 怎么设置？ | facebook_ads | [[07-Facebook再营销与转化追踪]]、[[11-Facebook B2B广告账户结构SOP]] |

## 3. Messenger 获客问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q21 | Messenger 广告怎么做？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]] |
| Q22 | Click to Messenger 广告怎么设置？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]] |
| Q23 | Messenger 自动回复怎么设计？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]] |
| Q24 | Messenger 询盘怎么筛选有效客户？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]]、[[14-Facebook无效线索过滤SOP]] |
| Q25 | Messenger 线索怎么转 WhatsApp？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]]、[[15-Facebook客服营销SOP]] |
| Q26 | Messenger 广告什么业务适合？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]] |
| Q27 | Messenger 广告用什么素材？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]]、[[18-Facebook广告素材创意SOP]] |
| Q28 | Messenger 客户不回消息怎么办？ | messenger_leads | [[15-Facebook客服营销SOP]] |
| Q29 | Messenger 广告 CPC 太高怎么降？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]] |
| Q30 | Messenger 和 WhatsApp 广告选哪个？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]]、[[13-Facebook WhatsApp获客链路SOP]] |

## 4. WhatsApp 获客问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q31 | WhatsApp 广告怎么投？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |
| Q32 | Click to WhatsApp 广告怎么设置？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |
| Q33 | WhatsApp 询盘怎么跟进？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]]、[[15-Facebook客服营销SOP]] |
| Q34 | WhatsApp Business 怎么配置自动回复？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |
| Q35 | WhatsApp 广告在哪些国家效果好？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |
| Q36 | WhatsApp 客户怎么打标签？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]]、[[15-Facebook客服营销SOP]] |
| Q37 | WhatsApp 怎么给客户发报价？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]]、[[15-Facebook客服营销SOP]] |
| Q38 | WhatsApp 线索不回复怎么办？ | whatsapp_leads | [[15-Facebook客服营销SOP]] |
| Q39 | WhatsApp 广告的首句消息怎么写？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |
| Q40 | WhatsApp 怎么发产品目录给客户？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] |

## 5. 留资广告问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q41 | Facebook Lead Ads 怎么做？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] |
| Q42 | 留资广告表单字段怎么设计？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] |
| Q43 | Lead Ads 线索质量差怎么提高？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]]、[[14-Facebook无效线索过滤SOP]] |
| Q44 | CPL 太高怎么降低？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]]、[[17-Facebook投流复盘指标体系]] |
| Q45 | 留资广告和落地页广告选哪个？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] |
| Q46 | Lead Ads 线索怎么同步到表格？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] |
| Q47 | 留资广告后怎么跟进客户？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]]、[[15-Facebook客服营销SOP]] |
| Q48 | Higher Intent 表单是什么？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] |
| Q49 | 留资广告 CPL 多少算正常？ | facebook_lead_ads | [[17-Facebook投流复盘指标体系]] |
| Q50 | 留资广告用什么素材效果好？ | facebook_lead_ads | [[18-Facebook广告素材创意SOP]] |

## 6. 食品机械投流问题（20条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q51 | 食品加工机械怎么投 Facebook？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q52 | 切菜机在中东市场 Facebook 广告怎么写？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[24-阿拉伯语Facebook广告文案模板]] |
| Q53 | 切菜机怎么投 Facebook？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[21-食品加工机械Facebook广告素材库]] |
| Q54 | 切肉机 Facebook 广告怎么做？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[21-食品加工机械Facebook广告素材库]] |
| Q55 | 包子机投 Facebook 用什么素材？ | food_processing_machinery_ads | [[21-食品加工机械Facebook广告素材库]] |
| Q56 | 饺子机 Facebook 广告怎么写文案？ | food_processing_machinery_ads | [[21-食品加工机械Facebook广告素材库]] |
| Q57 | 锯骨机广告怎么投？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q58 | 绞肉机 Facebook 广告用什么受众？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q59 | 蔬菜清洗机怎么投？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q60 | 去皮机 Facebook 广告怎么写？ | food_processing_machinery_ads | [[21-食品加工机械Facebook广告素材库]] |
| Q61 | 羊肉卷切片机怎么投 Facebook？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q62 | 食品加工生产线怎么投？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]] |
| Q63 | 食品机械广告预算多少合适？ | food_processing_machinery_ads | [[11-Facebook B2B广告账户结构SOP]] |
| Q64 | 食品机械 Facebook 广告怎么接询盘？ | food_processing_machinery_ads | [[12-Facebook Messenger获客链路SOP]]、[[13-Facebook WhatsApp获客链路SOP]] |
| Q65 | 食品机械在中东怎么投？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[24-阿拉伯语Facebook广告文案模板]] |
| Q66 | 食品机械在东南亚怎么投？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[23-Facebook目标市场广告合规清单]] |
| Q67 | 给食品机械客户做 Facebook 投流方案 | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[11-Facebook B2B广告账户结构SOP]] |
| Q68 | 食品机械广告无效线索多怎么办？ | food_processing_machinery_ads | [[14-Facebook无效线索过滤SOP]] |
| Q69 | 食品机械广告素材怎么拍？ | food_processing_machinery_ads | [[21-食品加工机械Facebook广告素材库]] |
| Q70 | 食品机械广告 CTR 低怎么办？ | food_processing_machinery_ads | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] |

## 7. 广告素材问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q71 | Facebook 广告素材怎么做？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q72 | 视频广告脚本怎么写？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q73 | 图片广告怎么设计？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q74 | 广告 Hook 怎么设计？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q75 | 广告文案怎么写？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q76 | Reels 广告素材怎么做？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q77 | 轮播广告怎么设计？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q78 | 素材多久换一次？ | facebook_creative | [[18-Facebook广告素材创意SOP]] |
| Q79 | 竞品素材怎么拆解？ | facebook_competitor_research | [[19-Facebook竞品广告素材拆解SOP]] |
| Q80 | Meta Ad Library 怎么用？ | facebook_competitor_research | [[19-Facebook竞品广告素材拆解SOP]] |

## 8. 数据复盘问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q81 | CTR 低于 1% 怎么办？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] |
| Q82 | CPC 超过 $3 正常吗？ | facebook_ad_optimization | [[17-Facebook投流复盘指标体系]] |
| Q83 | CPL $30 算高吗？ | facebook_lead_ads | [[17-Facebook投流复盘指标体系]] |
| Q84 | ROAS 只有 1.5x 怎么优化？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] |
| Q85 | 广告跑了 3 天 0 转化怎么办？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]] |
| Q86 | 怎么做 Facebook 广告月度复盘？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] |
| Q87 | 素材疲劳怎么判断？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] |
| Q88 | 什么时候该关停广告？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]] |
| Q89 | 什么时候可以加预算？ | facebook_ad_optimization | [[05-Facebook投放结构与预算模型]]、[[17-Facebook投流复盘指标体系]] |
| Q90 | 广告数据怎么记录？ | facebook_ad_optimization | [[20-Facebook投流实战数据记录模板]] |

## 9. 无效线索 / 客服跟进问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q91 | 无效线索太多怎么办？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]] |
| Q92 | 怎么判断线索是不是同行？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]] |
| Q93 | 客户只问价格不回复怎么办？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]]、[[15-Facebook客服营销SOP]] |
| Q94 | 怎么给线索评分？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]] |
| Q95 | Facebook 线索来了怎么跟进？ | facebook_sales_followup | [[15-Facebook客服营销SOP]] |
| Q96 | 客户不回复怎么唤醒？ | facebook_sales_followup | [[15-Facebook客服营销SOP]] |
| Q97 | 第一次回复客户怎么写？ | facebook_sales_followup | [[15-Facebook客服营销SOP]] |
| Q98 | B2B 客户怎么推进成交？ | facebook_sales_followup | [[15-Facebook客服营销SOP]] |
| Q99 | 怎么判断客户是个人还是工厂？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]] |
| Q100 | 线索分级后怎么跟进？ | facebook_sales_followup | [[14-Facebook无效线索过滤SOP]]、[[15-Facebook客服营销SOP]] |

## 10. 中东 / 阿拉伯语 / 合规问题（10条）

| # | 测试问题 | 预期 routing_target | 预期命中文档 |
|---|---------|-------------------|-------------|
| Q101 | 阿拉伯语广告文案怎么写？ | arabic_ad_copy | [[24-阿拉伯语Facebook广告文案模板]] |
| Q102 | 中东市场 Facebook 广告合规要注意什么？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]] |
| Q103 | Facebook 广告什么内容会被拒？ | facebook_ad_policy | [[23-Facebook目标市场广告合规清单]] |
| Q104 | 沙特市场广告怎么投？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]]、[[24-阿拉伯语Facebook广告文案模板]] |
| Q105 | 阿联酋市场受众怎么定向？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]]、[[11-Facebook B2B广告账户结构SOP]] |
| Q106 | 食品机械在中东有什么广告限制？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]] |
| Q107 | 阿拉伯语 WhatsApp 消息怎么写？ | arabic_ad_copy | [[24-阿拉伯语Facebook广告文案模板]]、[[13-Facebook WhatsApp获客链路SOP]] |
| Q108 | Facebook 广告被拒登怎么申诉？ | facebook_ad_policy | [[23-Facebook目标市场广告合规清单]] |
| Q109 | 中东市场素材有什么注意事项？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]]、[[18-Facebook广告素材创意SOP]] |
| Q110 | 中东市场留资广告表单用什么语言？ | middle_east_ads | [[24-阿拉伯语Facebook广告文案模板]]、[[06-Facebook线索广告与落地页]] |

---

## 路由自测（20 题抽样）

| 测试问题 | 预期 routing_target | 预期命中文档 | 实际命中文档 | 是否通过 | 修正动作 |
|---------|-------------------|-------------|-------------|---------|---------|
| 食品加工机械怎么投 Facebook？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[11-Facebook B2B广告账户结构SOP]] | - | 待测 | - |
| 切菜机在中东市场 Facebook 广告怎么写？ | food_processing_machinery_ads | [[22-食品加工机械Facebook投流案例库]]、[[24-阿拉伯语Facebook广告文案模板]] | - | 待测 | - |
| WhatsApp 获客链路怎么设计？ | whatsapp_leads | [[13-Facebook WhatsApp获客链路SOP]] | - | 待测 | - |
| Messenger 询盘怎么转 WhatsApp？ | messenger_leads | [[12-Facebook Messenger获客链路SOP]]、[[15-Facebook客服营销SOP]] | - | 待测 | - |
| Facebook 留资广告线索很差怎么办？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]]、[[14-Facebook无效线索过滤SOP]] | - | 待测 | - |
| Facebook B2B 广告账户结构怎么搭？ | facebook_b2b_ads | [[11-Facebook B2B广告账户结构SOP]]、[[02-Facebook广告账户与配置SOP]] | - | 待测 | - |
| 食品机械广告素材怎么拍？ | food_processing_machinery_ads | [[21-食品加工机械Facebook广告素材库]]、[[18-Facebook广告素材创意SOP]] | - | 待测 | - |
| Facebook 广告 CTR 低怎么办？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] | - | 待测 | - |
| CPL 高怎么办？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]]、[[17-Facebook投流复盘指标体系]] | - | 待测 | - |
| ROAS 没起来怎么复盘？ | facebook_ad_optimization | [[09-Facebook投流复盘与优化SOP]]、[[17-Facebook投流复盘指标体系]] | - | 待测 | - |
| 无效询盘太多怎么办？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]] | - | 待测 | - |
| 阿拉伯语广告文案怎么写？ | arabic_ad_copy | [[24-阿拉伯语Facebook广告文案模板]] | - | 待测 | - |
| 中东市场 Facebook 广告合规要注意什么？ | middle_east_ads | [[23-Facebook目标市场广告合规清单]] | - | 待测 | - |
| 如何用 Meta Ad Library 拆竞品素材？ | facebook_competitor_research | [[19-Facebook竞品广告素材拆解SOP]] | - | 待测 | - |
| 客服拿到 Facebook 线索后怎么跟进？ | facebook_sales_followup | [[15-Facebook客服营销SOP]] | - | 待测 | - |
| B2B Facebook 广告冷启动怎么测？ | facebook_b2b_ads | [[02-Facebook广告账户与配置SOP]]、[[11-Facebook B2B广告账户结构SOP]] | - | 待测 | - |
| 留资广告表单字段怎么设计？ | facebook_lead_ads | [[06-Facebook线索广告与落地页]] | - | 待测 | - |
| 竞品素材怎么拆解？ | facebook_competitor_research | [[19-Facebook竞品广告素材拆解SOP]] | - | 待测 | - |
| 客户只问价格不回复怎么办？ | invalid_lead_filtering | [[14-Facebook无效线索过滤SOP]]、[[15-Facebook客服营销SOP]] | - | 待测 | - |
| Facebook 广告被拒登怎么申诉？ | facebook_ad_policy | [[23-Facebook目标市场广告合规清单]] | - | 待测 | - |

> 自测将在所有文档创建完成后执行。目标通过率 ≥ 90%。
