---
title: Hermes 代码审查大师脚本
topic: ''
created: '2026-04-21'
updated: '2026-05-17'
type: 技能定义
status: active
quality_level: B
summary_cn: Hermes 代码审查大师脚本是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Code Review - 审查大师脚本. Reference for business decisions.
one_sentence_summary: Hermes 代码审查大师脚本: AI工具核心方法和实战经验。
decision_value: AI tool usage and prompt engineering reference
review_note: AI tool reference
category: AI工具
platform: 多平台
industry: AI
scenario: 工作流
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: ''
related:
retrieval_keywords:
  - - 对跨境贸易的价值
  - - 适合场景
  - - 自安装
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 装到
  - - 代码审查大师脚本
  - - 需要后续搜索的内容
  - - 相关案例
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---







---
# Code Review Master · Hermes 代码审查大师

## 一句话总结
一个脚本 = system prompt + 审查逻辑 + 自安装 + Hermes skill 元数据。

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
## 概述

一个脚本 = system prompt + 审查逻辑 + 自安装 + Hermes skill 元数据。

```bash
# Quick Start
chmod +x code-review.sh
./code-review.sh --install         # 装到 ~/.hermes/skills/code-review/
./code-review.sh path/to/file.py   # 审单文件
./code-review.sh ~/project/src     # 审整目录
cat foo.py | ./code-review.sh -    # stdin
```

## 四级审查维度

### 🔴 Critical（必须立即修复）
- 安全漏洞：SQL 注入、XSS、命令注入、路径穿越、SSRF、反序列化、XXE
- 认证/授权缺陷：越权、token 泄漏、密码明文
- 硬编码秘密：API key、密钥、数据库凭证
- 数据丢失：无备份破坏性操作、事务缺失
- 崩溃：必然段错误、死锁、无限递归

### 🟠 High（尽快修复）
- 逻辑错误：off-by-one、条件反写、返回值错用
- 空指针/未定义/数组越界
- 竞态条件、并发 bug
- 资源泄漏：文件/连接/内存未释放
- 异常吞没或未处理

### 🟡 Medium（应改进）
- 性能：N+1、O(n²)、不必要 IO
- 边界：空输入、极值、NaN、时区
- 类型安全、圈复杂度 > 15

### 🟢 Low（风格/可维护性）
- 命名、魔法数字、重复代码、缺注释、dead code

## 输出格式（严格 JSON）

```json
{
  "summary": "一句话整体评价",
  "metrics": {"files_reviewed":0,"critical":0,"high":0,"medium":0,"low":0},
  "issues": [
    {
      "id": "ISSUE-001",
      "severity": "Critical|High|Medium|Low",
      "category": "Security|Logic|Performance|Style",
      "file": "path/to/file",
      "line": 42,
      "line_end": 45,
      "problem": "问题描述",
      "code": "问题代码片段",
      "fix": "可直接替换的修复代码",
      "why": "原因",
      "confidence": "high|medium|low"
    }
  ],
  "suggestions": ["全局建议"]
}
```

## 十条铁律

1. 只报实际问题，不确定标 `confidence=low`，绝不编造
2. 必给行号（无法定位填 0）
3. `fix` 必须可直接替换
4. 不改业务逻辑，不重构
5. 按严重度排序 Critical→Low
6. 每个 issue 独立 id
7. Low 级同类合并，file 填 "multiple"
8. 挖隐藏 bug（并发/边界/异常/恶意输入）
9. 不写"整体良好"
10. 无问题返回空 issues 数组

## 安装后目录结构

```
~/.hermes/skills/code-review/
├── SKILL.md            ← Hermes 靠这个识别技能
└── code-review.sh      ← 脚本 + system prompt 一体
```

## Hermes 内调用

`/skill code-review <path>` 或自然语言触发。

## 输出文件

- `.review-reports/review-<ts>.json` — 结构化报告
- `.review-reports/review-<ts>.md` — 人类可读摘要
- Critical/High 非零退出码 2，可接 CI

## 相关
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]

---
## 关联笔记
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]] — 同属Hermes技能体系，Skill定义结构参考
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]] — 同属Hermes技能体系的需求文档
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]] — 同属Hermes技能体系的安装方式
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]] — 审查脚本的frontmatter遵循该规范
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — 任务追踪中的Skill开发状态
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|代码安全审查]] — Critical级别：SQL注入/XSS/命令注入等安全漏洞
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|代码质量标准]] — 四级审查维度（Critical/High/Medium/Low）
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|JSON输出格式]] — 结构化审查报告的输出规范
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|CI集成]] — Critical/High非零退出码接CI管道
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|十条铁律]] — 代码审查的十条核心规则
- [[11-智囊团与知识蒸馏/MOC]] — 技能体系总索引
- [[01-记忆与配置/配置/SOUL]] — Skill注册机制
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — Hermes AI Agent系统
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|code-review.sh]] — 脚本本体
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|shell脚本]] — Bash脚本实现
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|代码审查工具]] — 自动化代码审查工具对比

## 标签
#工具/Hermes #类型/Skill定义 #主题/代码审查 #状态/活跃 #领域/开发工具

## Frontmatter 建议
- **aliases**: [代码审查大师, Code Review Master, Hermes代码审查, 代码审查脚本, 审查大师, code-review.sh, 代码Review, 安全审查脚本, Hermes审查技能, 四级审查, JSON审查报告, 代码安全检查, 自动化代码审查, CI代码审查, Hermes Code Review, 十条铁律, 代码质量审查]
- **type**: learning
- **related**: ["[[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]", "[[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]", "[[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]", "[[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]", "[[11-AI技能与智囊团/开发与运维/软件开发-索引|代码安全审查]]", "[[11-AI技能与智囊团/开发与运维/软件开发-索引|JSON输出格式]]", "[[11-AI技能与智囊团/开发与运维/软件开发-索引|CI集成]]", "[[11-智囊团与知识蒸馏/MOC]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]"]

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
