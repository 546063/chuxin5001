---
title: Learning Pack Skill 定义 (SKILL.md)
topic: ''
created: '2026-04-21'
updated: '2026-05-17'
type: 技能定义
status: active
quality_level: B
summary_cn: Learning Pack Skill 定义 (SKILL.md)是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Learning Pack - SKILL 定义. Reference for business decisions.
one_sentence_summary: Learning Pack Skill 定义 (SKILL.md): AI工具核心方法和实战经验。
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
  - - 通用学习资料生成技能
  - - 适合场景
  - - 输出顺序必须对应这个优先级
  - - 待补充
  - - 有什么风险需要注意
  - - 需要补充的数据
  - - 帮我搞懂
  - - 需要后续搜索的内容
  - - 才算完成
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---







---
# Learning Pack · 通用学习资料生成技能

## 一句话总结
1. **查即用 > 系统精通 > 考试 > 入门** — 输出顺序必须对应这个优先级

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
## 设计哲学

1. **查即用 > 系统精通 > 考试 > 入门** — 输出顺序必须对应这个优先级
2. **精准 > 丰富** — 每一页都要能独立成立，能被搜索到，能被秒懂
3. **沉淀到 Obsidian 才算完成** — 所有产出必须带扁平化 frontmatter + aliases + summary

## 何时触发

用户说：`我想学 XX` / `帮我搞懂 YY` / `XX 知识卡` / `XX 速查` / `XX 考试重点` / `帮我整理 XX 的资料`

**不触发**：一次性答疑 / 实操步骤(SOP) / 新闻时效信息

## 执行流程（严格五步）

### Step 0：范围校准（必须问，不可跳过）
1. 深度边界：工作用 / 个人兴趣 / 认证考试？
2. 存量知识：零基础 / 有框架模糊 / 熟练需系统化？
3. 输出语言：中文 / 中英混合 / 英文？

如果用户首条消息已包含某些信息，只问缺的部分。

### Step 1：信源调研与取舍

**信源优先级**：
1. 一级（权威）：官方文档/规范/白皮书/顶级教材/法规原文
2. 二级（实践）：顶级从业者博客/Stack Overflow 高赞/行业协会报告
3. 三级（入门）：Wikipedia/高质量教程（MDN/Real Python）

**禁用**：营销软文、SEO 垃圾站、无署名"XX大全"、过期 3 年技术文档

**调研动作**：最少 5 个独立信源交叉验证，记录 URL + 访问日期

### Step 2：四层产出结构

输出目录：`~/.hermes/skills/learning-pack/output/<topic-slug>/`

| 层级 | 文件 | 定位 | 要求 |
|------|------|------|------|
| 1 | `00_cheatsheet.md` | 速查卡 | ≤2屏手机，Q&A格式，关键词密度高 |
| 2 | `01_handbook.md` | 精要手册 | 3000-6000字，≥3张图，每章有自测 |
| 3 | `02_anki.md` | 抽认卡 | ≥30张，每卡单一知识点，标准Anki格式 |
| 4 | `03_moc.md` | MOC索引 | 三层地图+学习路径建议+信源清单 |

### Step 3：精准度自检（交付前必做）

- aliases 覆盖所有搜索入口？
- 每个事实性陈述有信源？
- 抽认卡每张只考一个点？
- 精要手册有 ≥3 张结构性图？
- 4 个文件 topic 字段完全一致？
- 无 AI 味空话？

### Step 4：交付格式

汇报产出摘要 + 信源统计 + 建议下一步

## Frontmatter 模板（通用扁平版）

```yaml
---
title: <标题>
aliases: [<别名们，宁多勿少>]
tags: [learning/<type>, <domain>/<topic>]
created: <YYYY-MM-DD>
summary: <一句话60字内>
type: cheatsheet|handbook|anki-deck|moc
domain: <大类>
topic: <主题 slug>
mastery: 入门|学习中|熟练|参考
---
```

## 使用边界

**适合**：技术栈学习、商业知识、外语入门A2、行业认证、硬技能
**不适合**：高度主观创作类、大量实操反馈类、快速变化资讯类

## 失败模式

1. 速查卡写成精要手册 → 重做速查卡
2. 所有文件 aliases 一样 → 每个文件针对搜索场景定制
3. 抽认卡一卡考多点 → 拆卡
4. 精要手册没图 → 至少补 1 张总览图
5. 产出有 ChatGPT 腔 → 重写为直陈句

## 相关
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]
- [[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]

---
## 关联笔记
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]] — 本Skill定义的业务需求来源
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]] — 部署和使用方法
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]] — frontmatter模板的字段规范来源
- [[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]] — 同属Hermes技能体系的另一个Skill
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — 任务追踪中的Skill开发状态
- [[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|速查卡]] — 产出物层级1：00_cheatsheet.md的定义
- [[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|精要手册]] — 产出物层级2：01_handbook.md的定义
- [[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|抽认卡]] — 产出物层级3：02_anki.md的定义
- [[00-索引与导航/00-首页MOC|MOC索引]] — 产出物层级4：03_moc.md的定义
- [[14-学习与成长/政策周报/00-README-使用说明|信源优先级]] — 一级/二级/三级信源分类标准
- [[00-方案总览|失败模式]] — 五种常见失败和修复方法
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC|技能触发条件]] — 自然语言触发关键词列表
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC|精准度自检]] — 交付前的六项质量检查
- [[01-记忆与配置/配置/SOUL|Frontmatter模板]] — 通用扁平版frontmatter模板
- [[11-智囊团与知识蒸馏/MOC]] — 技能体系总索引
- [[00-方案总览|知识管理]] — Obsidian知识管理体系
- [[01-记忆与配置/配置/SOUL]] — Hermes的Skill注册机制

## 标签
#工具/Hermes #类型/Skill定义 #主题/学习资料生成 #状态/活跃 #领域/AI技能

## Frontmatter 建议
- **aliases**: [SKILL定义, Learning Pack Skill, 学习包技能, 学习资料生成Skill, SKILL.md, Hermes学习技能, 知识卡生成, 速查卡生成器, Anki生成技能, Learning-Pack-Skill, 五步学习流程, 信源调研技能, 四层产出结构, 通用学习资料生成, Hermes技能定义, 知识沉淀技能]
- **type**: learning
- **related**: ["[[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]", "[[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]", "[[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]", "[[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|速查卡]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|精要手册]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|抽认卡]]", "[[00-索引与导航/00-首页MOC|MOC索引]]", "[[14-学习与成长/政策周报/00-README-使用说明|信源优先级]]", "[[11-智囊团与知识蒸馏/MOC]]"]

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
