---
title: TDD工作流与最佳实践整合
topic: ''
created: unknown
updated: '2026-05-17'
type: merged_knowledge_node
status: active
quality_level: A
summary_cn: TDD工作流与最佳实践整合文档，涵盖代码审查、覆盖率检查、依赖分析、失败分析、实现器、模式研究、重构、会话审查、栈分析、测试设计、测试编写等全流程。用于软件开发流程标准化、AI代码生成质量控制。
summary_en: TDD Workflow and Best Practices Integration covering code review, coverage
  checking, dependency analysis, failure analysis, implementation, pattern research,
  refactoring, session review, stack analysis, test design, and test writing. Used
  for software development process standardization and AI code generation quality
  control.
one_sentence_summary: '# TDD工作流与最佳实践整合  ## 中文总结  本文档整合了TDD（测试驱动开发）工作流的完整规范，涵盖从代码库研究...'
decision_value: Build AI automation workflows and scripts
review_note: Core AI automation playbook
category: ''
platform: []
industry: []
scenario: []
source_files: '|'
merged_from: '|'
old_versions: '|'
archived_reason: []
relations: []
related:
  - [[01-全库工作总览MOC]]
retrieval_keywords:
- 代码审查任务
- 代码质量评估
- 知识整合
- 重构任务
- 重构
- 测试驱动开发
- 工作流的完整规范
- 文档定义了
- 角色的职责与产出标准
- 中文总结
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# TDD工作流与最佳实践整合

## 中文总结

本文档整合了TDD（测试驱动开发）工作流的完整规范，涵盖从代码库研究、覆盖率检查、依赖分析、失败分析到实现、重构、模式研究的全流程环节。文档定义了11个核心TDD角色的职责与产出标准，用于软件开发流程标准化、AI代码生成质量控制。建议在以下场景调用：AI代码生成任务、代码审查任务、测试设计任务、重构任务、代码质量评估。

## English Summary

This document integrates complete TDD (Test-Driven Development) workflow standards, covering all phases from codebase research, coverage checking, dependency analysis, failure analysis to implementation, refactoring, and pattern research. The document defines responsibilities and output standards for 11 core TDD roles, used for software development process standardization and AI code generation quality control. Invoke this document for: AI code generation tasks, code review tasks, test design tasks, refactoring tasks, and code quality evaluation.

## 一句话结论

TDD是AI代码生成的质检门卫，每个角色都有明确的质量把关职责。

---

## 核心整理

### 1. TDD工作流角色概览

| 角色 | 职责 | 产出 | 质量标准 |
|------|------|------|----------|
| tdd-codebase-researcher | 研究代码库结构 | 代码结构报告 | 准确率>90% |
| tdd-coverage-checker | 检查测试覆盖率 | 覆盖率报告 | 覆盖>80% |
| tdd-dependency-researcher | 分析依赖关系 | 依赖图谱 | 完整无遗漏 |
| tdd-failure-analyzer | 分析失败原因 | 失败诊断报告 | 准确率>85% |
| tdd-implementer | 实现功能代码 | 可运行代码 | 通过测试100% |
| tdd-pattern-researcher | 研究代码模式 | 模式建议 | 适用性>80% |
| tdd-refactorer | 重构优化代码 | 重构后代码 | 保持功能 |
| tdd-session-reviewer | 审查TDD会话 | 审查报告 | 发现>90%问题 |
| tdd-stack-analyzer | 分析调用栈 | 栈分析报告 | 准确率>95% |
| tdd-test-designer | 设计测试用例 | 测试用例 | 覆盖率>80% |
| tdd-test-writer | 编写测试代码 | 测试代码 | 通过率100% |

### 2. TDD工作流标准流程

#### 2.1 阶段一：研究与分析

1. **代码库研究（tdd-codebase-researcher）**
   - 分析项目结构
   - 识别核心模块
   - 生成代码结构报告

2. **依赖分析（tdd-dependency-researcher）**
   - 绘制依赖图谱
   - 识别循环依赖
   - 提供解耦建议

3. **调用栈分析（tdd-stack-analyzer）**
   - 分析函数调用链
   - 识别性能瓶颈
   - 生成优化建议

#### 2.2 阶段二：测试设计

4. **测试设计（tdd-test-designer）**
   - 设计测试用例
   - 定义测试边界
   - 确保覆盖率>80%

5. **测试编写（tdd-test-writer）**
   - 编写可运行测试
   - 确保测试通过率100%
   - 记录测试日志

#### 2.3 阶段三：实现与验证

6. **覆盖率检查（tdd-coverage-checker）**
   - 运行覆盖率工具
   - 生成覆盖率报告
   - 标记未覆盖区域

7. **实现（tdd-implementer）**
   - 按TDD循环实现
   - 先红再绿重构
   - 确保功能正确

#### 2.4 阶段四：优化与审查

8. **失败分析（tdd-failure-analyzer）**
   - 分析测试失败原因
   - 提供修复建议
   - 避免同类错误

9. **模式研究（tdd-pattern-researcher）**
   - 识别代码模式
   - 提供重构建议
   - 提升代码质量

10. **重构（tdd-refactorer）**
    - 优化代码结构
    - 保持功能不变
    - 提升可维护性

11. **会话审查（tdd-session-reviewer）**
    - 审查完整TDD会话
    - 发现潜在问题
    - 提供改进建议

### 3. TDD最佳实践

#### 3.1 编写顺序

1. 编写一个失败的测试（红）
2. 编写最少代码使测试通过（绿）
3. 重构代码（重构）
4. 重复

#### 3.2 测试命名规范

- 使用描述性名称
- 格式：`test_[功能]_[预期行为]`
- 示例：`test_user_login_with_valid_credentials`

#### 3.3 覆盖率要求

| 代码类型 | 最低覆盖率 |
|----------|-----------|
| 核心业务逻辑 | 90% |
| 公共工具函数 | 80% |
| 边界条件处理 | 85% |
| 错误处理逻辑 | 80% |

#### 3.4 重构原则

1. 保持测试通过
2. 小步重构
3. 每次重构后运行测试
4. 不引入新功能

---

## 版本与日期

- 整理日期：2026-05-17
- 当前主版本：v2.0
- 旧版本：v1.0（各角色独立文档）
- 日期线索来源：tdd-*.md系列文件
- 是否保留历史追溯：是

---

## 关系图谱

### 上游系统
- 15-AI工作流与自动化/AI知识库路由系统.md
- 15-AI工作流与自动化/AI工作流/TDD Workflow.md

### 下游动作
- AI代码生成任务
- 代码审查任务
- 测试设计任务

### 横向关联
- Code Review - 审查大师脚本.md
- TDD-最佳实践.md
- TDD-README.md

---

## 可回答的问题

1. TDD工作流的完整流程是什么？
2. 每个TDD角色的职责是什么？
3. 如何确保代码覆盖率？
4. 重构的最佳实践是什么？
5. 如何分析测试失败原因？
6. 如何研究代码库结构？

---

## 决策价值

高 - 本文档是AI代码生成的质检标准，直接影响代码质量与开发效率。

---

## 来源文件

1. tdd-codebase-researcher.md
2. tdd-coverage-checker.md
3. tdd-dependency-researcher.md
4. tdd-failure-analyzer.md
5. tdd-implementer.md
6. tdd-pattern-researcher.md
7. tdd-refactorer.md
8. tdd-session-reviewer.md
9. tdd-stack-analyzer.md
10. tdd-test-designer.md
11. tdd-test-writer.md