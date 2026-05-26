---
title: 银羽招生短视频剪辑SOP V4 - 三版本批量出片版
aliases:
  - 银羽V4批量出片版SOP
  - 三版本批量剪辑SOP
  - 多版本出片规范
tags:
  - #AI视频剪辑
  - #SOP
  - #银羽招生
  - 批量出片
  - 多版本
type: sop
status: active
created: 2026-05-18
updated: 2026-05-21
summary_cn: V4 定义三版本批量出片流程：同批素材一次输出嘴型同步版、B-roll 强化版、发布推荐版，每个版本独立抽帧验收和报告，最后推荐最佳版本。三版本分别为V5嘴型同步版（口播25-30%）、V6 B-roll强化版（口播≤15%）、V7发布推荐版（口播20%）。
summary_en: "V4 defines a three-version batch output workflow: same materials produce lip-sync version, B-roll enhanced version, and publish-recommended version simultaneously, each with independent QA."
related:
  - "[[15-AI自动化工兵营/15-目录总览MOC]]"
  - "[[06-内容素材创意MOC]]"
  - "[[18-个人学习与成长/06-网上课程整理/薛辉短视频课程系统合并笔记-Obsidian]]"
retrieval_keywords:
  - 批量出片
  - 多版本剪辑
  - 三版本对比
  - 嘴型同步版
  - B-roll强化版
  - 发布推荐版
  - 抽帧验收
  - 版本选择
  - 银羽招生
  - 短视频批量
decision_value: 提高出片效率，一次生成多版本供选择，避免反复单次剪辑，最后推荐最佳版本发布。
quality_level: A
routing_target:
  - 视频剪辑
  - AI工作流
source: user
---

# 银羽招生短视频剪辑 SOP V4 — 三版本批量出片版

## 一句话原则

> 同批素材一次出 3 个版本，每版独立验收，最后推荐发布。

---

## 1. 三版本定义

| 版本 | 名称 | 核心目标 | 口播占比 | B-roll 节奏 |
|---|---|---|---|---|
| V5 | 嘴型同步版 | 嘴型 100% 同步 | 25-30% | 2-3 秒一切 |
| V6 | B-roll 强化版 | 快节奏招生感 | ≤15% | 1.0-2.0 秒一切 |
| V7 | 发布推荐版 | 综合平衡 | 20% | 混合 1.5-2.5 秒 |

## 2. 三版本差异

### V5 嘴型同步版
- **重点**：所有口播画面嘴型必须同步
- **口播**：开头 Hook + 中间信任 + 结尾 CTA
- **B-roll**：嘴型不准处全部覆盖
- **风格**：更自然，口播稍多
- **适合**：需要强信任感的场景

### V6 B-roll 强化版
- **重点**：画面丰富、快节奏、像招生广告
- **口播**：仅开头 1 句 + 结尾 1 句
- **B-roll**：占 85%+，1-2 秒一切
- **风格**：更像抖音/视频号
- **适合**：社媒投放、信息流

### V7 发布推荐版
- **重点**：V5 和 V6 的综合
- **口播**：关键 3 句（Hook / 信任 / CTA）
- **B-roll**：其余覆盖，节奏适中
- **风格**：平衡自然感和快节奏
- **适合**：正式发布首选

## 3. 统一约束

所有 3 个版本必须遵守：

### 3.1 画面
- 1080×1920（9:16 竖屏）
- 方向正向
- 无黑边/空白/卡顿
- 所有素材先 normalized

### 3.2 音频
- 唯一音轨 = master_audio.wav
- B-roll 全部静音（-an）
- 不混入男声/杂音

### 3.3 字幕
- ASS 格式（V4.00+）
- PlayResX: 1080, PlayResY: 1920
- Fontname: PingFang SC
- Fontsize: 40（可调 38-42）
- Alignment: 2
- MarginL: 90, MarginR: 90, MarginV: 420
- Outline: 3, Shadow: 1
- 每行 10-14 中文，最多两行
- 文字 = 用户文案（非 Whisper）

### 3.4 B-roll
- 按 transcript 关键词语义匹配
- 每 1-2 秒切换
- 全部静音

## 4. 批量执行流程

### Step 1：准备（所有版本共用）
- 方向修复 normalized
- master_audio.wav 提取
- master_timeline.json 生成
- B-roll 规格统一

### Step 2：V5 嘴型同步版
- 口播画面：仅嘴型同步段
- 生成 ASS → 烧录 → 抽帧 → 报告

### Step 3：V6 B-roll 强化版
- 口播画面：仅 1-2 句
- B-roll 密集快切
- 生成 ASS → 烧录 → 抽帧 → 报告

### Step 4：V7 发布推荐版
- 综合 V5/V6 策略
- Hook + 信任 + CTA 口播
- 其余 B-roll 覆盖
- 生成 ASS → 烧录 → 抽帧 → 报告

### Step 5：总报告
- 三版本对比
- 推荐发布版本
- 下一步优化建议

## 5. 抽帧验收

每个版本独立抽帧：
- 1s, 5s, 10s, 18s, 30s, 43s, 最后前 3 秒

检查项：
1. 字幕大小适中
2. 字幕不遮脸/不遮动作
3. 字幕在下三分之一，底部有安全区
4. 正向竖屏
5. 无黑边/空白
6. 画面不卡顿
7. B-roll 足够
8. 嘴型同步（V5 重点）
9. 无男声/杂音
10. 节奏合理

## 6. 输出命名

```
output/final/银羽暑假班_招生短视频_v5_lipsync.mp4
output/final/银羽暑假班_招生短视频_v6_broll.mp4
output/final/银羽暑假班_招生短视频_v7_publish.mp4

output/subtitles/v5_lipsync.ass
output/subtitles/v6_broll.ass
output/subtitles/v7_publish.ass

output/reports/v5_lipsync_report.md
output/reports/v6_broll_report.md
output/reports/v7_publish_report.md

output/reports/银羽招生短视频_多版本剪辑总报告.md
```

## 7. 推荐发布标准

满足以下条件优先推荐：
1. 口播嘴型同步率 > 90%
2. B-roll 覆盖率 70-85%
3. 节奏流畅，无明显卡顿
4. 字幕清晰可读
5. 开头 3 秒有 Hook
6. 结尾有明确 CTA
7. 时长跟随口播自然决定

如果都不满足，说明返工点。
