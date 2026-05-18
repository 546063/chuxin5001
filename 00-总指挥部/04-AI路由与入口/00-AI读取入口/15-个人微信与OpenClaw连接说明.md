---
title: "个人微信与OpenClaw连接说明"
topic: ""
created: "2026-05-13"
updated: "2026-05-17"
type: "ai-entry"
status: "active"
quality_level: "B"
summary_cn: "如果 openclaw-weixin 插件能正常编译并被 OpenClaw 加载，可以继续测试个人微信。相关文档"
summary_en: "Document regarding 15-个人微信与OpenClaw连接说明. Reference for business decisions."
one_sentence_summary: "# 15-个人微信与 OpenClaw 连接说明  ## 当前原则  个人微信连接不如飞书稳定"
decision_value: "System entry and governance documentation"
review_note: "General governance doc"
category: ""
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[14-AI工具自动化MOC]]
  - [[15-目录总览MOC]]
  - [[02-AI读取入口MOC]]
  - [[01-全库工作总览MOC]]
retrieval_keywords:
  - AI读取入口
  - 知识库总索引
  - Obsidian治理
  - Claude Code规则
routing_target:
  - "[[00-目录总览MOC]]"
---

# 15-个人微信与 OpenClaw 连接说明

## 当前原则

个人微信连接不如飞书稳定。

如果 openclaw-weixin 插件能正常编译并被 OpenClaw 加载，可以继续测试个人微信。

如果插件缺少 dist/index.js，说明插件还是源码状态，不可直接运行。

## 推荐优先级

1. 飞书：稳定，已跑通
2. 企业微信/WeCom webhook：适合机器人通知
3. 个人微信：可尝试，但依赖插件和 Mac 客户端状态

## 当前检查命令

openclaw doctor --fix
openclaw-fast-check
~/Desktop/test-openclaw-wechat-only.sh
