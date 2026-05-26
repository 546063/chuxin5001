---
title: "AI工具链与本地项目维护总入口"
aliases:
  - "AI工具链维护入口"
  - "本地项目维护总入口"
  - "Codex Claude OpenClaw 工具链"
tags:
  - AI工具链
  - 本地项目
  - 自动化
  - 维护
type: "maintenance_router"
status: "active"
quality_level: "A"
created: "2026-05-23"
updated: "2026-05-23"
summary_cn: "Codex、Claude、OpenClaw、Lark CLI、Telegram bridge、Claude-to-IM、cc-connect 和本地项目的维护入口。"
related:
  - "[[14-AI工具自动化MOC]]"
  - "[[AI总路由系统]]"
  - "[[AI模型路由系统]]"
  - "[[Claude Code工具链总控台]]"
---

# AI工具链与本地项目维护总入口

## 一句话结论

AI 工具链维护的目标不是“装更多工具”，而是让业务知识库、自动化、飞书/Telegram 通知、本地项目开发稳定地协同。

## 工具链地图

| 模块 | 本机线索 | 用途 | 维护动作 |
|---|---|---|---|
| Codex | `/Users/mac/.codex` | 当前主控、代码和文件执行 | 检查自动化、技能、会话、工作区 |
| Claude / Claude Code | `/Users/mac/.claude`、`/Users/mac/.claude-code-router` | 大批量执行、模型路由、历史任务 | 检查配置、备份、路由规则 |
| OpenClaw | `/Users/mac/.openclaw`、`/Users/mac/ai-workspaces/openclaw` | 资料采集、子任务、网页流程 | 检查任务缓存、转录、配置 |
| Lark CLI | `/Users/mac/.lark-cli` | 飞书文档、群消息、审批、日历等 | 检查登录态、scope、日志 |
| Telegram Bridge | `/Users/mac/claude-code-telegram` | Telegram 通知和远程任务 | 跑测试、查日志、修 bot 配置 |
| Claude-to-IM | `/Users/mac/projects/claude-to-im` | IM 桥接和流式卡片 | 读 README、跑测试、修功能 |
| LLM Council | `/Users/mac/projects/llm-council` | 多模型讨论/顾问系统 | 检查前后端依赖和运行方式 |
| Food Machinery Hero | `/Users/mac/projects/food-machinery-hero` | 食品机械页面/展示项目 | 启动前端、检查构建和视觉 |
| Persona Panel | `/Users/mac/projects/persona-panel` | 人格/顾问面板 | 检查 README 和依赖 |
| Telegram Watchdog | `/Users/mac/projects/telegram-watchdog` | Telegram 监控 | 检查服务状态和日志 |

## 维护优先级

| 优先级 | 任务 | 成功标准 |
|---|---|---|
| P0 | 不破坏现有配置和用户改动 | 操作前看 git/status 或配置备份 |
| P1 | 建立工具链体检报告 | 每个关键工具有“可用/异常/待确认”状态 |
| P1 | 给核心项目补 README 运行路线 | 能一条命令启动或测试 |
| P2 | 减少重复环境和废弃备份 | 先报告，确认后归档 |
| P2 | 把高频任务做成自动化 | 有明确触发条件和输出位置 |

## 本地项目处理流程

1. 读取项目 README、AGENTS、package/pyproject。
2. 检查 git 状态，只改本任务相关文件。
3. 安装或使用现有依赖。
4. 运行测试或启动服务。
5. 写明变更、验证结果、遗留风险。

## 首轮建议

- 先做只读体检：Codex、Claude、OpenClaw、Lark、Telegram、Claude-to-IM。
- 再挑一个业务项目开工：优先 `food-machinery-hero` 或 `claude-to-im`。
- 把工具链维护结果写回 [[AI维护Obsidian知识库总览]] 或治理报告，不要散落在聊天记录里。

## 已有体检报告

- [[2026-05-23_本地AI项目首轮体检报告]]
- [[Claude Code工具链总控台]]
- [[2026-05-23_AI用量审计与成本优化报告]]
- [[2026-05-23_cc-connect与claude-mem温和重启记录]]
