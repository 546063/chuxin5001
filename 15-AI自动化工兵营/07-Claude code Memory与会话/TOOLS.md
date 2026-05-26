---
title: TOOLS
topic: ''
created: '2026-04-17'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: '> 来源:~/.openclaw/workspace/TOOLS.md > 更新时间:2026-04-16 > 同步对照:hermes-backup-workflow相关文档'
summary_en: Document regarding TOOLS. Reference for business decisions.
one_sentence_summary: TOOLS: AI工具核心方法和实战经验。
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
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 来源
  - - 需要后续搜索的内容
  - - 版本
  - - 相关案例
  - - 本地工具配置
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






---

# TOOLS.md - 本地工具配置

> 来源：~/.openclaw/workspace/TOOLS.md
> 更新时间：2026-04-16
> 同步对照：hermes-backup-workflow

---

## 一句话总结
# TOOLS.md - 本地工具配置

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
## 文件保存位置

- **下载文件夹**：~/Downloads（用户要求：后续生成的视频/文件默认存这里）

---

## Claude CLI

- 路径：`/Users/mac/.local/bin/claude`
- 版本：2.1.92
- 调度方式：`claude --permission-mode bypassPermissions --print '任务'`
- 用途：让 OpenClaw 调度 Claude 写代码/改文件/跑测试

---

## ClawdHub CLI

- 安装路径：`/Users/mac/.npm-global/bin/clawdhub`
- 使用前需：`export PATH="$HOME/.npm-global/bin:$PATH"`

---

## 飞书配置

- lark-cli 已完成初始化和用户授权登录[^1]
- WebSocket 模式连接

---

## Hermes Agent

- 安装路径：`~/.hermes/hermes-agent/`
- Gateway 管理命令：`hermes gateway start/stop/restart/status`
- 配置详情：hermes-backup-workflow

---

## 🗂️ 相关笔记

### 配置同步
| 笔记 | 关联点 |
|------|--------|
| hermes-backup-workflow | Hermes 工作流备份（cron/代理/环境） |
| hermes-backup-memory | Hermes 长期记忆备份 |
| [[01-记忆与配置/配置/MEMORY]] | OpenClaw 核心记忆（含技术栈摘要） |

### 技能管理
| 笔记 | 关联点 |
|------|--------|
| [[10-AI工具与自动化/工作流/Hermes技能体系 MOC]] | ClawdHub CLI 文档与版本信息 |
| hermes-backup-skills | 完整已安装技能清单（34类） |

---

## 脚注

[^1]: lark-cli 初始化进展记录见 hermes-backup-memory（2026-04-11）

## 关联笔记
- [[01-记忆与配置/MOC]]
- [[00_System_MOC]]
- [[15-AI自动化工兵营/07-Claude code Memory与会话/AGENTS|AGENTS]]
- [[15-AI自动化工兵营/07-Claude code Memory与会话/AI知识库说明|AI知识库说明]]
- [[01-记忆与配置/配置/SOUL|SOUL]]
- [[01-记忆与配置/配置/USER|USER]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
