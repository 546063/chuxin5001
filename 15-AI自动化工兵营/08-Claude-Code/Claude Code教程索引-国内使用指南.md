---
title: "Claude Code教程索引-国内使用指南"
aliases:
  - claude-code-guide-chinese
  - Claude Code国内使用指南
topic: Claude Code教程
created: 2026-05-19
updated: "2026-05-23"
type: knowledge_note
status: active
quality_level: B
summary_cn: "Claude Code 是 Anthropic 于 2025 年初推出的命令行工具。它不是简单的代码补全 AI，而是\"代理式\"（agentic）助手，能根据你的自然语言指令，自主规划步骤、执行任务。"
summary_en: "Reference note about Claude Code教程索引-国内使用指南."
decision_value: 用于Claude Code教程相关学习与参考。
tags:
  - Claude/教程
  - AI工具/ClaudeCode
  - 学习资源/GitHub
routing_target:
  - "[[15-AI工作流与自动化]]"
source: "https://github.com/claude-code-chinese/claude-code-guide"
---

# Claude Code 国内使用指南（2026年最新）

> **来源**：[claude-code-chinese/claude-code-guide](https://github.com/claude-code-chinese/claude-code-guide)
> **定位**：最容易懂的 Claude Code 介绍与教学指南

## 什么是 Claude Code？

Claude Code 是 Anthropic 于 2025 年初推出的命令行工具。它不是简单的代码补全 AI，而是**"代理式"（agentic）助手**，能根据你的自然语言指令，自主规划步骤、执行任务。

与其他 AI 编码工具（如 GitHub Copilot）不同，Claude Code 更注重**整个项目级别**的协作：能读取整个代码库、使用 bash 命令、查看 git 历史、甚至运行测试。

## 主要特点

- **代理式工作流**：不只是补代码，还能规划多步任务
- **集成性强**：支持终端、VS Code 扩展，支持 Node.js、React、Express 等
- **上下文理解**：通过 `CLAUDE.md` 文件记住项目细节
- **安全性**：沙箱环境，支持审计日志
- **Skills 模块**：可重用工作流，支持 Git 版本控制和市场共享

## 安装方式

### 原生二进制安装（推荐，不依赖 Node.js）

**macOS/Linux：**
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**Homebrew：**
```bash
brew install --cask claude-code
```

**Windows：**
```powershell
irm https://claude.ai/install.ps1 | iex
```

### npm 安装
```bash
npm install -g @anthropic-ai/claude-code@latest
```

> 不要使用 `sudo npm install -g`，可能导致权限问题。

## 配置文件

**全局配置**：`~/.claude/settings.json`
**项目配置**：`.claude/settings.json`

```json
{
  "env": {
    "ANTHROPIC_API_KEY": "您的APIkey",
    "ANTHROPIC_BASE_URL": "https://api.xxx.com/",
    "CLAUDE_CODE_MAX_OUTPUT_TOKENS": 64000,
    "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": 1,
    "CLAUDE_MODEL": "claude-sonnet-4"
  },
  "permissions": {
    "allow": [],
    "deny": []
  }
}
```

## 基础使用

### 启动方式

```bash
# 交互式模式
claude

# 带初始提示启动
claude "explain this project"

# 非交互式模式
claude -p "explain this function"

# 管道输入
cat logs.txt | claude -p "explain"
```

### 常用命令

| 命令 | 描述 |
|------|------|
| `claude update` | 更新到最新版本 |
| `claude -c` | 继续最近的对话 |
| `claude -r <session-id>` | 恢复特定会话 |
| `claude mcp` | 配置MCP服务器 |
| `claude commit` | 创建Git提交 |

### 快捷键

| 快捷键 | 功能 |
|--------|------|
| Ctrl+C | 取消当前输入或生成 |
| Ctrl+D | 退出Claude Code会话 |
| Ctrl+L | 清除终端屏幕 |
| Up/Down | 浏览命令历史 |
| Esc + Esc | 编辑上一条消息 |

## 斜杠命令

### 基础命令

| 命令 | 描述 |
|------|------|
| `/help` | 显示帮助信息 |
| `/clear` | 清除对话历史 |
| `/config` | 管理配置 |
| `/permissions` | 管理权限 |
| `/vim` | 启用vim模式 |
| `/compact` | 压缩对话，降低Token使用量 |
| `/doctor` | 检查安装健康状况 |

### 高级命令

| 命令 | 描述 |
|------|------|
| `/init` | 初始化项目，自动生成CLAUDE.md |
| `/terminal-setup` | 设置终端键盘快捷键 |
| `/project:<command>` | 运行项目自定义命令 |
| `/model` | 切换模型 |

## 实战场景

### 理解新代码库
```
> 给我一个代码库概览
> 解释这里使用的主要架构模式
> 关键的数据模型有哪些？
> 认证是如何处理的？
```

### 高效修复Bug
```
> 我在运行 npm test 时看到错误
> 提供一些修复 user.ts 中 @ts-ignore 的方法
> 更新 user.ts，添加你建议的 null 检查
```

### 代码重构
```
> 查找我们代码库中弃用的 API
> 建议如何重构 utils.js，使用现代 JavaScript 特性
> 重构 utils.js，使用 ES2024 特性，同时保持原有行为
```

## 高级功能

### MCP 服务器配置

```bash
# 添加 MCP 服务器
claude mcp add <name> <command> [args...]

# 列出所有服务器
claude mcp list

# 获取服务器详情
claude mcp get my-server

# 删除服务器
claude mcp remove my-server
```

### 模型切换
```
> /model
```

### 上下文压缩
```
> /compact [您的描述]
```

### 对话恢复
```bash
claude --continue   # 恢复最近对话
claude --resume     # 显示交互式对话选择器
```

### Git 工作树
```bash
# 创建隔离的编码环境
git worktree add ../project-feature-a -b feature-a
cd ../project-feature-a
claude
```

## 常见问题

### Claude Code 如何存储记忆？
记忆存储在 `~/.claude` 中，不要删除此目录。

### 长时间没有响应怎么办？
1. 按 Ctrl+C 并重启 Claude Code
2. 杀死进程并重新会话，不会影响工作进度
3. 通过 `claude -c` 恢复上次会话

### OAuth 验证错误
1. 确保环境变量中没有配置任何代理
2. 复制终端中的链接，通过验证码方式验证
