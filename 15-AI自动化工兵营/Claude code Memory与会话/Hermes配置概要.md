---
title: Hermes配置概要
topic: ''
created: '2026-04-23'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: Hermes配置概要是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Hermes配置概要. Reference for business decisions.
one_sentence_summary: Hermes配置概要: AI工具核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
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
  - - 模型配置
  - - 需要后续搜索的内容
  - - 版本
  - - 相关案例
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






# Hermes 配置概要

## 一句话总结
# Hermes 配置概要

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
- **配置文件:** `~/.hermes/config.yaml`
- **版本:** _config_version: 22
- **主模型:** MiniMax-M2.7-highspeed (provider: minimax)
- **API模式:** openai
- **baseURL:** https://api.minimax.chat/v1

---

## 模型配置 (model)

| Provider | baseURL | 模型 |
|----------|---------|------|
| minimax | https://api.minimax.chat/v1 | MiniMax-M2.7-highspeed, MiniMax-M2.7, MiniMax-M2.5 |
| bigmodel | https://open.bigmodel.cn/api/anthropic | (GLM系列) |
| zai | https://api.z.ai/api/coding/paas/v4 | (GLM系列) |

### 降级链 (fallback_chain)
1. MiniMax-M2.7 → minimax
2. MiniMax-M2.7 → minimax
3. MiniMax-M2.5 → minimax

---

## 平台开关 (platforms)

| 平台 | 状态 |
|------|------|
| feishu | ✅ enabled |
| telegram | ✅ enabled |
| discord | ❌ disabled |
| dingtalk | ❌ disabled |
| wecom | ❌ disabled |
| whatsapp | ❌ disabled |

---

## 记忆配置 (memory)

- **memory_char_limit:** 2200
- **user_char_limit:** 1375
- **memory_enabled:** true
- **user_profile_enabled:** true
- **nudge_interval:** 10

---

## 终端配置 (terminal)

- **backend:** local
- **persistent_shell:** true
- **timeout:** 180s
- **docker_image:** nikolaik/python-nodejs:python3.11-nodejs20

---

## 安全配置 (security)

- **redact_secrets:** false
- **tirith_enabled:** false

---

## 压缩配置 (compression)

- **enabled:** true
- **target_ratio:** 0.2
- **protect_last_n:** 20

---

## 流式输出 (streaming)

- **enabled:** true
- **transport:** edit
- **buffer_threshold:** 20

---

## TTS配置

- **provider:** edge
- **voice:** en-US-AriaNeural

---

## 相关链接
- [[01-记忆与配置/记忆/Hermes记忆]]
- [[10-AI工具与自动化/工作流/Hermes技能体系 MOC]]
- [[11-智囊团与知识蒸馏/MOC]]

## 关联笔记
- [[01-记忆与配置/MOC]]
- [[ClaudeCode配置概要]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
