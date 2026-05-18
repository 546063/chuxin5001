---
title: OpenClaw记忆
topic: ''
created: '2026-04-23'
updated: '2026-05-17'
type: journal
status: active
quality_level: B
summary_cn: OpenClaw记忆是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding OpenClaw记忆. Reference for business decisions.
one_sentence_summary: OpenClaw记忆: AI工具核心方法和实战经验。
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
  - - 核心原则
  - - 需要后续搜索的内容
  - - 主配置
  - - 来源文件
  - - 第一章
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






# OpenClaw 记忆文件

## 一句话总结
# OpenClaw 记忆文件

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
## 来源文件
- `~/.openclaw/memory/main.sqlite` - SQLite记忆数据库（二进制）
- `~/.openclaw/constitution/constitution-v2.0.md` - 宪法
- `~/.openclaw/rules/tool-lifecycle.yaml` - 工具生命周期规则
- `~/.openclaw/openclaw.json` - 主配置

---

## Constitution v2.0 核心原则

### 第一章：错误处理与容错
- **1.1 错误隔离原则**: 技能加载失败永不阻塞主流程，返回空数组而非抛出异常
- **1.2 优雅降级原则**: 三层降级：API → 本地缓存 → 兜底响应
- **1.3 超时分离原则**: 后台任务用 background=true 执行，主线程保持响应

### 第二章：缓存与状态
- **2.1 缓存分层原则**: 多层缓存各自独立显式清理
- **2.2 认证即时生效原则**: 认证状态检查时实时调用，不缓存
- **2.3 动态技能去重**: 基于 baseCommandNames 过滤重复
- **2.4 技能源可追溯**: loadedFrom 字段标记来源

### 第三章：安全与隔离
- **3.1 远程模式白名单**: session/exit/clear/help/theme/color/vim/cost/usage
- **3.2 桥接模式白名单**: prompt: allow | local: whitelist | local-jsx: block
- **3.3 安全审查自动化**: FALSE POSITIVE 16 条排除规则

### 第四章：后台守护（Auto-Dream）
- **4.1 三重门控**: Time Gate ≥24h | Session Gate ≥5 | Lock Gate
- **4.2 内存即索引**: index.md ≤100行 + ≤25KB
- **4.3 四阶段 Prompt**: Orient → Gather → Consolidate → Prune
- **4.4 只读 Bash**: 允许: ls/find/grep/cat/stat/wc/head/tail
- **4.5 事件追溯**: auto_dream_fired/completed/failed

### 第五章：多 Agent 协作
- **5.1 Forked Agent 执行**: 独立子进程，不阻塞主对话
- **5.2 任务注册与状态跟踪**: taskId + pending/running/completed/failed/killed
- **5.3 消息收集与进度观察**: text + toolUseCount + file_path 收集

### 第六章：记忆与自愈
- **6.1 三层记忆架构**: 工作记忆 → 会话记忆 → 长期记忆
- **6.2 记忆提取机制**: 每次交互后提取关键信息
- **6.3 记忆检索**: 语义检索 + 关键词匹配
- **6.4 自愈机制**: 检测 → 验证 → 更新 → 记录

### 第七章：Coordination 与任务调度
- **7.1 Coordinator 模式**: 单一协调器 + 多个执行器
- **7.2 任务优先级**: 高: 用户交互 | 中: 后台任务 | 低: 定期任务
- **7.3 资源限制**: 内存 + tokens 预算控制
- **7.4 优雅中断**: AbortController + 状态回滚

### 第八章：运维工具
- **8.1 回滚机制**: 快照目录 `~/.openclaw/snapshots/`
- **8.2 配置校验**: `validate_config.sh`
- **8.3 监控面板**: `monitor.sh` 显示 Gateway/会话/内存/技能状态
- **8.4 自动快照**: 每次配置变更自动创建，保留最近 10 个版本

---

## 工具生命周期规则 (rules/tool-lifecycle.yaml)

定义工具的创建、注册、调用、监控、卸载全流程。

---

## Skills 列表 (29个)

### Lark系列 (符号链接到 ~/.agents/skills/)
- lark-approval, lark-attendance, lark-base, lark-calendar
- lark-contact, lark-doc, lark-drive, lark-event, lark-im
- lark-mail, lark-minutes, lark-openapi-explorer, lark-shared
- lark-sheets, lark-skill-maker, lark-slides, lark-task
- lark-vc, lark-whiteboard, lark-whiteboard-cli, lark-wiki
- lark-workflow-meeting-summary, lark-workflow-standup-report

### 独立Skills
- agent-directory, cn-web-search, model-usage, multi-search-engine
- obsidian, playwright-mcp, trade-research, volcengine-search-web, weather

---

## Agents

- **main**: 主Agent配置 (`~/.openclaw/agents/main/`)
- **claude-code**: Claude Code子Agent配置 (`~/.openclaw/agents/claude-code/`)

---

## 相关链接
- [[10-AI工具与自动化/工作流/Hermes技能体系 MOC|OpenClaw技能库]]
- [[01-记忆与配置/记忆/OpenClaw配置概要]]
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
