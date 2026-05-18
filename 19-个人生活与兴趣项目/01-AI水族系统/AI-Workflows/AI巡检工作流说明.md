---
title: "\"AI巡检工作流说明\""
topic: "\"个人生活与兴趣项目\""
created: "\"2026-05-14\""
updated: "2026-05-17"
type: "\"ai_workflow\""
status: "\"active\""
quality_level: "\"A\""
summary_cn: "\"用户上传素材 → AI 分析 → 自动生成巡检日志 → 更新趋势 → 更新 Dashboard相关文档\""
summary_en: "\"Document regarding AI巡检工作流说明. Reference for business and personal development.\""
one_sentence_summary: "\"# AI巡检工作流说明  > 水族系统 AI 自动化工作流程  ---  ## 工作流概述  用户上传素材 → AI 分...\""
decision_value: "\"高\""
review_note: "\"AI水族系统工作流与巡检分析\""
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
  - [[16-学习成长蒸馏MOC]]
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

# AI巡检工作流说明

> 水族系统 AI 自动化工作流程

---

## 工作流概述

用户上传素材 → AI 分析 → 自动生成巡检日志 → 更新趋势 → 更新 Dashboard

## 触发方式

### 1. 素材上传触发

用户上传以下素材后，Claude Code 自动执行分析：

- **鱼缸视频** → 行为分析 + 视觉分析
- **鱼缸照片** → 视觉分析 + 状态评估
- **当前状态描述** → 文本分析 + 风险评估

### 2. 定期巡检触发

每 3 天自动执行一次完整巡检：

- 健康评分更新
- 生态稳定度评估
- 风险等级判断
- 与上次对比

## 分析流程

### Step 1: 素材分类

- 判断素材属于哪个鱼缸（T01/T02）
- 按缸号归档到 `~/Aquarium-Assets/TXX/YYYY-MM/`
- 记录素材元信息

### Step 2: AI 视觉分析

#### 图片分析
- 鱼只状态（体表、鳍部、体色）
- 水体分析（透明度、颜色、悬浮物）
- 藻类趋势（类型、分布、严重程度）
- 设备状态（过滤、加热、灯具）
- 行为观察（活动区域、应激信号）

#### 视频分析
- 行为模式识别
- 地盘行为
- 群游状态
- 攻击性评估
- 应激反应

### Step 3: 生成巡检日志

自动创建/更新：
- `Tanks/TXX/Inspections/TXX-巡检-YYYY-MM-DD.md`
- `AI-Analysis/TXX-AI初始巡检.md`（首次）
- `AI-Analysis/Behavior/TXX-视频行为分析.md`

### Step 4: 更新趋势分析

- 更新健康评分趋势
- 更新生态稳定度趋势
- 记录风险变化

### Step 5: 更新 Dashboard

- 更新风险提醒
- 更新最近巡检
- 更新异常记录

## 输出格式

所有输出遵循：
- frontmatter 标准字段
- tags 分类
- [[双链]] 关联
- Dataview 兼容

## 关联笔记

[[Dashboard]]
[[照片分析提示词]]
[[视频分析提示词]]
[[趋势分析提示词]]
