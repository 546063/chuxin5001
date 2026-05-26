---
title: 银羽招生短视频剪辑SOP V1
aliases:
  - 银羽视频剪辑规范
  - 羽毛球招生视频SOP
  - 银羽V1 SOP
tags:
  - #AI视频剪辑
  - #SOP
  - #银羽招生
  - AI剪辑
  - 短视频工作流
  - 羽毛球招生
  - ASS字幕
  - 口播混剪
type: sop
status: active
created: 2026-05-18
updated: 2026-05-21
summary_cn: 本 SOP 用于银羽羽毛球招生类短视频剪辑，核心原则是先锁定主口播音频与嘴型同步，再根据完整文案插入 B-roll，所有字幕必须由最终主音频时间轴生成，避免嘴型、声音、字幕三者错位。包含绝对禁止事项（禁止拼接多个有声素材、禁止保留男声、禁止先拼B-roll再找声音等）和固定流程（方向质检、主音频锁定、文案对齐、ASS字幕生成、B-roll覆盖）。
summary_en: "This SOP defines the editing workflow for Yinyu badminton recruitment videos: lock the main talking-head audio/lip-sync first, overlay B-roll without changing the main audio timeline, and generate ASS subtitles strictly from the final main-audio timeline."
related:
  - "[[15-AI自动化工兵营/15-目录总览MOC]]"
  - "[[00-总指挥部/03-MOC/06-内容素材创意MOC]]"
  - "[[18-个人学习与成长/06-网上课程整理/薛辉短视频课程系统合并笔记-Obsidian]]"
retrieval_keywords:
  - 银羽招生
  - 羽毛球招生视频
  - ASS字幕
  - 主口播音频
  - B-roll混剪
  - 字幕字号
  - libass
  - ffmpeg
  - 嘴型同步
  - 口播混剪
  - 短视频剪辑
decision_value: 避免 AI 自动剪辑出现声音错乱、男声残留、字幕错位、画面空白、方向错误和口播嘴型不同步。
quality_level: A
routing_target:
  - 视频剪辑
  - AI工作流
source: user
---

# 银羽招生短视频剪辑 SOP V1

## 一句话原则

先锁定主口播音频和嘴型同步，再用 B-roll 覆盖画面；字幕必须和最终主音频逐句一致。

## 1. 绝对禁止

- 禁止直接拼接多个有声素材。
- 禁止保留男声、家长声、环境碎片人声。
- 禁止为了凑时长拉长无意义画面。
- 禁止先拼 B-roll 再找声音。
- 禁止字幕根据旧 SRT 或旧剪辑时间轴生成。
- 禁止嘴型口播画面和声音错位。
- 禁止直接使用原始横倒素材剪辑。

## 2. 固定流程

### Phase 0：方向质检

所有素材先检查方向。
如果 P10049xx 素材横倒，先逆时针旋转 90 度：

ffmpeg -vf "transpose=2"

输出到：

output/normalized/

后续只允许使用 normalized 素材。

### Phase 1：锁定主口播音频

主音频只允许来自 P1004913 中女孩完整口播。
如果 P1004913 里面原本嘴型和声音是同步的，则必须保留主视频中对应口播片段的原始同步关系。
不得把主音频重新错位贴到其他口播画面上。

正确做法：
1. 从 P1004913 中找出女孩完整口播时间段。
2. 以这段口播为主时间轴。
3. 先做 audio edit，只删明显空白，不破坏句子。
4. 生成 master_audio.wav。
5. 生成 master_timeline.json，记录每句话开始/结束时间。
6. 所有字幕以 master_timeline.json 为准。

### Phase 2：口播画面保留规则

如果画面中女孩正在说这句话，而且嘴型和声音同步，可以保留。
如果嘴型不同步，不允许使用该口播画面。
口播画面只保留关键句，不超过总时长 25%。

建议保留：
- 开头 Hook 一句
- 中间信任感一句
- 结尾 CTA 一句

其余时间用 B-roll 覆盖，但不能改变主音频。

### Phase 3：B-roll 插入规则

B-roll 只作为画面，不保留声音。
所有 B-roll 必须静音：

-an

或：

volume=0

B-roll 根据文案语义匹配：
- 握拍 → 手部/球拍/握拍特写
- 打球 → 孩子训练/击球
- 动作错 → 挥拍动作/训练动作
- 发力 → 挥拍/击球/手臂动作
- 伤肩 → 肩膀/挥拍/动作变形感
- 动作评估 → 教练指导/观察动作
- 步伐 → 脚步移动/跑动
- 小班教学 → 多人训练/教练带练
- 免费试听/动作测评 → 教练、球馆、报名氛围

每句话至少换一个画面或角度。
如果一句话较长，可以 1.2-2.0 秒换一次画面。
不要为了快切造成卡顿。

### Phase 4：字幕规则

字幕必须由最终 master_timeline.json 生成。
字幕文字必须严格等于用户提供的完整文案。
不得用 Whisper 错字作为最终字幕。
Whisper 只能用来辅助找时间轴。

ASS 字幕优先。
必须设置：

PlayResX: 1080
PlayResY: 1920
WrapStyle: 2
ScaledBorderAndShadow: yes

普通字幕：
- 字体：优先 PingFang SC Semibold；备选 Heiti SC；如已安装可用 江湖体/庞门正道标题体 只用于重点词。
- 字号：初始 40。允许范围 38-44。不要低于 36，不要高于 46。
- 位置：底部三分之一区域，约 y=1350-1500。
- Alignment=2。
- MarginV 初始 430。
- MarginL=90。
- MarginR=90。
- Outline=3。
- Shadow=1。
- 每行最多 12-14 个中文。
- 最多两行。
- 不遮脸、不遮动作。

重点词：
- 只出现 0.4-0.8 秒。
- 可以用黄色或描边突出。
- 不允许全屏大字长期遮挡。

### Phase 5：声音规则

最终音轨只包含：
1. 女孩主口播
2. 可选低音量 BGM
3. 可选 3-5 个轻音效

不得包含：
- 男声
- 大姨大妈声音
- 球馆杂乱人声
- B-roll 原声

音频验收：
- 用 ffmpeg 检查最终音频只来自 master_audio。
- 若混入其他视频声音，必须重剪。
- BGM 音量必须低于主口播，不盖人声。

### Phase 6：流畅度规则

不得出现黑屏、空白、卡顿、冻结帧。
不得为了凑 45-60 秒拉长视频。
最终时长由完整口播音频决定。
如果文案只有 35-45 秒，就输出 35-45 秒，不硬凑 60 秒。

每个片段必须：
- 同帧率
- 同分辨率
- 同编码
- 先统一转成 intermediate，再 concat
- 避免直接 copy concat 导致卡顿

推荐统一规格：
1080x1920
30fps
H.264
AAC
yuv420p

### Phase 7：验收标准

最终必须通过：
1. 方向正向。
2. 1080x1920。
3. 女孩嘴型口播画面与声音同步。
4. 无男声。
5. 无 B-roll 原声。
6. 字幕和声音逐句一致。
7. 字幕大小适中，不遮挡。
8. 每句话至少换一个画面或角度。
9. 无黑屏、无卡顿、无空白。
10. 视频时长跟随完整文案，不硬凑时长。

## 适用范围

- 羽毛球招生视频
- 教培招生口播
- 口播 + B-roll 混剪
- 有完整文案的招生短视频
