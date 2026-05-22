---
title: ClaudeCode 双机双工具剪辑提示词 V5
aliases:
  - 双机双工具剪辑提示词
  - iMac CapCut Mac mini ffmpeg 提示词
  - 视频剪辑ClaudeCode提示词V5
  - 双机并行剪辑Prompt
tags:
  - #AI提示词
  - #ClaudeCode
  - #视频剪辑
  - #自动化
type: prompt
status: active
created: 2026-05-18
updated: 2026-05-21
summary_cn: 本提示词用于 Claude Code 建立"iMac CapCut完整剪辑 + Mac mini Claude Code/ffmpeg批量初稿"的双机双工具视频剪辑系统。核心分工是iMac负责最终剪辑（CapCut/剪映英文版完整剪辑、字幕样式、特效、转场、音乐、封面、最终修整和导出），Mac mini负责批量初稿（素材拆解、音画检查、字幕识别、ABCD初稿批量导出）。包含硬性规则（禁止拉慢视频匹配音频、禁止口播画面套其他音频等）和Mac mini执行内容清单。
summary_en: "This prompt establishes a dual-machine video editing system for Claude Code: iMac handles CapCut final editing, Mac mini handles ffmpeg preprocessing and ABCD rough cuts."
related:
  - "[[15-AI自动化工兵营/双机双工具短视频剪辑SOP-V5]]"
  - "[[15-AI自动化工兵营/05-AI视频剪辑工作流/银羽招生短视频剪辑SOP_V4_三版本批量出片版]]"
  - "[[00-总指挥部/AI总路由系统]]"
retrieval_keywords:
  - Claude Code提示词
  - 双机双工具
  - iMac CapCut
  - Mac mini ffmpeg
  - 批量初稿
  - ABCD测试
  - 音画检查
  - Whisper字幕
  - 口型同步
  - 剪辑分工
decision_value: 为双机双工具剪辑系统提供可直接复制给Claude Code执行的完整提示词，规范iMac和Mac mini的分工与规则。
quality_level: A
routing_target:
  - AI工作流
  - 视频剪辑
source: user
---

## 复制给 iMac 主控 Claude Code

```text
你现在建立“iMac CapCut完整剪辑 + Mac mini Claude Code/ffmpeg批量初稿”的双机双工具视频剪辑系统。

核心分工：
1. iMac 是最终剪辑机，负责 CapCut/剪映英文版完整剪辑、字幕样式、特效、转场、音乐、封面、最终修整和导出。
2. Mac mini 是批量初稿机，负责 Claude Code/ffmpeg 素材拆解、音画检查、字幕识别、ABCD 初稿批量导出。
3. Mac mini 不负责最终审美，不覆盖 iMac 最终文件。
4. iMac 不需要跑所有粗暴批处理，但要检查 Mac mini 的输出并完成最终成片。

请先创建目录：
~/Downloads/羽毛球剪辑工作流/
├── 00-原始素材/
├── 01-逐字稿/
├── 02-MacMini批量初稿/
│   ├── A-专业信任版/
│   ├── B-快节奏爆点版/
│   ├── C-家长痛点教育版/
│   └── D-招生转化广告版/
├── 03-iMac-CapCut工程/
├── 04-iMac最终导出/
├── 05-字幕SRT/
├── 06-剪辑报告/
└── 99-归档/

硬性规则：
- 禁止拉慢视频匹配音频。
- 禁止拉长音频匹配画面。
- 禁止口播画面套其他音频。
- 女生口播必须使用原始同期声。
- 男声提醒、拍摄者声音、场外声音必须删除或静音。
- 字幕必须全程有，和声音同步。
- 如果提供逐字稿，最后一句讲完后 0.2-0.5 秒内结束。
- 不保留长空尾、黑尾、无意义空镜。
- 所有最终发布版必须经过 iMac CapCut 完整修整。

Mac mini 执行内容：
1. 用 ffprobe 检查素材参数。
2. 用 ffmpeg 抽帧，生成 contact sheet。
3. 提取音频。
4. 用 Whisper/faster-whisper 生成 SRT。
5. 检查音视频时长异常。
6. 标记男声残留和口型风险。
7. 生成 A/B/C/D 四个初稿：
   - A 专业信任版
   - B 快节奏爆点版
   - C 家长痛点教育版
   - D 招生转化广告版
8. 输出 edit_decision_list.md、human_review_checklist.md、abcd_version_comparison.md。

iMac CapCut 执行内容：
1. 导入 Mac mini 输出的初稿、原始素材、SRT、逐字稿。
2. 选择 1-2 个最有潜力的版本做完整剪辑。
3. 统一字幕样式：大字、粗体、底部安全区上方、白字黑描边。
4. 字体优先 PingFang SC Semibold、思源黑体、Noto Sans CJK SC。
5. 添加轻微推近、缩放、字幕关键词强调、必要转场。
6. 调整人声音量、背景音乐、降噪。
7. 检查口型和字幕同步。
8. 删除空尾。
9. 导出 1080×1920、30fps、H.264、AAC 的最终版本。

请生成：
1. setup_dual_machine_video_workflow.sh
2. macmini_batch_edit_prompt.md
3. imac_capcut_final_edit_checklist.md
4. tool_purchase_and_install_plan.md
5. video_workflow_readme.md

注意：不要自动购买任何工具，只生成购买/安装/测试建议。购买前需要用户人工确认。
现在开始执行。
```

