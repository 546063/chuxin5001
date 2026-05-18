---
title: "\"README\""
topic: "\"个人生活与兴趣项目\""
created: "\"unknown\""
updated: "2026-05-17"
type: "\"research_note\""
status: "\"active\""
quality_level: "\"B\""
summary_cn: "\"# 🐟 南美生态 AI 水族操作系统（Aquarium OS）相关文档\""
summary_en: "\"Document regarding README. Reference for business and personal development.\""
one_sentence_summary: "\"# 🐟 南美生态 AI 水族操作系统（Aquarium OS）  > 基于 Obsidian 的 AI 驱动南美生态水族...\""
decision_value: "\"个人生活兴趣参考\""
review_note: "\"一般参考\""
category: "\"个人生活与兴趣项目\""
platform: "[]"
industry: "[]"
scenario: "[]"
source_files: "[]"
merged_from: "[]"
old_versions: "[]"
archived_reason: "[]"
relations: "[]"
related:
  - [[01-全库工作总览MOC]]
retrieval_keywords:
  - 水族系统维护
  - 热带鱼水族箱管理
  - AI水族巡检分析
  - 观赏鱼养殖经验
  - 水族箱过滤系统
routing_target:
  - "[[鱼缸项目路由]]"
  - "[[鱼缸项目MOC]]"
project_route:
  - "fish_tank"

---
# 🐟 南美生态 AI 水族操作系统（Aquarium OS）

> 基于 Obsidian 的 AI 驱动南美生态水族管理系统

---

## 概述

Aquarium OS 是一个 **AI 生态观察系统**，专注于南美流域生态缸的长期生态监测、行为学分析和风险预警。

系统通过 AI 视觉分析 + 知识图谱 + 自动巡检，实现：
- 📸 图片/视频自动分析 → 鱼只状态、水质风险、疾病风险、爆藻风险
-  每 3 天自动 AI 巡检 → 健康评分、生态稳定度、风险等级
- 📈 长期趋势分析 → 水体波动、行为变化、藻类趋势
- ⚠️ 自动风险预警 → 高风险提醒、异常行为告警
-  知识图谱 → 鱼病百科、鱼种兼容性、水草资料、过滤系统、开缸知识

## 系统定位

**不是**简单的养鱼记录工具。

**而是** AI 驱动的南美生态长期观察系统，核心关注：
- 长期生态稳定
- 行为学分析（地盘行为、群游状态、应激反应）
- 风险预测与预警
- 水质稳定性监控

## 目录结构

```
18-AI水族系统/
── README.md                    # 本文件
├── MOC.md                       # 知识图谱入口
├── Dashboard.md                  # 动态总控面板
├── Templates/                    # 所有模板
├── Tanks/                        # 鱼缸运营数据
│   ├── T01-关刀流域缸/
│   └── T02-神仙雨林缸/
├── Knowledge/                    # 共享知识库
├── AI-Analysis/                  # AI 分析输出
├── AI-Workflows/                 # AI 自动化提示词
└── Timeline/                     # 重大事件时间线
```

外部媒体库：`~/Aquarium-Assets/`

## 工作流

### 日常操作

1. **上传图片/视频**：将素材放入 `~/Aquarium-Assets/TXX/YYYY-MM/`
2. **触发 AI 分析**：在 Obsidian 中请求 Claude Code 分析素材
3. **自动归档**：AI 分析结果存入 `AI-Analysis/`
4. **自动巡检**：AI 生成巡检日志，更新趋势分析
5. **查看 Dashboard**：所有数据汇总到总控中心

### 每 3 天巡检

```
Day 0 → Day 3 → Day 6 → Day 9 → ...
```

每次巡检包含：
- 健康评分更新
- 生态稳定度评估
- 风险等级判断
- 行为分析
- 与上次对比

### 新鱼缸接入

1. 复制 `Tanks/T01-关刀流域缸/` → `Tanks/T03-XXX/`
2. 复制 `~/Aquarium-Assets/T01/` → `~/Aquarium-Assets/T03/`
3. 修改档案中的 `tank_id` 和 `tank_name`
4. 在 Dashboard 中 Dataview 自动识别

## 核心指标

| 指标 | 范围 | 说明 |
|------|------|------|
| health_score | 0-100 | 综合健康评分 |
| ecosystem_stability | 0-100 | 长期生态稳定度 |
| risk_level | low/medium/high/critical | 风险等级 |

## 命名规范

- 目录：`T01-关刀流域缸`（编号+描述）
- 文件：`T01-巡检-2026-05-14.md`
- 资产：`~/Aquarium-Assets/T01/2026-05/`

## 依赖

- **Obsidian**：笔记系统
- **Dataview 插件**：Dashboard 动态查询
- **Claude Code**：AI 分析引擎

## 关联项目

- [[00_总入口]] — 个人管理项目系列（17-个人财务与账单分析）
