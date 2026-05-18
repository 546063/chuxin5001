---
title: "09-工厂探访评估MOC"
aliases: ["工厂探访", "工厂评估", "供应链判断", "验厂"]
tags: ["MOC", "工厂探访", "供应链", "验厂"]
topic: "工厂探访评估"
created: "2026-05-17"
updated: "2026-05-17"
type: "moc"
status: "active"
quality_level: "S"
summary_cn: "工厂探访、工厂评估、供应链判断的入口MOC。管辖07目录所有工厂探访内容，包含探厂问题清单、工厂资质评估、官网联系方式分析、合作风险判断、供应链交付能力评估等。当AI需要评估工厂可靠性、判断交期能力、分析供应链风险时调用此MOC。S级主MOC，食品机械外贸产品质量控制核心保障。"
summary_en: "Entry MOC for factory visits, factory assessment, and supply chain evaluation. Manages all 07 directory content including factory assessment checklists, qualification evaluation, and risk analysis."
one_sentence_summary: "工厂探访与评估主入口，判断工厂可靠性与交付能力"
decision_value: "帮助评估工厂资质可靠性、判断交期能力、分析合作风险"
review_note: "S级主MOC，外贸产品质量控制核心保障，失败成本高达数万美金"
category: "供应链管理"
platform: []
industry: ["食品加工机械", "B2B机械外贸", "供应链"]
scenario: ["评估新工厂合作", "判断交期能力", "分析供应链风险", "探厂问题准备", "工厂资质审核"]
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - - - type: "part_of"
  - - target: "[[00-总指挥部/MOC/01-全库工作总览MOC]]"
  - - note: "属于全库工作总览的一部分"
  - - - type: "related"
  - - target: "[[00-总指挥部/MOC/07-客户开发成交MOC]]"
  - - note: "客户成交需要可靠工厂支撑"
  - - - type: "related"
  - - target: "[[00-总指挥部/MOC/18-成交案例战报MOC]]"
  - - note: "工厂合作案例可进入成交案例"
related:
retrieval_keywords:
  - - - "工厂探访"
  - - - "工厂评估"
  - - - "供应链判断"
  - - - "验厂"
  - - - "交期能力"
  - - - "工厂资质"
  - - - "合作风险"
  - - - "交付能力"
  - - --
  - --
routing_target:
  - "[[00-目录总览MOC]]"
---

# 09-工厂探访评估MOC

## 中文总结
本MOC是工厂探访与评估的主入口，管辖07目录所有内容。当AI需要评估工厂可靠性、判断交期能力、分析合作风险、准备探厂问题时，先查这里。它链接到工厂评估MOC、探厂问题清单等核心文稿，帮助在外贸项目中选择可靠供应商，避免踩坑。

## English Summary
Master entry for factory visit and assessment. Routes to factory assessment checklists, qualification evaluation, and supply chain risk analysis in the 07 directory.

## 一句话结论
工厂探访与评估主入口，判断工厂可靠性与交付能力。

## 适用场景
- 评估新供应商/工厂是否值得合作
- 判断工厂交期能力和产能
- 分析供应链风险（单一来源、质量不稳定）
- 准备探厂问题清单
- 审核工厂资质（ISO、CE、生产许可）
- 对比多家工厂方案

## 不适用场景
- 客户沟通话术（去[[08-客户沟通复盘MOC]]）
- 客户开发策略（去[[07-客户开发成交MOC]]）
- 投流获客（去08或09目录）
- 认证物流（去13目录）

## 核心主文稿
- [[07-工厂探访侦察站/MOC]]：工厂探访侦察站主入口，包含探厂问题清单
- [[07-工厂探访侦察站/README]]：工厂探访侦察站说明文档

## 工作路径
1. **筛选候选工厂** → 从05-客户开发与成交/18-对外销售资料中选择
2. **初步评估** → 查官网、联系方式、行业口碑
3. **探厂准备** → 使用探厂问题清单准备问题
4. **现场评估** → 按工厂资质、产能、管理水平评估
5. **风险判断** → 合作风险、交付能力、替代方案
6. **建档** → 工厂评估档案进入07目录

## 决策入口
- 评估新工厂 → [[07-工厂探访侦察站/MOC]]
- 准备探厂问题 → [[07-工厂探访侦察站/MOC]]探厂问题部分
- 判断交期能力 → 工厂产能与历史交期记录
- 分析合作风险 → 单一来源、质量稳定性、资金风险
- 对比工厂方案 → 多工厂横向比较表

## 相关MOC
- [[00-总指挥部/MOC/07-客户开发成交MOC]] - 客户成交需要可靠工厂支撑
- [[00-总指挥部/MOC/08-客户沟通复盘MOC]] - 工厂技术应答支撑客户沟通
- [[00-总指挥部/MOC/18-成交案例战报MOC]] - 工厂合作案例归档

## 维护规则
- 工厂评估档案按项目更新
- 新发现风险点及时补充到风险库
- 合作失败工厂进入黑名单记录
- 每季度复盘工厂交付表现