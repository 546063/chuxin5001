---
title: "14-AI工具自动化MOC"
aliases: ["AI工具", "AI自动化", "Claude Code", "工具配置", "模型路由", "Feishu桥接"]
tags: ["MOC", "AI工具", "自动化", "工具配置", "模型路由"]
topic: "AI工具自动化"
created: "2026-05-17"
updated: "2026-05-17"
type: "moc"
status: "active"
quality_level: "S"
summary_cn: "AI工具配置与自动化运行的主MOC。管辖Claude Code、OpenClaw、Codex、多Agent协同、模型路由、Feishu飞书桥接、Obsidian治理规则（Properties、MOC规则、质量评级）。全库AI运行的底层系统，给AI提供工具和规则支撑。"
summary_en: "Master MOC for AI tool configuration and automation. Manages Claude Code, OpenClaw, Codex, multi-agent coordination, model routing, Feishu bridge, and Obsidian governance rules (Properties, MOC rules, quality ratings)."
one_sentence_summary: "AI工具配置与自动化运行的底层系统，全库AI能力支撑"
decision_value: "告诉AI如何配置工具、如何路由模型、如何协同多Agent、如何治理Obsidian"
review_note: "S级主MOC，全库AI运行的底层系统，所有AI工具的入口规范"
category: "知识库治理"
platform: ["Claude Code", "OpenClaw", "Codex", "Feishu", "Obsidian"]
industry: []
scenario: ["AI工具配置", "多Agent协同", "模型路由", "飞书桥接", "Obsidian治理", "自动化任务"]
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - - - type: "part_of"
  - - target: "[[00-总指挥部/03-MOC/01-全库工作总览MOC]]"
  - - note: "全库工作总览的治理层组成部分"
  - - - type: "part_of"
  - - target: "[[00-总指挥部/03-MOC/02-AI读取入口MOC]]"
  - - note: "AI读取入口的技术层支撑"
related:
  - "[[AI检索执行协议]]"
  - "[[AI检索路由配置]]"
  - "[[AI总路由系统]]"
  - "[[AI知识库路由系统]]"
  - "[[AI模型路由系统]]"
retrieval_keywords:
  - - - "AI工具自动化"
  - - - "Claude Code配置"
  - - - "模型路由"
  - - - "Feishu桥接"
  - - - "多Agent协同"
  - - - "Obsidian治理"
  - - - "Properties规则"
  - - - "MOC规则"
  - - --
  - --
routing_target:
  - "[[00-目录总览MOC]]"
---

# 14-AI工具自动化MOC

## 中文总结
AI工具配置与自动化运行的主MOC。管辖Claude Code配置、OpenClaw任务执行、Codex路由、多Agent协同、模型路由策略、Feishu飞书桥接、Obsidian治理规则（Properties标准化、MOC创建规则、质量评级体系）。全库AI运行的底层系统，给所有AI agent提供工具能力和规则支撑。

## English Summary
Master MOC for AI tool configuration and automation. Manages Claude Code, OpenClaw, Codex, multi-agent coordination, model routing, Feishu bridge, and Obsidian governance rules (Properties, MOC rules, quality ratings). The foundational system for all AI operations in the vault.

## 一句话结论
全库AI工具和自动化的底层系统，所有AI能力的入口。

## 适用场景
- 配置Claude Code和工具链
- 多Agent任务协同
- 模型路由判断
- Feishu飞书桥接配置
- Obsidian Properties标准化
- MOC创建和维护规则
- 质量评级体系管理

## 不适用场景
- 不包含具体业务内容（去具体MOC）
- 不包含AI执行日志（去AI-Execution-System）
- 不包含决策系统内容（去Decision-System）

## 核心子系统

### 1. Claude Code 配置
- **管辖内容**: CLAUDE.md配置、工具权限、环境变量
- **入口**: [[01-全库工作总览MOC]] → Claude Code配置
- **优先级**: 最高，AI启动第一读

### 2. OpenClaw 任务执行
- **管辖内容**: 任务分发、执行路由、结果汇总
- **入口**: [[01-全库工作总览MOC]] → OpenClaw执行系统
- **优先级**: 高，复杂任务协同

### 3. Codex 路由判断
- **管辖内容**: 任务类型判断、路由规则、文稿检索
- **入口**: [[02-AI读取入口MOC]] → Codex路由
- **优先级**: 高，任务分发入口

