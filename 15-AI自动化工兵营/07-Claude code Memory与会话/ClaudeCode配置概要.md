---
title: ClaudeCode配置概要
topic: ''
created: '2026-04-23'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: '## 适用场景 - 适合平台: - 适合行业: - 适合场景:相关文档'
summary_en: Document regarding ClaudeCode配置概要. Reference for business decisions.
one_sentence_summary: ClaudeCode配置概要是AI工具领域的核心方法。
decision_value: AI tool usage and prompt engineering reference
review_note: AI tool reference
category: AI工具
platform: 多平台
industry: AI
scenario: 会话管理
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: ''
related:
retrieval_keywords:
  - - 对跨境贸易的价值
  - - 适合场景
  - - 配置概要
  - - 待补充
  - - 有什么风险需要注意
  - - 需要补充的数据
  - - 已遮蔽
  - - 需要后续搜索的内容
  - - 相关案例
  - - 可复用方法
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






# Claude Code 配置概要

## 一句话总结
# Claude Code 配置概要

## 核心结论
- 待补充

## 适用场景
- 适合平台：
- 适合行业：
- 适合场景：

## 可复用方法
- 方法 1：待补充
- 方法 2：待补充

## 对我的业务有什么价值
- 对跨境贸易的价值：待补充
- 对 Facebook 投流的价值：待补充
- 对巨量本地推的价值：待补充
- 对客户开发的价值：待补充
- 对知识库沉淀的价值：待补充

## 相关案例
- [[相关案例]]（待补充）

## 后续可提问的问题
- 这个内容适合哪个行业复用？
- 这个策略适合什么平台？
- 这个方法的核心是什么？
- 有什么数据需要补充？
- 有什么风险需要注意？

## 待补充
- 需要补充的数据
- 需要补充的案例
- 需要后续搜索的内容
#待补充
## 核心配置
- **配置文件:** `~/.claude/settings.json`
- **主模型:** GLM-5.1
- **API baseURL:** https://open.bigmodel.cn/api/anthropic
- **API Token:** b633387a... (已遮蔽)

---

## 模型Profiles

| Profile | 模型 | baseURL |
|---------|------|---------|
| hermes | MiniMax-M2.7-highspeed | https://api.minimaxi.com/anthropic |
| glm5 | MiniMax-M2.7-highspeed | https://api.minimaxi.com/anthropic |
| glm47 | MiniMax-M2.7-highspeed | https://api.minimaxi.com/anthropic |
| deepseek | DeepSeek | https://api.deepseek.com |
| minimax_m27 | MiniMax-M2.7 | https://api.minimaxi.com/v1 |
| minimax | MiniMax-M2.5 | https://api.minimaxi.com/v1 |

---

## 权限配置 (permissions)

- **defaultMode:** bypassPermissions
- **allow:** ["*"]

---

## 已启用插件 (enabledPlugins)

| 插件 | 状态 |
|------|------|
| frontend-design | ✅ |
| document-skills | ✅ |
| skill-creator | ✅ |
| code-review | ✅ |
| session-report | ✅ |
| security-guidance | ✅ |
| github | ✅ |
| asana | ✅ |
| linear | ✅ |
| imessage | ✅ |
| telegram | ❌ |
| discord | ❌ |

---

## 通道配置 (channels)

- **telegram:** ~/.claude/channels/telegram
- **discord:** ~/.claude/channels/discord

---

## 相关链接
- [[15-AI自动化工兵营/07-Claude code Memory与会话/ClaudeCode记忆]]
- [[11-智囊团与知识蒸馏/MOC]]

## 关联笔记
- [[01-记忆与配置/MOC]]
- [[15-AI自动化工兵营/07-Claude code Memory与会话/兴趣与爱好]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
