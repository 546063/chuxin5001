---
title: 银羽招生短视频剪辑SOP V1
type: sop
version: v1
status: active
created: 2026-05-18
updated: 2026-05-18
target_folder: "15-AI工作流与自动化/AI视频剪辑工作流"
tags:
  - AI视频剪辑
  - 银羽国际俱乐部
  - 羽毛球招生
  - ASS字幕
  - 口播混剪
  - B-roll
  - ClaudeCode工作流
aliases:
  - 银羽招生视频SOP
  - 羽毛球招生剪辑规范
  - 银羽视频剪辑标准
related:
  - "[[15-AI工作流与自动化]]"
  - "[[04-内容素材与创意]]"
  - "[[02-跨境社媒获客]]"
summary_cn: "本 SOP 约束银羽招生短视频的剪辑流程：只保留女孩主口播声音，按用户提供文案生成 ASS 字幕，用 1–2 秒 B-roll 快切覆盖大部分画面，并通过抽帧验收确保字幕、声音、画面、方向、嘴型同步全部合格。"
summary_en: "This SOP defines the editing workflow for YinYu badminton recruitment short videos, including clean female voiceover, strict transcript-based ASS subtitles, fast B-roll editing, and frame-level QA."
decision_value: "防止 AI 自由发挥、字幕过大、混入杂音、口播画面过多、B-roll 不足、字幕与声音不一致。"
retrieval_keywords:
  - 银羽招生
  - 羽毛球招生视频
  - ASS字幕
  - 主口播音频
  - B-roll混剪
  - 字幕字号
  - libass
  - ffmpeg
---

# 银羽招生短视频剪辑 SOP V1

## 0. 适用范围

本 SOP 用于银羽国际俱乐部羽毛球招生短视频，包括：

- 暑假班招生视频
- 少儿羽毛球培训视频
- 教练口播 + 训练 B-roll 混剪
- 家长痛点型招生短视频
- 免费试听 / 动作测评 CTA 视频

核心目标：

> 剪出一个声音干净、字幕清晰、画面节奏快、招生转化明确的 1080×1920 正向竖屏短视频。

---

## 1. 当前必须修复的问题

旧版本主要问题：

1. 字幕字号太大，像巨型全屏字幕。
2. 字幕与声音不完全一致。
3. 视频里混入男声、大姨大妈声音、现场碎片声音。
4. 女孩坐着说话画面保留太多，画面单调。
5. B-roll 不够密集，切换速度慢。
6. 嘴型同步不稳定。
7. 字体过于普通，没有短视频网感。
8. 没有固定抽帧验收，导致问题反复出现。

本 SOP 的核心修正：

> 用户文案是唯一标准；女孩主口播是唯一主音频；B-roll 全部静音；字幕必须 ASS；每次交付前必须抽帧验收。

---

## 2. 输入文件要求

### 2.1 必需输入

1. 原始视频素材目录。
2. 用户提供的完整文案。
3. 女孩主口播视频或音频。
4. 目标成片时长。
5. 如有指定平台，说明是抖音、视频号、小红书、朋友圈或 TikTok/Reels/Shorts。

### 2.2 推荐目录

```text
/Users/mac/Downloads/剪辑视频下载
```

推荐输出结构：

```text
output/
  normalized/
  audio/
    master_audio.wav
  temp/
    no_subtitle.mp4
    segments/
  subtitles/
    yingyu_v1.ass
  final/
    银羽招生短视频_v1.mp4
    v1_check_frames/
  reports/
    yingyu_v1_report.md
```

---

## 3. 素材方向修复

所有 P10049xx 系列素材必须先检查方向。

如果素材是竖屏拍摄但编码横倒，必须先统一逆时针旋转 90 度：

```bash
ffmpeg -y -i input.mp4 \
-vf "transpose=2,scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920" \
-c:v libx264 -preset veryfast -crf 20 \
-c:a aac -b:a 192k \
output/normalized/input_normalized.mp4
```

规则：

- 后续只能使用 normalized 正向素材。
- 禁止直接剪横倒素材。
- 最终必须是 1080×1920。
- 不能有黑边、空白、横倒。

---

## 4. 音频规则

## 4.1 主音频

最终视频只允许保留：

> 女孩完整口播文案对应的声音。

必须删除：

- 男声
- 大姨大妈声音
- 现场碎片声音
- B-roll 原声
- 其他人插话
- 无关环境声

