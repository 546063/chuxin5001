---
title: "Claude Code教程索引-最全面中文教程"
aliases:
  - awesome-claudcode-tutorial
  - 最全面Claude Code中文教程
topic: Claude Code教程
created: 2026-05-19
updated: "2026-05-23"
type: knowledge_note
status: active
quality_level: B
summary_cn: 这是一套系统化的 Claude Code 学习教程，提供 两种学习方式:
summary_en: "Reference note about Claude Code教程索引-最全面中文教程."
decision_value: 用于Claude Code教程相关学习与参考。
tags:
  - Claude/教程
  - AI工具/ClaudeCode
  - 学习资源/GitHub
routing_target:
  - "[[15-AI工作流与自动化]]"
source: "https://github.com/xianyu110/awesome-claudcode-tutorial"
star_count: 高
---

# Claude Code 从入门到精通 — 最全面中文教程

> **来源**：[xianyu110/awesome-claudcode-tutorial](https://github.com/xianyu110/awesome-claudcode-tutorial)
> **在线阅读**：https://awesome.claude-opus.top/zh/
> **协议**：MIT

## 概述

这是一套系统化的 Claude Code 学习教程，提供 **两种学习方式**：

1. **文章式学习** — 212+ 篇详细文章，适合查阅和深入学习特定主题
2. **课程式学习** — 29 个结构化章节，适合系统学习从入门到精通

## 教程结构

### 方式一：文章式学习（docs/zh/articles/）

| 分类 | 篇数 | 内容 |
|------|------|------|
| 入门指南 | 第1-3章 | 基础概念 |
| 安装与配置 | 第2章，8篇 | 环境搭建 |
| 命令系统 | 第4章，5篇 | CLI命令 |
| 高级交互 | 第5章，9篇 | 对话模式 |
| 工具系统 | 第6章，19篇 | Bash/Read/Write等 |
| MCP 协议 | 第7章，33篇 | Model Context Protocol |
| Skills 技能 | 第8章，3篇 | 可复用工作流 |
| 多模态与上下文 | 第9-10章，10篇 | 图片/上下文管理 |
| MCP 进阶 | 第11-13章，12篇 | 高级MCP |
| 上下文与记忆 | 第14-15章，8篇 | 记忆管理 |
| 高级功能扩展 | 第16-19章，18篇 | Hook/Skills/Plugin |
| 插件开发 | 第20章，5篇 | 自定义插件 |
| 企业级应用 | 第21-34章，62篇 | CI/CD/监控/安全 |

### 方式二：课程式学习（docs/zh/chapters/）

**第一部分：环境搭建与基础交互**
- 01. 安装 Claude Code
- 02. 登录与授权
- 03. 第一个实战问题
- 04. 三种模式详解

**第二部分：复杂任务处理与终端控制**
- 05. 执行终端命令
- 06. 使用规划模式
- 07. 跳过权限检测
- 08. 后台任务管理

**第三部分：多模态与上下文管理**
- 09. 版本回滚 (Rewind)
- 10. 图片处理
- 11. 安装 MCP Server
- 12. 恢复历史会话
- 13. 使用 MCP 工具还原设计稿
- 14. 上下文压缩与清除
- 15. 项目记忆文件

**第四部分：高级功能扩展与定制**
- 16. Hook 系统
- 17. Agent Skills
- 18. SubAgent
- 19. Skills vs SubAgents
- 20. Plugin 系统

**第五部分：企业级应用与最佳实践**
- 21. 工作流与最佳实践 — 代码审查、调试、重构
- 22. 企业部署 — 托管设置、安全、合规
- 23. 远程控制与会话 — 多设备协作、云会话
- 24. 监控与可观测性 — OpenTelemetry、指标、日志
- 25. CI/CD 集成 — GitHub Actions、自动化流水线

**第六部分：高级能力与多 Agent 协作**
- 26. Computer Use（屏幕操作）
- 27. Voice Mode（语音模式）
- 28. 多 Agent 协作 — Worktrees、Agent Teams、Coordinator Mode
- 29. 高级命令与反模式 — /btw、/compact、Slash Commands

## 推荐学习路径

### 初学者路径
1. 阅读第一部分（01-04）→ 动手实践第一个任务 → 学习第二部分（05-08）→ 在实际项目中应用

### 进阶路径
1. 快速浏览前两部分 → 重点学习第三部分（09-15）→ 探索第四部分（16-20）→ 创建自定义 Skills 和 Plugins

### 企业路径
1. 快速掌握基础（01-15）→ 重点学习第五部分（21-25）→ 在企业环境中部署 → 建立团队最佳实践

## 教程统计

| 指标 | 文章版 | 章节版 |
|------|--------|--------|
| 内容数量 | 212+ 篇文章 | 29 个章节 |
| 代码示例 | 300+ | 150+ |
| 实战案例 | 100+ | 80+ |
| 总字数 | 20万+ | 18万+ |

## 本地使用

```bash
git clone https://github.com/xianyu110/awesome-claudcode-tutorial.git
cd awesome-claudcode-tutorial
# 文章位于 docs/zh/articles/
# 章节位于 docs/zh/chapters/
```
