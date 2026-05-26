---
title: "Claude Handbook-提示工程技术指南"
aliases:
  - claude-handbook
  - Claude提示工程手册
topic: Claude Code教程
created: 2026-05-19
updated: "2026-05-23"
type: knowledge_note
status: active
quality_level: B
summary_cn: Claude Handbook 是一个全面且实用的 Claude AI 提示词工程技术指南集合。每个文件都基于 Anthropic 官方文档验证，提供完整的技术说明、实作范例和最佳实践。
summary_en: "Reference note about Claude Handbook-提示工程技术指南."
decision_value: 用于Claude Code教程相关学习与参考。
tags:
  - Claude/教程
  - Claude/提示工程
  - AI工具/Claude
  - 学习资源/GitHub
routing_target:
  - "[[15-AI工作流与自动化]]"
source: "https://github.com/yes1688/claude-handbook"
---

# Claude Handbook — Claude 提示工程技术指南

> **来源**：[yes1688/claude-handbook](https://github.com/yes1688/claude-handbook)
> **规模**：32个独立技术指南 | 基于Anthropic官方文档验证
> **状态**：Archive 模式（已完成，可 Fork）

## 概述

Claude Handbook 是一个全面且实用的 Claude AI 提示词工程技术指南集合。每个文件都基于 Anthropic 官方文档验证，提供完整的技术说明、实作范例和最佳实践。

## 项目结构

```
claude-handbook/
├── README.md
├── claude_prompting_techniques/
│   ├── README.md                      # 技术指南索引
│   ├── 01_System_Prompts_系统提示词与角色提示.md
│   ├── 02_Clear_Direct_清晰直接的指示.md
│   ├── ...                           # 其他30个技术指南
│   └── 32_Streaming_串流处理.md
└── CLAUDE.md                          # 项目开发记录
```

## 核心技术目录

### 核心基础技术（必学）

| 序号 | 技术 | 说明 |
|------|------|------|
| 01 | System Prompts | 定义角色和行为基础 |
| 02 | Clear Direct | 清晰指示的根本原则 |
| 03 | XML Tags | 结构化提示的核心工具 |
| 04 | Multishot Prompting | 范例学习的标准方法 |
| 05 | Chain of Thought | 复杂推理的关键技术 |

### 进阶应用技术

| 序号 | 技术 | 说明 |
|------|------|------|
| 06 | Claude4 Instruction Following | 精确控制指令遵循 |
| 07 | Output Formatting | 输出格式精确控制 |
| 08 | Prefilling | 预填回应优化 |
| 09 | Tool Use | 工具使用相关技术 |

### 专业优化技术

| 序号 | 技术 | 说明 |
|------|------|------|
| 10 | Long Context | 长上下文处理技巧 |
| 11 | Latency Reduction | 效能优化 |
| 12 | Safety Considerations | 安全性防护 |

## 应用场景

| 场景 | 适用技术 |
|------|----------|
| 角色扮演 | System Prompts + Keep Character |
| 内容创作 | Clear Direct + Multishot Prompting + Output Formatting |
| 复杂推理 | Chain of Thought + Extended Thinking |
| 程式码生成 | Code Generation + Tool Reflection |

## 品质保证

每个技术指南文件都包含：

- 官方验证：基于 Anthropic 官方文档的准确资讯
- 完整结构：标准化的 11 个章节结构
- 实作范例：至少 3 个不同情境的实用范例
- 程式模板：完整的 Python API 实作范例
- 最佳实践：详细的指导原则和常见错误对比
- 测试方法：评估和优化的具体建议
- 技术组合：与其他技术的协同使用方式

## 学习建议

**初学者**：
1. 从核心基础技术开始
2. 重点掌握前 5 个最重要的技术
3. 逐步进阶到应用技术

**开发者**：
1. 直接查看感兴趣的技术分类
2. 复制相关的 API 代码范例
3. 根据需求组合多种技术

**企业用户**：
1. 重点关注安全性考量
2. 学习效能优化相关技术
3. 建立标准化的提示词范本

## 注意事项

- 本项目大量使用 XML 标签结构化提示，这是基于 Anthropic 官方建议
- XML 标签并非必要，在结构清楚时可不使用
- 复杂场景下，XML 标签能显著提升 Claude 解析准确性
- 内容仅供参考，请以 Anthropic 官方文档为准

## 本地使用

```bash
git clone https://github.com/yes1688/claude-handbook.git
cd claude-handbook
# 技术指南位于 claude_prompting_techniques/
```
