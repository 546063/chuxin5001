---
title: OpenZB 银羽视频剪辑执行文档 V1
type: workflow
version: v1
status: active
created: 2026-05-18
updated: 2026-05-18
target_folder: "15-AI工作流与自动化/AI视频剪辑工作流"
tags:
  - OpenZB
  - OpenClaw
  - ClaudeCode
  - AI视频剪辑
  - 工作流编排
  - 银羽招生视频
aliases:
  - OpenZB视频剪辑工作流
  - 银羽OpenZB执行文档
  - 视频剪辑自动化编排
related:
  - "[[银羽招生短视频剪辑SOP V1]]"
  - "[[15-AI工作流与自动化]]"
  - "[[04-内容素材与创意]]"
summary_cn: "本文件用于约束 OpenZB / OpenClaw / Claude Code 在银羽招生视频剪辑中的分工：OpenZB 负责流程编排与任务状态，Claude Code 负责本地素材处理、ffmpeg、ASS字幕、抽帧验收，最终输出视频和报告。"
summary_en: "This workflow defines how OpenZB, OpenClaw, and Claude Code coordinate the YinYu recruitment video editing pipeline."
decision_value: "用于把视频剪辑从一次性手工任务沉淀成可复用、可检查、可复盘的自动化执行链。"
retrieval_keywords:
  - OpenZB
  - OpenClaw
  - Claude Code
  - 视频剪辑自动化
  - ASS字幕
  - ffmpeg
  - 银羽招生视频
---

# OpenZB 银羽视频剪辑执行文档 V1

## 0. 文档定位

本文件不是剪辑审美说明，而是执行编排文档。

目标：

> 让 OpenZB / OpenClaw / Claude Code 后续剪辑银羽招生视频时，不再靠临时口头指令，而是按固定工作流执行、验收、汇报。

当前推荐分工：

| 模块 | 职责 |
|---|---|
| OpenZB | 任务编排、状态管理、触发执行、保存结果 |
| Claude Code | 本地素材处理、ffmpeg、ASS字幕、视频合成、抽帧验收 |
| OpenClaw | 可选：素材检索、文案辅助、发布前检查、批量任务调度 |
| Obsidian | 长期保存 SOP、报告、复盘和版本记录 |

---

## 1. 标准目录

Obsidian 主库：

```text
/Users/mac/ai-workspaces/AI-Workspace-Obsidian
```

15 号目录：

```text
15-AI工作流与自动化
```

视频工作流目录：

```text
/Users/mac/ai-workspaces/AI-Workspace-Obsidian/15-AI工作流与自动化/AI视频剪辑工作流
```

当前文件建议保存为：

```text
OpenZB_银羽视频剪辑执行文档_V1.md
```

配套 SOP 文件：

```text
银羽招生短视频剪辑SOP_V1.md
```

---

## 2. OpenZB 任务输入格式

以后每次发起剪辑任务，建议使用下面结构：

```yaml
task_name: 银羽招生短视频剪辑
task_version: v1
project: 银羽国际俱乐部
video_type: 口播访谈混剪招生视频
input_material_dir: /Users/mac/Downloads/剪辑视频下载
output_dir: /Users/mac/Downloads/剪辑视频下载/output
obsidian_sop:
  - /Users/mac/ai-workspaces/AI-Workspace-Obsidian/15-AI工作流与自动化/AI视频剪辑工作流/银羽招生短视频剪辑SOP_V1.md
target_resolution: 1080x1920
subtitle_format: ASS
main_audio_rule: 只保留女孩主口播声音
broll_rule: B-roll 全部静音，1.0-2.0 秒快切
acceptance_required: true
```

---

## 3. OpenZB 执行阶段

### Phase 0：读取 SOP

OpenZB 必须先让执行器读取：

```text
银羽招生短视频剪辑SOP_V1.md
```

不读取 SOP，不允许直接剪辑。

### Phase 1：素材扫描

检查：

- 原始素材数量
- 是否存在 P10049xx 系列
- 是否存在横倒素材
- 是否存在女孩主口播素材
- 是否已有 output 目录
- 是否已有旧版本视频
- 是否已有字幕文件

输出：

```text
output/reports/material_scan_report.md
```

### Phase 2：方向修复

如果 P10049xx 系列横倒：

```bash
ffmpeg -y -i input.mp4 \
-vf "transpose=2,scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920" \
-c:v libx264 -preset veryfast -crf 20 \
-c:a aac -b:a 192k \
output/normalized/input_normalized.mp4
```

要求：

- 所有后续剪辑都使用 normalized 文件。
- 输出必须 1080×1920。
- 不允许黑边。
- 不允许横倒。

### Phase 3：主口播音频提取

生成：

```text
output/audio/master_audio.wav
```

要求：

- 只保留女孩完整文案口播。
- 删除男声。
- 删除大姨大妈声音。
- 删除其他素材原声。
- 不得拼入无关现场声。

### Phase 4：字幕时间轴

输入：

- 用户完整文案
- master_audio.wav

输出：

```text
output/subtitles/yingyu_v1.ass
```

规则：

- 文案必须来自用户提供原文。
- Whisper 只能辅助定位，不得改写文案。
- 每条字幕 1–2 秒。
- 每行 10–14 个中文。
- 最多两行。

### Phase 5：B-roll 选择

按文案关键词选择画面：