### 4.2 B-roll 音频

B-roll 全部静音。

合成逻辑：

```text
最终音轨 = master_audio.wav
B-roll 音轨 = 全部静音
```

### 4.3 背景音乐和音效

可以加：

- 轻背景音乐
- 3–5 个轻量音效

但必须满足：

- 不能盖住女孩说话。
- 不能影响听清文案。
- 不要综艺化过度。
- 不要每个切点都加音效。

建议：

- 主人声：清楚、靠前。
- BGM：低音量，弱存在感。
- 音效：只用于转场、重点词、结尾 CTA。

---

## 5. 文案规则

用户提供的完整文案是唯一标准。

禁止：

- AI 自己改文案。
- AI 自己扩写文案。
- AI 自己删掉关键句。
- Whisper 识别结果替代用户文案。
- 字幕和主音频不一致。

Whisper 只能用于辅助定位时间轴。

最终字幕必须来自用户原文案。

---

## 6. 画面剪辑规则

### 6.1 视频类型

本视频类型：

> 口播 + 访谈 + B-roll 混剪

不要剪成纯口播。

### 6.2 口播画面保留

- 女孩坐着说话：最多保留 1–2 句。
- 女孩站着说话：最多保留 1 句。
- 口播画面总占比建议不超过 20%–30%。
- 嘴型不同步的位置，必须用 B-roll 覆盖。

### 6.3 B-roll 节奏

- 普通 B-roll：1.0–2.0 秒。
- 完整动作片段：最多 2.5 秒。
- 一个画面不允许长时间停住。
- 每句话尽量换一个场景或角度。
- 节奏宁可紧，不要拖。

### 6.4 文案与画面对照

| 文案关键词 | 优先画面 |
|---|---|
| 握拍 | 握拍、球拍、手部特写 |
| 打了一年羽毛球 | 孩子打球、训练画面 |
| 动作错 | 错误动作、教练纠正 |
| 越来越难改 | 重复训练、动作修正 |
| 发力不对 | 挥拍、击球、手臂动作 |
| 容易伤肩 | 肩部、挥拍发力、教练提醒 |
| 动作评估 | 教练指导、动作测评 |
| 步伐 | 脚步、跑动、场地移动 |
| 小班教学 | 多人训练、分组训练 |
| 免费试听 | 球馆、教练、孩子体验 |
| 动作测评 | 教练纠正、动作反馈 |

如果找不到完全对应素材：

1. 优先选羽毛球训练素材。
2. 其次选教练指导。
3. 再选球馆环境。
4. 不要用无关画面凑时长。

---

## 7. 字幕规则

### 7.1 字幕文件

必须生成 ASS 字幕文件。

禁止只用 SRT。

推荐文件：

```text
output/subtitles/yingyu_v1.ass
```

### 7.2 ASS 基础配置

```ass
[Script Info]
ScriptType: v4.00+
PlayResX: 1080
PlayResY: 1920
ScaledBorderAndShadow: yes

[V4+ Styles]
Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding
Style: Default,PingFang SC,40,&H00FFFFFF,&H000000FF,&H00000000,&H80000000,1,0,0,0,100,100,0,0,1,3,1,2,90,90,420,1
```

### 7.3 字号

本项目不走巨型字幕。

第一版：

- 普通字幕：Fontsize=40。
- 如果太大：Fontsize=38。
- 如果太小：Fontsize=42。
- 不要低于 34。
- 普通字幕不要高于 46。
- 重点词可临时 54–60，但不超过 1 秒。

### 7.4 字体

优先：

1. PingFang SC
2. Heiti SC
3. Source Han Sans SC
4. Noto Sans CJK SC
5. Microsoft YaHei

可做标题/重点词测试：

- 江湖体
- 金陵体
- 得意黑
- 站酷快乐体
- 站酷高端黑

但普通连续字幕不要用过于花哨的字体。

原因：

- 花哨字体长句可读性差。
- 手机端容易糊。
- 缺字体时 ffmpeg/libass 容易 fallback，导致字号和样式变化。
- 招生视频要先保证清楚，再追求网感。

### 7.5 字幕位置

默认：

- 屏幕下三分之一。
- 不贴底。
- 不遮脸。
- 不遮球拍和动作。

参数：

```text
Alignment=2
MarginL=90
MarginR=90
MarginV=420
```

调参：

