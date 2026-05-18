---
title: "\"AI生成治理规则\""
topic: "\"个人生活与兴趣项目\""
created: "\"2026-05-14\""
updated: "2026-05-17"
type: "\"governance_rule\""
status: "\"active\""
quality_level: "\"A\""
summary_cn: "\"> 本规则约束所有 AI 生成行为，防止重复文件、内容覆盖、AI 漂移。相关文档\""
summary_en: "\"Document regarding AI生成治理规则. Reference for business and personal development.\""
one_sentence_summary: "\"# AI 生成治理规则（生成锁机制）  > 本规则约束所有 AI 生成行为，防止重复文件、内容覆盖、AI 漂移\""
decision_value: "\"高\""
review_note: "\"AI生成内容治理规则\""
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

# AI 生成治理规则（生成锁机制）

> 本规则约束所有 AI 生成行为，防止重复文件、内容覆盖、AI 漂移。

---

## 核心原则

```
if exists(target_file):
    append_or_update(target_file)
else:
    create(target_file)
```

**不覆盖、不重复、不漂移。**

---

## 一、文件生成规则

### 1.1 巡检文件

- **路径**：`Tanks/{tank_id}/Inspections/{tank_id}-巡检-{YYYY-MM-DD}.md`
- **检查**：生成前先检查该文件是否已存在
- **已存在**：追加「与上次对比」段落，更新 frontmatter
- **不存在**：创建新文件

### 1.2 AI 分析文件

- **路径**：`AI-Analysis/{tank_id}-AI初始巡检.md`（首次）或 `AI-Analysis/{tank_id}-AI巡检-{YYYY-MM-DD}.md`（后续）
- **检查**：同一 tank_id + 同一日期只生成一次
- **已存在**：不生成新文件，更新现有文件内容

### 1.3 行为分析文件

- **路径**：`AI-Analysis/Behavior/{tank_id}-视频行为分析.md`（基线）或 `AI-Analysis/Behavior/{tank_id}-行为分析-{YYYY-MM-DD}.md`
- **规则**：基线文件只创建一次；后续按日期新建

### 1.4 趋势分析文件

- **路径**：`Tanks/{tank_id}/{tank_id}-{tank_name}-趋势分析.md`
- **规则**：每个鱼缸只有一个趋势文件；新生成数据追加到文件末尾，不新建

### 1.5 日常记录（喂食/换水/参数）

- **路径**：`Tanks/{tank_id}/{category}/{tank_id}-{category_name}-{YYYY-MM-DD}.md`
- **规则**：按日期唯一；同一天同一类型只有一份文件

---

## 二、Frontmatter 强制写入

每次 AI 生成必须包含以下 frontmatter：

### 2.1 通用字段（所有文件）

```yaml
type: <文件类型>
tank_id: <T01/T02/...>
tank_name: <鱼缸名称>
date: YYYY-MM-DD          # 或 inspection_date / analysis_date
project: 18-AI水族系统
tags: [<标签>]
created: YYYY-MM-DD
updated: YYYY-MM-DD
related:
  - "[[相关档案]]"
```

### 2.2 巡检文件额外字段

```yaml
health_score: <0-100>
risk_level: <low/medium/high/critical>
ecosystem_stability: <0-100>
algae_trend: <stable/increasing/decreasing/low-moderate>
source: <ai_vision_analysis / manual>
```

### 2.3 AI 分析文件额外字段

```yaml
health_score: <0-100>
risk_level: <low/medium/high/critical>
ecosystem_stability: <0-100>
analysis_date: YYYY-MM-DD
```

### 2.4 换水记录额外字段

```yaml
water_change_ratio: <百分比>
water_change_volume: <升数>
water_change_method: <方式>
```

---

## 三、禁止行为

### 3.1 禁止覆盖

- **绝对不覆盖**已有的巡检、行为、趋势文件
- 更新方式：追加到文件末尾或更新 frontmatter 值

### 3.2 禁止重复

- 生成前必须 `find` 或 `grep` 检查目标文件
- 同一 `tank_id` + 同一日期 + 同一类型 = 同一文件

### 3.3 禁止漂移

- 不修改已有的 frontmatter 历史值
- 不改变已有文件命名规范
- 不使用与现有规范不一致的字段名

### 3.4 禁止字符串伪 wikilink

- `related` 字段中不使用引号包裹 wikilink 以外的内容
- 不使用 `["[[xxx]]"]` 格式，使用 `- "[[xxx]]"`

---

## 四、生成流程

```
1. 确定 tank_id、文件类型、日期
2. 检查目标文件是否存在
3. 如果存在：
   a. 读取当前内容
   b. 追加/更新相关段落
   c. 更新 frontmatter 的 updated 字段
4. 如果不存在：
   a. 按照模板创建新文件
   b. 写入完整 frontmatter
   c. 建立 related 链接
5. 验证：frontmatter 完整、wikilink 有效、无重复
```

---

## 五、趋势分析维护

- 趋势文件只维护一个，不创建多个版本
- 每次新巡检数据产生后，追加到趋势文件的「最新数据」段落
- 保留历史数据表格，不删除
- 当数据点 < 3 时，标注「数据不足，趋势不显著」

---

## 六、AI 巡检自动化清单

每次 AI 巡检应输出：

1. **巡检文件**：`Tanks/{tank}/Inspections/{tank}-巡检-{date}.md`
2. **更新档案**：更新 tank_profile 的 `health_score`、`risk_level`、`updated`
3. **更新趋势**：追加到 `{tank}-趋势分析.md`
4. **更新 Dashboard**：无需手动操作（Dataview 自动读取）

---

## 关联

- [[Dashboard]] — 数据消费端
- [[README]] — 系统说明
- [[Template-AI巡检日志]] — 巡检模板