| 关键词 | 画面 |
|---|---|
| 握拍 | 手部、球拍 |
| 动作错 | 训练动作、纠正 |
| 发力 | 挥拍、击球 |
| 伤肩 | 肩部、发力动作 |
| 步伐 | 跑动、脚步 |
| 小班教学 | 多人训练 |
| 免费试听 | 球馆、教练、孩子体验 |
| 动作测评 | 教练指导 |

要求：

- 每 1–2 秒切画面。
- 少数完整动作最多 2.5 秒。
- B-roll 全部静音。
- 口播露脸只保留 1–2 句。
- 嘴型不同步处用 B-roll 覆盖。

### Phase 6：生成无字幕版

输出：

```text
output/temp/yingyu_v1_no_subtitle.mp4
```

要求：

- 1080×1920。
- 画面正向。
- 使用 master_audio.wav 作为唯一音轨。
- B-roll 不带原声。

### Phase 7：烧录 ASS

```bash
ffmpeg -y \
-i "output/temp/yingyu_v1_no_subtitle.mp4" \
-vf "ass=output/subtitles/yingyu_v1.ass" \
-c:v libx264 -preset veryfast -crf 20 \
-c:a aac -b:a 192k \
"output/final/银羽招生短视频_v1.mp4"
```

### Phase 8：抽帧验收

抽帧：

- 1s
- 5s
- 10s
- 18s
- 30s
- 43s
- 最后前 3 秒

保存：

```text
output/final/v1_check_frames/
```

检查：

- 字幕是否过大。
- 字幕是否太低或太高。
- 是否遮脸。
- 是否遮动作。
- 是否还有男声。
- 是否有空白。
- 是否嘴型同步。
- 是否 B-roll 足够。
- 是否正向竖屏。

### Phase 9：输出报告

输出：

```text
output/reports/yingyu_v1_report.md
```

报告必须包含：

1. SOP 是否读取。
2. Obsidian 文件路径。
3. 最终视频路径。
4. 主音频来源。
5. 是否只保留女孩声音。
6. 是否仍有男声/杂音。
7. ASS 字幕路径。
8. 字幕字体、字号、位置。
9. B-roll 切换节奏。
10. 是否建议人工复看发布。

---

## 4. 字幕标准

ASS 样式：

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

调参规则：

| 问题 | 调整 |
|---|---|
| 字幕太大 | Fontsize 40 → 38 |
| 字幕太小 | Fontsize 40 → 42 |
| 字幕太低 | MarginV 420 → 380 |
| 字幕太高 | MarginV 420 → 460 |
| 字幕遮脸 | 优先调整 MarginV，不改文案 |
| 字幕太长 | 拆成两条，不超过两行 |

---

## 5. OpenZB 状态机

建议 OpenZB 记录以下状态：

```yaml
states:
  - pending
  - sop_loaded
  - material_scanned
  - normalized
  - audio_extracted
  - subtitles_generated
  - broll_selected
  - no_subtitle_rendered
  - subtitles_burned
  - frames_checked
  - report_written
  - done
  - failed
```

失败时必须记录：

```yaml
failure_report:
  phase: ""
  error: ""
  suggested_fix: ""
  retry_allowed: true
```

---

## 6. 质量门槛

任何一个条件不满足，都不能标记 done：

- 没有读取 SOP。
- 没有生成 ASS。
- 没有抽帧。
- 最终视频不是 1080×1920。
- 视频横倒。
- 还有男声或杂音。
- 字幕明显过大。
- 字幕和声音不一致。
- B-roll 原声混入。
- 女孩坐着说话占比过高。
- 没有最终报告。

---

## 7. Claude Code 投喂提示词模板

```text
你现在按 OpenZB 银羽视频剪辑执行文档 V1 执行。

先读取：
/Users/mac/ai-workspaces/AI-Workspace-Obsidian/15-AI工作流与自动化/AI视频剪辑工作流/OpenZB_银羽视频剪辑执行文档_V1.md

再读取：
/Users/mac/ai-workspaces/AI-Workspace-Obsidian/15-AI工作流与自动化/AI视频剪辑工作流/银羽招生短视频剪辑SOP_V1.md

素材目录：
/Users/mac/Downloads/剪辑视频下载

目标：
重新生成银羽招生短视频 v1，必须 1080×1920 正向竖屏，必须只保留女孩主口播声音，必须生成 ASS 字幕并烧录，必须抽帧验收，必须写报告。

执行阶段：
Phase 0 读取 SOP
Phase 1 素材扫描
Phase 2 素材方向修复
Phase 3 提取 master_audio.wav
Phase 4 生成 ASS 字幕
Phase 5 选择 B-roll
Phase 6 合成无字幕版
Phase 7 烧录 ASS
Phase 8 抽帧验收
Phase 9 写最终报告

最后只用中文十点汇报。
```

---

## 8. 后续复盘规则

每次剪完后，把报告同步保存到 Obsidian：

```text
15-AI工作流与自动化/AI视频剪辑工作流/剪辑复盘/
```

建议文件名：

```text
银羽招生短视频_v1_剪辑复盘_YYYYMMDD.md
```

复盘内容：

1. 哪些素材最好用。
2. 哪些镜头方向有问题。
3. 哪些口播段嘴型同步。
4. 哪些 B-roll 与文案匹配。
5. 字幕字号是否合适。
6. 下次是否需要改 SOP。
7. 是否适合发布。
8. 是否需要二剪。
