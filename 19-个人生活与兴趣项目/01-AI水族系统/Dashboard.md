---
title: Dashboard
aliases:
  - 水族系统总控中心
  - Aquarium OS Dashboard
  - 鱼缸状态总览
  - 水族仪表盘
tags:
  - #AI水族系统
  - #鱼缸管理
  - Dashboard
  - 总控中心
  - 状态监控
type: note
status: draft
created: 2026-05-14
updated: 2026-05-21
summary_cn: Aquarium OS 总控中心，聚合鱼缸状态、巡检记录、风险提醒、待办事项。是日常水族维护的主入口，用于快速了解全系统状态。通过Dataview查询展示各鱼缸的健康评分、生态稳定度、风险等级和重点关注项。
summary_en: "Aquarium OS dashboard aggregating tank status, inspection records, risk alerts, and todos as the main entry point for daily aquarium maintenance."
related:
  - "[[19-个人生活与兴趣项目/鱼缸项目MOC]]"
  - "[[19-个人生活与兴趣项目/鱼缸项目路由]]"
  - "[[19-个人生活与兴趣项目/鱼缸异常处理SOP]]"
retrieval_keywords:
  - 水族系统总控
  - 鱼缸Dashboard
  - 健康评分
  - 生态稳定度
  - 风险等级
  - 巡检记录
  - Dataview查询
  - 水族仪表盘
  - 状态监控
decision_value: 作为AI水族系统的日常主入口，快速了解全系统状态和风险提醒。
quality_level: B
routing_target:
  - 生活项目
source: user
---

#  Aquarium OS 总控中心

> 南美生态 AI 水族操作系统 — 长期生态观察与风险预警

---

##  鱼缸状态总览

```dataview
TABLE WITHOUT ID
  file.link as "鱼缸",
  health_score as "健康评分",
  ecosystem_stability as "生态稳定度",
  risk_level as "风险等级",
  status as "状态",
  focus_target as "重点关注"
FROM "01-AI水族系统/Tanks"
WHERE type = "tank_profile"
SORT tank_id ASC
```

##  最近巡检

```dataview
TABLE WITHOUT ID
  file.link as "巡检",
  inspection_date as "日期",
  health_score as "评分",
  risk_level as "风险",
  source as "来源"
FROM "01-AI水族系统/Tanks"
WHERE type = "ai_inspection"
SORT inspection_date DESC
LIMIT 10
```

##  风险提醒

```dataview
TABLE WITHOUT ID
  file.link as "记录",
  risk_level as "风险",
  inspection_date as "日期"
FROM "01-AI水族系统/Tanks"
WHERE risk_level = "high" OR risk_level = "critical"
SORT inspection_date DESC
LIMIT 10
```

##  待换水提醒

```dataview
TABLE WITHOUT ID
  file.link as "鱼缸",
  (date(today) - date(updated)) as "距上次更新（天）"
FROM "01-AI水族系统/Tanks"
WHERE type = "tank_profile"
AND (date(today) - date(updated)) >= 3
SORT (date(today) - date(updated)) DESC
```

##  异常行为记录

```dataview
TABLE WITHOUT ID
  file.link as "记录",
  file.name as "事件",
  date as "日期"
FROM "01-AI水族系统/Tanks"
WHERE type = "behavior_record"
SORT date DESC
LIMIT 10
```

##  爆藻趋势

```dataview
TABLE WITHOUT ID
  file.link as "巡检",
  inspection_date as "日期",
  algae_trend as "藻类趋势"
FROM "01-AI水族系统/Tanks"
WHERE type = "ai_inspection"
AND algae_trend != null
SORT inspection_date DESC
LIMIT 10
```

##  健康评分变化

```dataview
TABLE WITHOUT ID
  file.link as "巡检",
  inspection_date as "日期",
  health_score as "评分"
FROM "01-AI水族系统/Tanks"
WHERE type = "ai_inspection"
SORT inspection_date DESC
LIMIT 15
```

##  最近新增鱼只

```dataview
TABLE WITHOUT ID
  file.link as "事件",
  date as "日期"
FROM "01-AI水族系统/Timeline"
WHERE contains(file.name, "入鱼") OR contains(file.name, "新鱼")
SORT date DESC
LIMIT 10
```

##  最近换水记录

```dataview
TABLE WITHOUT ID
  file.link as "记录",
  water_change_ratio as "比例",
  water_change_volume as "水量",
  date as "日期"
FROM "01-AI水族系统/Tanks"
WHERE type = "water_change"
SORT date DESC
LIMIT 10
```

##  AI 风险预警

```dataview
TABLE WITHOUT ID
  file.link as "分析",
  risk_level as "风险",
  analysis_date as "日期"
FROM "01-AI水族系统/AI-Analysis"
WHERE risk_level != null
SORT analysis_date DESC
LIMIT 10
```

##  当前重点观察鱼

```dataview
TABLE WITHOUT ID
  file.link as "鱼缸",
  focus_target as "观察对象"
FROM "01-AI水族系统/Tanks"
WHERE type = "tank_profile"
AND focus_target != null
```

---

##  快速导航

- [[MOC]] — 知识图谱入口
- [[T01-关刀流域缸-档案]]
- [[T02-神仙雨林缸-档案]]
- [[AI长期趋势总览]]
- [[2026-05-14-首次建档]]

##  知识库

- [[MOC-鱼病总览]]
- [[MOC-鱼种总览]]
- [[MOC-水草总览]]
- [[MOC-过滤系统总览]]
- [[MOC-开缸总览]]

---

>  最后更新：2026-05-14
> 下次巡检：2026-05-17
