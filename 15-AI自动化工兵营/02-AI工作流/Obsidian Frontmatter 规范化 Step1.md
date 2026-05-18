---
title: Obsidian Frontmatter 规范化 · Step 1
topic: ''
created: '2026-04-21'
updated: '2026-05-17'
type: resource
status: active
quality_level: B
summary_cn: Obsidian Frontmatter 规范化 · Step 1是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Obsidian Frontmatter 规范化 · Step 1. Reference for business decisions.
one_sentence_summary: Obsidian Frontmatter 规范化 · Step 1: AI工具核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
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
  - - 文件
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 禁止修改
  - - 需要后续搜索的内容
  - - 架构师
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
# Obsidian Frontmatter 规范化 · 第一步

## 一句话总结
你是老板的 AI 架构师。本次任务是知识体系升级项目的第一步：为现有 Obsidian vault 设计'迭代升级版' frontmatter 规范。

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
## 角色与边界

你是老板的 AI 架构师。本次任务是知识体系升级项目的第一步：为现有 Obsidian vault 设计"迭代升级版" frontmatter 规范。

**硬边界**：
- 本步骤 **禁止修改 vault 内任何 .md 文件**
- 本步骤 **禁止生成或运行 Python 脚本**
- 只读扫描 + 产出 Markdown 规范文档 + YAML 示例 + 验收用例
- 所有产出写入 `~/.hermes/projects/obsidian-frontmatter/step1/`

## 信源清单（必须全部调研）

### A. 权威文档
1. Obsidian 官方 Properties：https://help.obsidian.md/properties
2. Dataview 元数据：https://blacksmithgu.github.io/obsidian-dataview/annotation/add-metadata/
3. Obsidian YAML 规则

### B. 社区最佳实践
4. Obsidian 论坛 Properties Best Practices
5. 2025-2026 扁平化 vs 嵌套 frontmatter 讨论
6. Fork My Brain Obsidian Playbook

### C. AI+Obsidian 工作流
7. obsidian-auto-metadata / Text Generator 字段设计
8. Dataview (to) Properties 字段命名规范

### D. 老板 vault 实地扫描
9. 路径：`~/Library/Mobile Documents/iCloud~md~obsidian/Documents/`
10. 每个一级子目录随机抽 3 个 .md，提取 frontmatter key 频次统计

## 产出物（5 个文件）

### 1. `01_current_state.md` — 现状盘点
- 旧规则字段清单（字段名/频次/类型/示例/是否嵌套）
- 旧规则 3 个主要问题
- 笔记类型聚类

### 2. `02_schema_v2.md` — 新规范方案
**硬约束**：
- 扁平化（禁止嵌套 YAML）
- 全小写+连字符（如 `pub-date` 不用 `pubDate`）
- 预定义字段优先

**三层设计**：

| 层级 | 字段 | 说明 |
|------|------|------|
| 核心层（必填） | title / aliases / tags / created / updated / summary / type | 所有笔记都有 |
| 领域层（选填） | client / project / domain / difficulty / mastery / asset-id 等 | 按笔记类型 |
| 扩展层 | related / parents / children / moc | Dataview 查询用 |

字段数控制在 **20-35** 之间。

### 3. `03_migration_map.md` — 旧→新映射表

### 4. `04_yaml_examples.md` — 6种笔记类型样板
1. 业务获客  2. 学习卡片  3. 鱼缸日志  4. IT 配置  5. MOC 索引  6. 周记/晨会

### 5. `05_acceptance_tests.md` — 10+ 验收场景（Given-When-Then）

## 执行顺序

1. 读 A 组权威文档 → 3 条核心约束
2. 读 B/C 组社区实践 → 5 条避坑清单
3. 扫描 vault → `01_current_state.md`
4. 综合 → `02_schema_v2.md`
5. 映射 → `03_migration_map.md`
6. 样板 → `04_yaml_examples.md`
7. 验收 → `05_acceptance_tests.md`
8. 交付清单

## 验收口径

- 5 个文件齐全
- schema v2 字段数 20-35
- 6 种 YAML 示例通过语法校验
- 10+ 验收场景可执行
- 零嵌套、零 emoji key
- ≥3 处待决策点

## 相关
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]
- [[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]

---
## 关联笔记
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]] — Skill产出的frontmatter模板依赖本规范
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]] — 需求文档中的frontmatter要求引用本规范
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]] — 安装指南中与frontmatter规范化项目的衔接
- [[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]] — 审查脚本的frontmatter也遵循本规范
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — 任务追踪中包含frontmatter完整性验证
- [[11-AI技能与智囊团/系统工具/Obsidian整理-索引|Dataview查询]] — Dataview元数据依赖规范的frontmatter字段
- [[11-AI技能与智囊团/系统工具/Obsidian整理-索引|Obsidian Properties]] — Obsidian官方Properties功能
- [[01-记忆与配置/配置/SOUL|YAML Frontmatter]] — YAML语法规范
- [[01-记忆与配置/配置/SOUL|笔记类型分类]] — 6种笔记类型分类方法
- [[01-记忆与配置/配置/SOUL|扁平化设计]] — 禁止嵌套YAML的扁平化原则
- [[01-记忆与配置/配置/SOUL|aliases设计策略]] — aliases字段的设计和使用方法
- [[01-记忆与配置/配置/SOUL|tags命名规范]] — tags字段的命名规范
- [[11-智囊团与知识蒸馏/MOC]] — 技能体系索引
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — Hermes AI Agent系统总览
- [[00-方案总览|知识管理]] — Obsidian知识管理体系

## 标签
#工具/Obsidian #类型/规范文档 #主题/元数据 #状态/活跃 #领域/知识管理

## Frontmatter 建议
- **aliases**: [Frontmatter规范化, Obsidian规范, frontmatter规范, 元数据规范, YAML规范, Obsidian元数据, 属性规范化, Dataview友好, 笔记元数据, Step1, Obsidian Properties规范, 扁平化frontmatter, 字段命名规范, schema v2, 笔记分类规范, 知识体系升级]
- **type**: resource
- **related**: ["[[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]", "[[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]", "[[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]", "[[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]", "[[11-智囊团与知识蒸馏/MOC]]", "[[11-AI技能与智囊团/系统工具/Obsidian整理-索引|Dataview查询]]", "[[11-AI技能与智囊团/系统工具/Obsidian整理-索引|Obsidian Properties]]", "[[01-记忆与配置/配置/SOUL|笔记类型分类]]", "[[01-记忆与配置/配置/SOUL|aliases设计策略]]"]

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
