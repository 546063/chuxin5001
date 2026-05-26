---
title: 银羽招生短视频剪辑SOP V2 - 口播嘴型同步版
aliases:
  - 银羽V2嘴型同步版SOP
  - 嘴型同步剪辑规范
  - 口播嘴型同步SOP
tags:
  - #AI视频剪辑
  - #SOP
  - #银羽招生
  - 嘴型同步
  - 口播优化
type: sop
status: active
created: 2026-05-18
updated: 2026-05-21
summary_cn: V2 专注于解决嘴型与声音不同步问题，核心原则是口播露脸位置必须是嘴型准确的，嘴型不准用 B-roll 盖住。定义了绝对禁止事项（禁止把A段口播音频贴到B段口播画面上、禁止拼接多个口播片段的声音、禁止字幕时间与口播画面嘴型不匹配）和允许保留口播画面的条件。
summary_en: "V2 focuses on solving lip-sync issues: talking-head shots must have accurate lip-sync; if not accurate, cover with B-roll."
related:
  - "[[15-AI自动化工兵营/15-目录总览MOC]]"
  - "[[06-内容素材创意MOC]]"
  - "[[18-个人学习与成长/06-网上课程整理/薛辉短视频课程系统合并笔记-Obsidian]]"
retrieval_keywords:
  - 嘴型同步
  - 口播嘴型
  - 唇形同步
  - lip-sync
  - 音画同步
  - B-roll覆盖
  - 口播画面
  - 字幕对齐
  - 银羽招生
  - 短视频剪辑
decision_value: 解决口播视频中嘴型与声音错位导致的不自然感，确保露脸口播画面的嘴型100%准确。
quality_level: A
routing_target:
  - 视频剪辑
  - AI工作流
source: user
---

# 银羽招生短视频剪辑 SOP V2 — 口播嘴型同步版

## 一句话原则

> 口播露脸必须嘴型同步；嘴型不准，B-roll 覆盖。

---

## 1. 核心问题

v4 版本发现：
- 从长口播中截取片段时，容易出现嘴型和声音不对应
- 字幕时间和口播画面时间不一致
- 女孩口播画面中，声音来自 master_audio 但画面来自其他片段

**根因**：主音频被错位贴到不同画面上。

## 2. 嘴型同步原则

### 2.1 绝对禁止

- ❌ 禁止把 A 段口播音频贴到 B 段口播画面上
- ❌ 禁止拼接多个口播片段的声音
- ❌ 禁止字幕时间与口播画面嘴型不匹配
- ❌ 禁止口播画面保留但嘴型明显不对

### 2.2 允许保留口播画面的条件

必须同时满足：
1. ✅ 画面中的女孩确实在说当前字幕内容
2. ✅ 嘴型和声音完全同步
3. ✅ 该段落来自 master_audio 对应时间范围
4. ✅ 画面和音频来自同一段原始视频同一时间

### 2.3 嘴型不准时的处理

如果某句口播画面嘴型不准：
1. 该时间段**全部用 B-roll 覆盖**
2. 不保留任何口播画面
3. 字幕依然来自用户文案
4. 声音依然来自 master_audio

**宁可不露脸，不能嘴型错位。**

---

## 3. 执行流程

### Phase A：定位同步区间

1. 从 P1004913_normalized 中逐句试听
2. 标记每句话女孩**真正在说**的起止帧
3. 对比 master_audio 中对应段落
4. 生成 `lip_sync_map.json`：

```json
[
  {"text": "你家孩子握拍真的对吗？",
   "audio_start": 0.0, "audio_end": 6.0,
   "video_start": 0.0, "video_end": 6.0,
   "lip_sync": true},
  {"text": "银羽暑假班...",
   "audio_start": 26.0, "audio_end": 38.0,
   "video_start": 26.0, "video_end": 38.0,
   "lip_sync": true}
]
```

### Phase B：口播画面保留策略

只保留 `lip_sync: true` 的口播片段。

推荐保留：
- 开头 Hook（第一句）— 建立视觉信任
- 中间一句关键信任句 — 如"动作评估"
- 结尾 CTA — 如"暑假是最好的时间"

其他时间全部用 B-roll。

### Phase C：B-roll 覆盖嘴型不准区域

对于 `lip_sync: false` 或未验证的段落：
- 使用对应文案的语义 B-roll
- 完全盖住口播画面
- 观众只听到女孩声音，看不到嘴

---

## 4. 音频规则

- 唯一音轨：master_audio.wav（来自 P1004913 女孩口播）
- B-roll 全部静音（-an）
- 不得从其他素材混入任何声音
- 不得添加其他口播音频

## 5. 字幕规则

同 V1，ASS 格式，PlayResX=1080, PlayResY=1920, Fontsize=40, PingFang SC, Alignment=2, MarginV=420。

字幕时间 = master_timeline.json 时间，文字 = 用户文案。

## 6. 验收标准

1. ✅ 所有口播画面嘴型与声音同步
2. ✅ 嘴型不准区域已用 B-roll 覆盖
3. ✅ 字幕逐句对应 master_audio
4. ✅ 无男声/杂音
5. ✅ 1080×1920 正向竖屏
6. ✅ 抽帧检查字幕不遮脸