- 字幕太低：MarginV=380。
- 字幕太高：MarginV=460。
- 每次只改一个参数。
- 改完必须重新抽帧。

### 7.6 字幕分行

- 每条 1–2 秒。
- 每行 10–14 个中文。
- 最多两行。
- 不要一整句话铺满屏幕。
- 不要三行字幕。
- 重点词可以单独一条。

错误示例：

```text
孩子打了一年羽毛球动作错了越来越难改
```

正确示例：

```text
孩子打了一年羽毛球
动作错了越来越难改
```

---

## 8. 重点词动画

只允许少量重点词：

- 握拍错了
- 越练越难改
- 发力不对
- 容易伤肩
- 免费试听
- 动作测评

规则：

- 每个重点词不超过 1 秒。
- 不要影响普通字幕阅读。
- 技术不稳定时，取消重点词动画。
- 不要为了特效牺牲可读性。

---

## 9. 滤镜与画面质感

建议轻量增强：

```bash
-vf "eq=brightness=0.03:contrast=1.08:saturation=1.08"
```

原则：

- 不要过曝。
- 不要重滤镜。
- 不要过度磨皮。
- 保持球馆真实感。
- 画面可以稍微明亮、清爽。

---

## 10. 合成命令

### 10.1 生成无字幕版

无字幕中间版：

```text
output/temp/yingyu_v1_no_subtitle.mp4
```

要求：

- 使用 master_audio.wav 作为唯一音轨。
- B-roll 全部静音。
- 画面为 1080×1920。
- 方向正确。

### 10.2 烧录 ASS

```bash
ffmpeg -y \
-i "output/temp/yingyu_v1_no_subtitle.mp4" \
-vf "ass=output/subtitles/yingyu_v1.ass" \
-c:v libx264 -preset veryfast -crf 20 \
-c:a aac -b:a 192k \
"output/final/银羽招生短视频_v1.mp4"
```

---

## 11. 抽帧验收

必须抽帧：

```bash
mkdir -p output/final/v1_check_frames

ffmpeg -y -ss 1  -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/001s.jpg
ffmpeg -y -ss 5  -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/005s.jpg
ffmpeg -y -ss 10 -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/010s.jpg
ffmpeg -y -ss 18 -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/018s.jpg
ffmpeg -y -ss 30 -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/030s.jpg
ffmpeg -y -ss 43 -i output/final/银羽招生短视频_v1.mp4 -frames:v 1 output/final/v1_check_frames/043s.jpg
```

检查：

- 字幕是否过大。
- 字幕是否在下三分之一。
- 字幕是否遮脸。
- 字幕是否遮动作。
- 是否正向竖屏。
- 是否有黑边。
- 是否有空白。
- 是否嘴型同步。
- 是否 B-roll 足够。
- 是否仍有男声或杂音。

---

## 12. 失败返工规则

### 12.1 字幕太大

```text
Fontsize 40 → 38
```

不要改其他参数。

### 12.2 字幕太小

```text
Fontsize 40 → 42
```

手机端复看。

### 12.3 字幕太低

```text
MarginV 420 → 380
```

### 12.4 字幕太高

```text
MarginV 420 → 460
```

### 12.5 还有男声/杂音

重新生成 master_audio.wav。

最终音轨必须只挂 master_audio.wav。

### 12.6 嘴型不同步

减少口播露脸画面，用 B-roll 覆盖。

### 12.7 画面单调

增加 B-roll，按 1–2 秒快切。

---

## 13. 最终汇报模板

每次剪完必须输出中文十点汇报：

1. Obsidian SOP 是否写入成功。
2. 最终视频路径。
3. 主音频来源。
4. 是否只保留女孩声音。
5. 是否仍有男声/杂音。
6. ASS 字幕路径。
7. 字幕字体、字号、位置参数。
8. 是否严格使用用户文案。
9. B-roll 是否达到 1–2 秒切换。
10. 是否建议人工复看发布。

---

## 14. Claude Code 执行原则

Claude Code 每次剪辑前必须先读本文档。

禁止直接自由发挥。

执行顺序：

1. 读 SOP。
2. 检查素材。
3. 修复方向。
4. 提取主音频。
5. 按文案生成时间轴。
6. 生成 ASS。
7. B-roll 混剪。
8. 合成无字幕版。
9. 烧录 ASS。
10. 抽帧验收。
11. 写报告。