### 4. 模型路由
- **管辖内容**: Sonnet/Haiku/Opus选择策略、上下文管理
- **入口**: [[01-全库工作总览MOC]] → 模型路由
- **优先级**: 中高，资源优化

### 5. Feishu 飞书桥接
- **管辖内容**: 飞书消息推送、知识库同步、审批流
- **入口**: [[01-全库工作总览MOC]] → Feishu桥接
- **优先级**: 中，通知和协作

### 6. Obsidian 治理规则
- **管辖内容**: Properties标准化、MOC创建规则、质量评级体系
- **入口**: [[01-全库工作总览MOC]] → Obsidian治理
- **优先级**: 高，知识库结构保证

## Obsidian Properties 标准

```yaml
---
title: "文稿名称"
aliases: ["别名1", "别名2"]
tags: ["tag1", "tag2"]
topic: "主题"
created: "2026-05-17"
updated: "2026-05-17"
type: "note"  # note/moc/decision/content
status: "active"  # active/archived
quality_level: "A"  # S/A/B/C/D
summary_cn: "100-200字中文说明"
summary_en: "English summary"
one_sentence_summary: "一句话核心作用"
decision_value: "帮助什么决策"
review_note: "为什么保留这个评级"
category: "分类"
platform: ["平台1", "平台2"]
industry: ["行业1", "行业2"]
scenario: ["场景1", "场景2"]
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - type: "part_of"
    target: "[[MOC路径]]"
    note: "关系说明"
related:
  - "[[文稿路径]]"
retrieval_keywords: ["关键词1", "关键词2"]
---
```

## MOC 创建规则

1. **S级MOC条件**:
   - 全库唯一入口（如全库总览、AI入口）
   - 业务唯一总入口（如食品机械作战）
   - 核心决策系统（如决策系统）

2. **MOC结构要求**:
   - 必须有完整frontmatter
   - 必须有中文/英文总结
   - 必须有一句话结论
   - 必须有适用/不适用场景
   - 必须有核心文稿索引
   - 必须有决策入口
   - 必须有维护规则

3. **MOC维护**:
   - 季度审查质量评级
   - 年度审视存留必要性
   - D级文稿不进入MOC

## 质量评级体系

| 级别 | 定义 | 来源 |
|-----|------|------|
| **S级** | 终局文稿，主入口 | MOC/核心决策 |
| **A级** | 核心文稿，成熟度高 | 终局文稿 |
| **B级** | 标准文稿，有框架 | 工作目录 |
| **C级** | 过程稿，待完善 | 工作目录 |
| **D级** | 碎片，待整理 | 碎片 |

## 模型路由策略

| 任务类型 | 推荐模型 | 理由 |
|---------|---------|------|
| 复杂推理/决策 | Opus | 强推理能力 |
| 快速任务/路由 | Haiku | 低延迟 |
| 平衡任务 | Sonnet | 性价比 |
| 代码/技术任务 | Sonnet 4 | 代码能力强 |
| 长文本分析 | Opus | 上下文长 |

## 多Agent协同规则

```
主Agent（Claude Code）
  ├── 任务分解 → 子任务队列
  ├── 路由分发 → OpenClaw/Codex
  ├── 结果汇总 → 主Agent处理
  └── 用户反馈 → 最终输出
```

## Feishu 桥接配置

| 功能 | 配置 | 用途 |
|-----|------|------|
| 消息推送 | webhook | 任务完成通知 |
| 知识库同步 | API | Obsidian→飞书 |
| 审批流 | 表单 | 报价审批 |

## AI检索协议

- [[AI检索执行协议]]
- [[AI检索路由配置]]

说明它们属于：

1. AI检索协议
2. 模型路由配置
3. 多Agent执行标准
4. Claude Code / OpenClaw / Codex 协同规则

## 相关MOC

- [[00-总指挥部/03-MOC/01-全库工作总览MOC]]（全库总入口）
- [[00-总指挥部/03-MOC/02-AI读取入口MOC]]（AI读取结构）

## 维护规则

- AI工具更新需同步本MOC
- 模型路由策略调整需更新本MOC
- Obsidian Properties变更需更新本MOC
- Feishu桥接配置变更需通知相关人