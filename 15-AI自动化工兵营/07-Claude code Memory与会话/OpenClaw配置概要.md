---
title: OpenClaw配置概要
topic: ''
created: '2026-04-23'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: OpenClaw配置概要是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding OpenClaw配置概要. Reference for business decisions.
one_sentence_summary: OpenClaw配置概要: AI工具核心方法和实战经验。
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
  - - 认证
  - - 配置概要
  - - 待补充
  - - 有什么风险需要注意
  - - 需要补充的数据
  - - 模型配置
  - - 需要后续搜索的内容
  - - 端口
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






# OpenClaw 配置概要

## 一句话总结
# OpenClaw 配置概要

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
- **配置文件:** `~/.openclaw/openclaw.json`
- **Gateway端口:** 18789
- **Gateway模式:** local
- **认证:** token模式

---

## 模型配置 (models.providers)

### MiniMax
| 模型 | Reasoning | Context Window | Max Tokens |
|------|-----------|----------------|------------|
| MiniMax-M2.7-highspeed | ✅ | 1,000,000 | 8192 |
| MiniMax-M2.7 | ✅ | 1,000,000 | 8192 |
| MiniMax-M2.5-highspeed | ❌ | 1,000,000 | 8192 |
| MiniMax-M2.5 | ❌ | 200,000 | 8192 |

### DeepSeek
- **API:** anthropic-messages
- **baseURL:** https://api.deepseek.com/anthropic

### 其他Provider
- (完整配置见源文件 ~/.openclaw/openclaw.json)

---

## 平台通道 (channels)

### Telegram
- Bot: @claudecodetaone66bot
- Token: 8764752030:AAHMhj7mXewZpgzjYHphTzMnZL6j4AWQA7s

### Discord
- (配置见源文件)

---

## 记忆系统

- **存储:** SQLite (`~/.openclaw/memory/main.sqlite`)
- **三层架构:** 工作记忆 → 会话记忆 → 长期记忆

---

## 宪法

- **文件:** `~/.openclaw/constitution/constitution-v2.0.md`
- **版本:** 2.0 (2026-04-12)
- **核心:** 错误处理、缓存分层、安全隔离、多Agent协作、记忆自愈

---

## 运维工具

| 工具 | 路径 |
|------|------|
| 回滚脚本 | ~/.openclaw/constitution/rollback.sh |
| 配置校验 | ~/.openclaw/constitution/validate_config.sh |
| 监控面板 | ~/.openclaw/constitution/monitor.sh |

---

## 相关链接
- [[15-AI自动化工兵营/07-Claude code Memory与会话/OpenClaw记忆]]
- [[10-AI工具与自动化/工作流/Hermes技能体系 MOC|OpenClaw技能库]]
- [[11-智囊团与知识蒸馏/MOC]]

## 关联笔记
- [[01-记忆与配置/MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
