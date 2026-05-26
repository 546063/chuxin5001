---
title: Learning Pack Skill 安装与使用指南
topic: ''
created: '2026-04-21'
updated: '2026-05-17'
type: resource
status: active
quality_level: A
summary_cn: Learning Pack Skill 安装与使用指南是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Learning Pack - 安装与使用指南. Reference for business decisions.
one_sentence_summary: Learning Pack Skill 安装与使用指南: AI工具核心方法和实战经验。
decision_value: Build AI automation workflows and scripts
review_note: Core AI automation playbook
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
  - - 安装
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 需要后续搜索的内容
  - - 段落追加
  - - 相关案例
  - - 编辑
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






---
# Learning Pack Skill · 安装与使用指南

## 一句话总结
1. 创建目录

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
## 一、安装（老板复制粘贴即可）

1. 创建目录
```bash
mkdir -p ~/.hermes/skills/learning-pack/output
```

2. 把 SKILL.md 放到：`~/.hermes/skills/learning-pack/SKILL.md`

3. 让 Hermes 感知这个 Skill
编辑 `~/.hermes/SOUL.md`，在 "Skills" 或 "Tools" 段落追加：
```
### learning-pack
路径: ~/.hermes/skills/learning-pack/SKILL.md
用途: 任何学科/技能的学习资料生成器
触发: 用户说"学"、"入门"、"速查"、"知识卡"、"考试"、"帮我整理 XX 的资料"时自动调用
优先级: 高（学习类需求默认走此 Skill，不要直接在对话里回答）
```

4. 验证安装：重启 Hermes 或发消息 `列出你当前可用的 Skills`，应该看到 learning-pack 出现。

## 二、使用姿势

### 标准调用
- 老板：`帮我整理一份 Rust 所有权机制的学习包`
- Hermes 应该：先问 Step 0 的 3 个对齐问题（深度/存量/语言）→ 调研 5+ 信源 → 产出 4 个文件 → 汇报交付摘要

### 快速调用（已经明确的情况）
- 老板：`给我 HS 编码实务的学习包，工作用，有外贸框架但细节模糊，中英混合`
- 直接给足 3 个参数，Hermes 跳过 Step 0 问答，直接开工。

### 归档到 Obsidian
Skill 产出在内部目录，不自动进 vault（保持"用完手动归档"的偏好）。
归档时建议路径：`iCloud Drive/Obsidian/Learning/<domain>/<topic>/`

## 三、和 Frontmatter 规范化项目的衔接

1. 先跑 Prompt A（frontmatter 第一步）→ 产出 02_schema_v2.md
2. 审核 schema v2，确认字段定稿
3. 用定稿 schema 回写 Skill B 的 SKILL.md 里的 frontmatter 模板
4. 从此 Skill B 的产出直接符合 vault 规范，可无摩擦归档

## 四、测试用例（验证 Skill 工作正常）

1. **查即用测试**：打开 Obsidian，搜 00_cheatsheet.md 的 aliases 里的任一词，应该秒出
2. **精度测试**：挑 3 个事实性陈述，倒查信源附录，每条必须能找到出处
3. **原子性测试**：Anki 卡里随机抽 5 张，每张的 Back 只能有 1 个考点

## 五、常见问题

- **速查卡和精要手册为什么要分开？** 用途不同。速查卡是"工作中Ctrl+F"场景；精要手册是"周末通读建模型"。合并会两头都不讨好。
- **不用 Anki 怎么办？** 即使不用 Anki，题库也是"自测清单"。建议保留，每月用它做一次自我检查。
- **MOC 体系会冲突吗？** 不会。Skill 产出的 MOC 是"主题级"，全局 MOC 应该 link 到它。

## 六、下一步扩展建议

- 联动 reminder：产出时自动创建复习提醒
- 联动 Claude Skills：同步到 `~/.claude/skills/`
- 多语言层：核心概念自动生成西语版
- "业务连接"层：每个学习包末尾自动生成业务应用点

## 相关
- [[15-AI自动化工兵营/02-AI工作流/Learning Pack - SKILL 定义]]
- [[15-AI自动化工兵营/02-AI工作流/Learning Pack - 需求文档]]
- [[15-AI自动化工兵营/02-AI工作流/Obsidian Frontmatter 规范化 Step1]]
- Hermes Skill 体系总览

---
## 关联笔记
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]] — 安装的目标文件SKILL.md的完整定义
- [[10-AI工具与自动化/工作流/Learning Pack - 需求文档]] — 安装后的验收标准来自需求文档
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]] — 安装指南中衔接frontmatter规范化项目
- [[15-AI自动化工兵营/02-AI工作流/Code Review - 审查大师脚本]] — 同属Hermes技能体系，安装方式类似
- [[15-AI自动化工兵营/11-Hermes/awesome-hermes-agent]] — 任务追踪中包含Skill安装进度
- [[01-记忆与配置/配置/SOUL]] — SOUL.md中注册Skill的配置方法
- [[11-智囊团与知识蒸馏/MOC]] — 技能体系总索引
- [[15-AI自动化工兵营/07-Claude code Memory与会话/ClaudeCode记忆|Obsidian Vault]] — 归档到vault的建议路径
- [[00-方案总览|知识管理]] — 知识管理工具链
- [[11-AI技能与智囊团/开发与运维/软件开发-索引|查即用测试]] — 验证Skill工作的三种测试方法
- [[01-记忆与配置/配置/SOUL|Frontmatter模板]] — Skill产出的frontmatter模板
- [[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]] — Hermes AI Agent系统
- [[11-AI技能与智囊团/AI自动化/OpenClaw导入技能-索引|Claude Skills]] — 与Claude Skills生态的联动建议
- [[00-索引与导航/00-首页MOC|MOC体系]] — MOC索引体系设计
- [[15-AI自动化工兵营/02-AI工作流/Learning Pack - 安装与使用指南|学习包归档]] — 归档到Obsidian的路径和方法

## 标签
#工具/Hermes #类型/安装指南 #主题/技能部署 #状态/活跃 #领域/DevOps

## Frontmatter 建议
- **aliases**: [Learning Pack安装, 学习包安装, Skill安装指南, Hermes Skill部署, Learning Pack使用, 学习包使用, SKILL.md安装, Hermes技能安装, Learning-Pack-Setup, 技能部署指南, Hermes Skill配置, 学习技能安装, SOUL.md配置, Skill注册, 归档到Obsidian]
- **type**: resource
- **related**: ["[[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]", "[[10-AI工具与自动化/工作流/Learning Pack - 需求文档]]", "[[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]", "[[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]", "[[01-记忆与配置/配置/SOUL]]", "[[11-智囊团与知识蒸馏/MOC]]", "[[01-记忆与配置/记忆/ClaudeCode记忆|Obsidian Vault]]", "[[11-AI技能与智囊团/开发与运维/软件开发-索引|查即用测试]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]"]

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
