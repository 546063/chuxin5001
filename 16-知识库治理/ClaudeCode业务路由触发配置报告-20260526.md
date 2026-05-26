---
title: "ClaudeCode业务路由触发配置报告-20260526"
aliases:
  - Claude Code业务路由触发配置
type: "知识库治理报告"
business_stage:
  - AI执行
  - 知识库治理
platform:
  - Claude Code
  - Obsidian
quality_level: "S"
decision_value: "高"
routing_target:
  - AI执行
  - 知识库治理
related:
  - "[[00-总控台路由入口]]"
  - "[[00-AI读取入口]]"
  - "[[AI执行与治理路由]]"
  - "[[AI执行工具地图]]"
summary_cn: "本报告记录 iMac Obsidian 主库中 Claude Code 的业务路由触发配置：默认不读取全部路由，只有文案、运营、获客、投流、成交、产品研究、复盘和知识库治理任务才触发对应路由。"
summary_en: "This report records conditional business routing configuration for Claude Code in the Obsidian vault."
retrieval_keywords:
  - Claude Code
  - 业务路由
  - 条件触发
  - slash command
  - Obsidian治理
created: 2026-05-26
updated: 2026-05-26
---

# Claude Code 业务路由触发配置报告

## 一、本次目标

让 iMac 主库中的 Claude Code 具备条件触发路由能力：
- 平时普通任务不读取业务路由
- 文案、运营、获客、投流、成交、产品研究、案例复盘、知识库治理任务才读取对应路由
- 支持用户手动调用 `/biz-route` 和 `/obsidian-route`

## 二、配置文件

### 项目级规则
`CLAUDE.md` — 定义什么时候触发业务路由，什么时候不触发

### 自定义命令一
`.claude/commands/biz-route.md` — 用户主动输入 `/biz-route` 时，强制进入业务作战地图

### 自定义命令二
`.claude/commands/obsidian-route.md` — 用户主动输入 `/obsidian-route` 时，强制进入 Obsidian 治理路由

## 三、触发范围

**触发路由**：文案与内容、获客与客资、投流与广告、客户成交与沟通、产品行业工厂选品、复盘案例素材筛选、Obsidian 知识库治理

**不触发路由**：普通终端排查、SSH 测试、软件安装、Git 单纯状态检查、NAS/WebDAV/Docker/Homebrew 等纯技术配置、用户明确说不要调用路由

## 四、上下文控制

触发后最多读取：
1. 一个总入口文件
2. 一个对应业务地图
3. 一个必要相关地图
4. 最多 3-5 篇相关 S/A 级文档

禁止一次性读取全部 18 个路由文件。

## 五、后续建议

下一阶段可以继续建立：
1. `.claude/commands/write-copy.md`：专门写文案
2. `.claude/commands/lead-review.md`：专门做获客诊断
3. `.claude/commands/ad-review.md`：专门做投流复盘
4. `.claude/commands/client-reply.md`：专门写客户回复
5. `.claude/commands/obsidian-ingest.md`：专门做文档入库
