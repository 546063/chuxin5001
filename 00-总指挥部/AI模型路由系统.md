---
title: AI模型路由系统
type: master_routing
status: active
date: 2026-05-17
tags:
  - AI路由
  - 模型路由
  - 工具选择
  - 执行器
routing_target:
  - "[[00-总指挥部/AI总路由系统]]"
  - "[[14-AI工具自动化MOC]]"
related:
  - "[[00-总指挥部/AI总路由系统]]"
  - "[[00-总指挥部/MOC/14-AI工具自动化MOC]]"
  - [[01-全库工作总览MOC]]
  - [[02-AI读取入口MOC]]
retrieval_keywords:
  - AI模型路由
  - 模型选择
  - 工具路由
  - 执行器
  - Claude Code
  - OpenClaw
---

# AI模型路由系统

## 中文总结
本系统定义不同任务如何选择模型、工具和执行机器，避免所有任务都用同一个模型或同一个工具。按任务类型选模型，按风险等级选执行器，按写入范围选机器。

## English Summary
This system defines how different tasks select models, tools, and execution machines. It prevents all tasks from using the same model or tool by routing based on task type, risk level, and write scope.

## 一句话结论
按任务选模型，按风险选执行器，按范围选机器。

---

## 检索与模型联动规则

- [[AI检索执行协议]] 负责规定"怎么检索"。
- [[AI检索路由配置]] 负责规定"查哪个MOC、用哪个模型、哪个工具执行"。

模型选择原则：

1. 普通检索：优先 Qwen3.6-plus / Claude Code。
2. 只读扫描：优先 OpenClaw / Mac mini Worker。
3. 高风险判断：交给 ChatGPT / Codex / 高级模型。
4. 批量写入：Claude Code 执行，必须加锁。
5. 外部采集：OpenClaw 只读采集，先进入资料中转仓。
6. 鱼缸、财务、客户原始记录等项目，必须按 project_route 和安全规则执行。

---

## 模型路由原则

1. **按任务类型选模型** — 不是越强越好，是越合适越好。
2. **按风险等级选执行器** — 高风险写入必须主控，低风险可分区。
3. **按写入范围选机器** — iMac主控全库，Mac mini分区写入。
4. **按成本与速度选模型** — 简单任务不用贵模型。
5. **重大写入必须iMac主控验收** — 高风险操作不交给Worker。
6. **OpenClaw默认只读** — 不直接写主Vault，除非单独授权。
7. **Mac mini可分区写入** — 不能与iMac写同目录。
8. **高风险原始资料只读** — 财务/客户/鱼缸原始记录不改正文。
9. **所有写入必须有锁** — 并行写入必须有协调机制。
10. **模型失败时降级或换路由** — 不反复重试浪费token。

---

## 模型/工具表

### Claude Code
**用途**：
- 大批量文件整理
- Markdown Properties修复
- Obsidian结构治理
- 多Agent写入
- Shell检查
- Python批处理

**默认模型**：qwen3.6-plus / qwen3-coder-plus

**写入**：是，需锁，高风险需主控验收

### OpenClaw
**用途**：
- 外部资料采集
- 只读扫描
- 网页搜索
- 报告生成

**写入**：否，默认不直接写主Vault

### Codex
**用途**：
- 主控规划
- 任务拆解
- 验收标准
- 代码审查
- 多Agent协调

**写入**：否，规划和审查为主

### ChatGPT
**用途**：
- 方案设计
- 提示词生成
- 复盘
- 人工决策辅助

**写入**：可写模板，不改原始记录

### Qwen3.6-plus
**用途**：
- 默认批处理
- 中文总结
- Obsidian普通治理
- 性价比优先

**写入**：可写模板、草稿

### Qwen3-coder-plus
**用途**：
- 脚本
- 路径检查
- YAML修复
- 配置排障

**写入**：是，配置和脚本类

### GLM / MiniMax
**用途**：
- 低风险快速草稿
- 批量摘要
- 速度优先任务

**写入**：可写草稿，不改核心文稿

### Kimi
**用途**：
- 长文本阅读
- 配置排障备选
- Claude Code特定兼容场景

**写入**：有限，辅助为主

### GPT-5.5 / 高级模型
**用途**：
- 高风险决策
- 最终验收
- 架构设计
- 复杂推理

**写入**：谨慎，主控确认

---

## 任务路由表

| 任务 | 工具 | 模型 | 机器 | 写入 |
|---|---|---|---|---|
| 知识库扫描 | OpenClaw / Claude Code | Qwen3.6-plus | Mac mini或iMac | 否，默认只读 |
| Properties批量修复 | Claude Code | Qwen3.6-plus | iMac或Mac mini | 是，需锁 |
| 大规模MOC重建 | Claude Code | Qwen3.6-plus | iMac主控+子Agent | 是，需验收 |
| 外部资料采集 | OpenClaw | GLM/MiniMax/Qwen | iMac或Mac mini | 否，先入资料中转 |
| 鱼缸监控分析 | ChatGPT / Claude Code | Qwen或GPT-5.5 | iMac | 可写日志，需确认 |
| 财务分析 | Claude Code / Python | Qwen Coder / GPT-5.5 | iMac | 谨慎，原始记录只读 |
| 客户沟通话术 | ChatGPT / Claude Code | Qwen / GPT-5.5 | 任意 | 可写模板，不改原始沟通 |
| AI工作流搭建 | Claude Code | qwen3-coder-plus | iMac | 是，需验收 |
| 代码排障 | Claude Code + Qwen Coder | qwen3-coder-plus | iMac | 是，配置类 |
| 规划/任务拆解 | Codex | GPT-5.5 | iMac主控 | 否 |
| 只读报告检查 | OpenClaw | Qwen3.6-plus | Mac mini | 否 |

---

## 执行器权限表

| 执行器 | 只读 | 轻量写入 | 分区写入 | 全库写入 |
|---|---|---|---|---|
| OpenClaw | ✅ | — | — | — |
| Mac mini Worker A | ✅ | ✅ | ✅(限17/18/19) | — |
| Mac mini Worker B | ✅ | ✅ | ✅(限15/16/20) | — |
| iMac 主控 Claude Code | ✅ | ✅ | ✅ | ✅ |

---

## 锁机制规则

1. 高风险写入操作开始前必须创建锁文件
2. 锁文件位置：`_locks/`目录
3. 锁文件命名：`{执行器}-{操作类型}-{时间戳}.lock`
4. 操作完成后立即删除锁文件
5. 检测到锁冲突时，Worker停止操作等待主控

---
创建时间：2026-05-17