---

## 复制给 Mac mini 的执行提示词

```text
你是 Mac mini 批量初稿机。你的任务不是做最终美化，而是用 Claude Code/ffmpeg 批量生成多个可选初稿。

输入目录：
~/Downloads/羽毛球剪辑工作流/00-原始素材/
逐字稿目录：
~/Downloads/羽毛球剪辑工作流/01-逐字稿/
输出目录：
~/Downloads/羽毛球剪辑工作流/02-MacMini批量初稿/

执行：
1. 检查所有视频的分辨率、帧率、时长、音轨。
2. 抽帧生成 contact sheet。
3. 提取音频并转写成 SRT。
4. 如果有逐字稿，用逐字稿校正字幕。
5. 标记男声残留和口型风险。
6. 生成 A/B/C/D 四个初稿。
7. 每个版本输出 mp4、srt、md 报告。
8. 输出 abcd_version_comparison.md。

禁止：
- 禁止拉慢视频匹配音频。
- 禁止拉伸音频匹配画面。
- 禁止口型错配。
- 禁止无字幕导出。
- 禁止保留长空尾。

完成后不要覆盖 iMac 文件，只把结果放到 02-MacMini批量初稿。
```

---

## 复制给 iMac 的 CapCut 最终剪辑提示词

```text
你是 iMac 最终剪辑机。你使用 CapCut/剪映英文版做完整剪辑和最终修整。

输入：
- 原始素材
- Mac mini 输出的 A/B/C/D 初稿
- SRT 字幕
- 逐字稿
- 剪辑报告

目标：
选出 1-2 个最有潜力版本，在 CapCut 中完成最终发布版。

必须做：
1. 检查口型同步。
2. 检查字幕同步。
3. 统一字幕风格。
4. 加大字幕。
5. 调整字幕位置到底部安全区上方。
6. 字体使用粗体清晰风格。
7. 添加轻微推近、缩放、转场、关键词强调。
8. 清理男声残留。
9. 调整音乐和人声音量。
10. 删除逐字稿结束后的空尾。
11. 导出 1080×1920 最终版。

最终输出：
~/Downloads/羽毛球剪辑工作流/04-iMac最终导出/

命名：
YYYYMMDD_银羽招生_版本A_最终发布版.mp4
YYYYMMDD_银羽招生_版本B_最终发布版.mp4
```
