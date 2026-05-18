---
title: '"TDD README"'
aliases: '[]'
tags: '[AI工作流, AI技能, ClaudeCode, Codex, Obsidian, OpenClaw, TDD, 工作流, 工具技能, 待补充, 知识库维护]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn: 用于 [Claude Code](https://docs.anthropic.com/en/docs/claude-code) 的交互式测试驱动开发工作流，引导您完成RED-GREEN-REFACTOR循环，包含检查点、研究委托和自动测试文档。相关文档
summary_en: Document regarding TDD-README. Reference for business decisions.
one_sentence_summary: '"TDD README"': AI工作流核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[Claude Code]'
industry: []
scenario: '[知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - 用于
  - - 研究委托
  - - 安装
  - - 功能特点
  - - 随时恢复
  - - 自动测试文档
  - - 循环
  - - 会话持久化
  - - 每步都提示用户
  - - 跨平台
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# Claude Code TDD Skill

用于 [Claude Code](https://docs.anthropic.com/en/docs/claude-code) 的交互式测试驱动开发工作流，引导您完成RED-GREEN-REFACTOR循环，包含检查点、研究委托和自动测试文档。

## 功能特点

- **交互式检查点** - 每步都提示用户，实现显式控制
- **会话持久化** - 每步后保存进度，随时恢复
- **研究委托** - 子代理处理代码库探索，保持主上下文精简
- **自动测试文档** - 生成累积的`tests.md`测试描述文档
- **跨平台** - 支持Linux、macOS和Windows

## 安装

### Linux / macOS / WSL

```bash
git clone https://github.com/or-ituran/claude-tdd-skill.git ~/.claude/skills/tdd
cd ~/.claude/skills/tdd && chmod +x setup.sh && ./setup.sh
```

### Windows (PowerShell)

```powershell
git clone https://github.com/or-ituran/claude-tdd-skill.git $env:USERPROFILE\.claude\skills\tdd
cd $env:USERPROFILE\.claude\skills\tdd; .\setup.ps1
```

> **注意：** 安装脚本从`~/.claude/agents/`创建指向skill的agents文件夹的符号链接。在Windows上，您可能需要以管理员身份运行PowerShell或启用开发者模式以使符号链接工作。

## 使用方法

在Claude Code中，使用以下任一触发词：

```
"用TDD实现"
"先写测试"
"启动TDD会话"
"/tdd"
```

### 示例

```
> 用TDD实现用户认证
```

Claude Code将引导您完成：
1. **栈分析** - 检测项目的语言、框架、测试运行器
2. **代码库研究** - 查找相关代码和模式
3. **测试设计** - 在实现前规划测试循环
4. **TDD循环** - RED → GREEN → REFACTOR，含提交
5. **会话回顾** - 提取学习，更新测试文档

## 工作流概览

```
┌─────────────────────────────────────────────────────────────────┐
│              TDD 编排器（主对话）                                  │
│  - 步骤管理                                                      │
│  - 进度文件更新                                                   │
│  - 用户提示 (AskUserQuestion)                                    │
│  - 子代理调用                                                     │
│  - Git 提交                                                      │
└──────────────────────────────┬──────────────────────────────────┘
                               │ Task 工具调用
       ┌───────────────────────┼───────────────────────────────────┐
       │                       │                                   │
       ▼                       ▼                                   ▼
┌─────────────────┐   ┌─────────────────────┐   ┌─────────────────┐
│  研究            │   │  TDD 循环            │   │  完成            │
│  代理            │   │  代理                │   │  代理            │
│ (初始化阶段)     │   │  (循环阶段)          │   │  (最终阶段)      │
├─────────────────┤   ├─────────────────────┤   ├─────────────────┤
│ tdd-stack-      │   │ tdd-test-writer     │   │ tdd-coverage-   │
│   analyzer      │   │ tdd-implementer     │   │   checker       │
│ tdd-codebase-   │   │ tdd-failure-        │   │ tdd-session-    │
│   researcher    │   │   analyzer          │   │   reviewer      │
│ tdd-pattern-    │   │ tdd-refactorer      │   └─────────────────┘
│   researcher    │   └─────────────────────┘
│ tdd-dependency- │
│   researcher    │
│ tdd-test-       │
│   designer      │
└─────────────────┘
```

## 会话文件

运行TDD会话后，您的项目将包含：

```
.tdd/
├── sessions/              活动的TDD会话
├── archive/               已完成的会话含摘要
├── stack.md               项目栈配置
├── learnings.json          跨会话学习数据库
├── metrics-history.json   历史指标
├── coverage-history.json  覆盖率追踪
└── tests.md               累积测试文档
```

### 测试文档 (`tests.md`)

自动生成的TDD会话期间编写的所有测试文档：

```markdown
## UserValidatorTests

**会话**: 2026-02-02_user-auth
**文件**: src/auth/UserValidator.spec.ts

| 测试名 | 描述 | 输入 | 预期结果 |
|--------|------|------|----------|
| `Should_ValidateEmail_WhenFormatIsCorrect` | 验证有效邮箱通过验证 | 邮箱: "user@example.com" | 返回 true |
| `Should_RejectEmail_WhenMissingAtSymbol` | 验证无效邮箱被拒绝 | 邮箱: "userexample.com" | 返回 false，错误消息 |
```

## 平台支持

| 平台 | 状态 | 备注 |
|------|------|------|
| Linux | ✅ 完全支持 | 原生bash脚本 |
| macOS | ✅ 完全支持 | 原生bash脚本 |
| Windows (WSL) | ✅ 完全支持 | 使用bash脚本 |
| Windows (PowerShell) | ✅ 支持 | 使用`.ps1`脚本 |
| Windows (Git Bash) | ✅ 支持 | 使用bash脚本 |

## 文件结构

```
claude-tdd-skill/
├── SKILL.md                  主编排文档
├── README.md                 本文件
├── agents/                   子代理定义
│   ├── tdd-stack-analyzer.md
│   ├── tdd-codebase-researcher.md
│   ├── tdd-pattern-researcher.md
│   ├── tdd-dependency-researcher.md
│   ├── tdd-test-designer.md
│   ├── tdd-test-writer.md
│   ├── tdd-implementer.md
│   ├── tdd-failure-analyzer.md
│   ├── tdd-refactorer.md
│   ├── tdd-coverage-checker.md
│   └── tdd-session-reviewer.md
├── references/               最佳实践和模板
│   ├── tdd-best-practices.md
│   ├── test-templates.md
│   ├── tests-md-template.md
│   └── ...
├── scripts/                  跨平台初始化脚本
│   ├── init-tdd-folder.sh    Linux/macOS/WSL
│   └── init-tdd-folder.ps1   Windows PowerShell
└── examples/
    └── progress-template.md
```

## 恢复会话

会话会自动保存。恢复方法：

```
"恢复TDD"
"/tdd"
```

Claude Code将检测到暂停的会话，并提供从停止处继续的选项。

## 与其他Skill的集成

| Skill | 集成 |
|-------|------|
| `spec-driven-dev` | 从spec读取验收标准 |
| `test-runner` | 子代理用于运行测试 |
| `clean-code` | tdd-refactorer可能参考 |
| `dotnet-oop` | tdd-refactorer可能参考用于.NET |

## 需求

- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code)
- Git（用于TDD循环期间的提交）

## 贡献

欢迎贡献！请随意提交issues或pull requests。

## 许可证

MIT许可证 - 参见 [LICENSE](LICENSE) 了解详情。

## 致谢

由Anthropic为 [Claude Code](https://docs.anthropic.com/en/docs/claude-code) 使用而构建。

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[10-AI工具与自动化/MOC]]
- [[tdd-failure-analyzer]]
- [[tdd-codebase-researcher]]

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/认知框架/Karpathy认知框架]]