---
title: Facebook投流判断
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: scenario_template
status: active
quality_level: B
summary_cn: Facebook广告数据判断的场景模板。当需要判断广告数据好坏、决定是否继续投放或关停、调整预算时调用。调用4个AI模型辅助决策:广告测试模型（测试设计和数据判断）、定位模型（素材传达定位）、客户痛点差距模型（素材是否戳中痛点）、复盘进化模型（从历史投放学习）。输出数据判断、账户结构建议、素材优化方向、预算调整建议、测试节奏。
summary_en: Scenario template for Facebook ad data judgment, calling 4 AI models to
  evaluate ad performance and provide optimization recommendations.
one_sentence_summary: Facebook广告指南
decision_value: Ad targeting and creative reference
review_note: Facebook投流判断场景模板
category: ''
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[05-广告投流增长MOC]]
retrieval_keywords:
- Facebook B2B获客
- Facebook素材测试
- Facebook再营销受众
- 广告预算分配
- 广告素材疲劳诊断
routing_target:
  - "[[05-广告投流增长MOC]]"
---

# Facebook投流判断

## 适用问题
- Facebook广告数据怎么判断好不好？
- 要不要继续投/关停/调整预算？
- 广告账户怎么搭建？
- 素材效果不好怎么优化？

## 默认调用模型
1. [[11-智囊团与知识蒸馏/母模型库/广告测试模型]]：测试设计和数据判断
2. [[11-智囊团与知识蒸馏/母模型库/定位模型]]：素材是否传达正确定位
3. [[11-智囊团与知识蒸馏/母模型库/客户痛点差距模型]]：素材是否戳中痛点
4. [[11-智囊团与知识蒸馏/母模型库/复盘进化模型]]：从历史投放中学习

## 必须检索的资料
- 02-海外投流/Facebook-Meta/ — 投放策略
- 08-投流策略与复盘/ — 历史复盘数据
- 07-广告素材与创意/ — 素材参考

## 什么时候需要联网搜索
- Facebook广告政策变化
- 行业CPM/CPC基准数据
- 竞品广告截图/分析

## 必须输出的结果
- 数据判断（好/不好/还需要更多数据）
- 账户结构建议
- 素材优化方向
- 预算调整建议
- 测试节奏
