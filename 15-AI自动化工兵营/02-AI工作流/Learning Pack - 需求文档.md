---
title: Learning Pack 需求文档（给 Hermes 的搭建任务书）
topic: ''
created: '2026-04-21'
updated: '2026-05-17'
type: biz
status: active
quality_level: B
summary_cn: Learning Pack 需求文档（给 Hermes 的搭建任务书）是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding Learning Pack - 需求文档. Reference for business decisions.
one_sentence_summary: Learning Pack 需求文档（给 Hermes 的搭建任务书）: AI工具核心方法和实战经验。
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
  - - 运维
  - - 适合场景
  - - 有什么风险需要注意
  - - 需求文档
  - - 待补充
  - - 需要补充的数据
  - - 个月后遇到问题只能重新搜一遍
  - - 主力笔记在
  - - 看过的东西
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






---
# 学习资料生成技能 · 给 Hermes 的搭建任务书

## 一句话总结
- 一人公司创始人，时间稀缺，不愿意重复记忆同一件事

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
## 一、老板背景

- 一人公司创始人，时间稀缺，不愿意重复记忆同一件事
- 主力笔记在 Obsidian（iCloud 同步 Mac/iPhone），已有旧 frontmatter 规范（正在迭代到 v2）
- 工作场景高频：外贸获客 / AI 工具配置 / 鱼缸养护 / IT 运维 / 市场研究
- **核心痛点：知识摄入后找不回来。看过的东西，3 个月后遇到问题只能重新搜一遍**

## 二、一句话目标

> 让老板学过的任何东西，3 个月后遇到相关问题，能在 5 秒内从 Obsidian 里调出答案。

## 三、使用场景

### 场景 A：随手调用（最高频，每周 2-3 次）
老板说"帮我整理一份 XX 的学习包" → Hermes 识别学习需求 → 最多问 2-3 个对齐问题 → 开工 → 汇报摘要

### 场景 B：秒级检索（最终价值）
几周后在 Obsidian 搜任何关键词（中文别名/英文术语/报错片段/错误拼写） → 3 秒内命中速查卡

### 场景 C：系统复习（月度或周末）
从 MOC 索引进入 → 按推荐顺序读精要手册 → 周末用抽认卡回顾

## 四、产出物分层要求

| 层级 | 解决什么 | 大小 | 形态要求 |
|------|---------|------|---------|
| 速查卡 | 工作中 Ctrl+F 秒查 | 手机2屏内 | 卡片化问答，表格优先，关键词密度高 |
| 精要手册 | 周末通读建心智模型 | 30-60分钟读完 | 结构化章节，≥3张图，有自测 |
| 抽认卡 | 硬记事实/公式 | 30+张 | 每卡单一知识点，标准 Anki 格式 |
| MOC 索引 | 未来再进入该领域的入口 | 短 | 链接汇总，不同时间预算的学习路径 |

## 五、Frontmatter 要求（检索能跑通的关键）

**硬规则**：
- 扁平化（不嵌套）
- 小写+连字符（Dataview 友好）
- 预定义字段优先

**必须字段**：
- `title` — 标题
- `aliases` — 查即用命门，覆盖所有可能搜索词（中英+俗称+报错+错误拼写）
- `tags` — 至少两级
- `summary` — 60字内一句话
- `type` — cheatsheet / handbook / anki-deck / moc
- `topic` — 主题 slug，4个文件一致
- `created` — 日期
- `mastery` — 入门/学习中/熟练/参考

**aliases 设计举例**（主题"Rust 所有权"）：
`[Rust 所有权, ownership, borrow checker, 借用检查, 生命周期, lifetime, cannot borrow as mutable, E0382, "value used after move", 移动语义]`

## 六、信源质量要求

- 一级优先，二级验证，三级仅术语对齐
- 每主题 ≥5 独立信源交叉验证
- 每条关键事实可追溯 URL
- 禁用：营销软文、SEO 垃圾、无署名大全、过期 3 年技术文档
- 信源冲突：标注"存在分歧"列各方观点；一级失败用 3 个二级替代

## 七、自动触发关键词

学习：学/入门/搞懂/整理资料/知识卡/抽认卡/Anki
速查：速查/cheatsheet
考试：考试/认证/复习/备考
开放：我想了解/给我一份/帮我系统化

**不触发**：一次性具体问题 / 新闻 / 实操 SOP

## 八、存储与归档

- 生成阶段：`~/.hermes/skills/learning-pack/output/<topic-slug>/`
- 不自动写入 vault
- 归档建议路径：`iCloud Drive/Obsidian/Learning/<domain>/<topic>/`

## 九、质量自检清单

- [ ] 4 文件齐全同目录
- [ ] 每文件 frontmatter 完整
- [ ] aliases ≥8 个
- [ ] 速查卡 < 2 屏手机
- [ ] 精要手册 ≥3 张图
- [ ] 抽认卡每张单一考点
- [ ] 信源 ≥5 个可追溯
- [ ] 无 AI 腔
- [ ] topic 字段一致

## 十、老板验收动作

1. **查即用**：随机选速查卡 aliases 一个词搜 → 3 秒命中
2. **精度**：3 个事实陈述倒查信源 → 每条找到出处
3. **原子性**：抽 5 张 Anki 卡 → 每张 Back 只有 1 个考点

## 相关
- [[15-AI自动化工兵营/02-AI工作流/Learning Pack - SKILL 定义]]
- [[15-AI自动化工兵营/02-AI工作流/Learning Pack - 安装与使用指南]]
- [[15-AI自动化工兵营/02-AI工作流/Obsidian Frontmatter 规范化 Step1]]

---
## 关联笔记
- [[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]] — 本需求文档对应的Skill技术定义
- [[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]] — 安装部署和测试流程
- [[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]] — 产出物frontmatter的字段规范来源
- [[15-AI自动化工兵营/02-AI工作流/Code Review - 审查大师脚本]] — 同属Hermes技能体系的另一个Skill
- [[15-AI自动化工兵营/11-Hermes/awesome-hermes-agent]] — 任务追踪中包含Learning Pack开发进度
- [[15-AI自动化工兵营/08-Claude-Code/模型及建议 各个模型版|速查卡]] — 产出物层级1：速查卡的设计要求
- [[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|精要手册]] — 产出物层级2：精要手册的设计要求
- [[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|抽认卡]] — 产出物层级3：Anki格式抽认卡设计要求
- [[00-索引与导航/00-首页MOC|MOC索引]] — 产出物层级4：内容地图索引设计要求
- [[01-记忆与配置/配置/SOUL|aliases设计策略]] — aliases宁多勿少的设计原则
- [[14-学习与成长/政策周报/00-README-使用说明|信源质量标准]] — 信源优先级和交叉验证要求
- [[00-方案总览|知识检索]] — 5秒检索的核心目标
- [[00-方案总览|一人公司]] — 老板背景：时间稀缺的一人公司创始人
- [[15-AI自动化工兵营/07-Claude code Memory与会话/ClaudeCode记忆|Obsidian Vault]] — 笔记存储在iCloud同步的Obsidian vault
- [[11-智囊团与知识蒸馏/MOC]] — 技能体系总索引
- [[01-记忆与配置/配置/SOUL]] — Hermes的SOUL.md配置文件

## 标签
#工具/Hermes #类型/需求文档 #主题/学习资料生成 #状态/活跃 #领域/知识管理

## Frontmatter 建议
- **aliases**: [Learning Pack需求, 学习包需求, 学习资料生成需求, Hermes学习技能, 知识卡需求, 速查卡生成, Anki生成需求, Learning-Pack-Requirements, 学习包任务书, Hermes Skill需求, 知识摄入系统, 学习技能需求文档, 查即用系统, 5秒检索, 知识卡片生成器]
- **type**: biz
- **related**: ["[[10-AI工具与自动化/工作流/Learning Pack - SKILL 定义]]", "[[10-AI工具与自动化/工作流/Learning Pack - 安装与使用指南]]", "[[10-AI工具与自动化/工作流/Obsidian Frontmatter 规范化 Step1]]", "[[10-AI工具与自动化/工作流/Code Review - 审查大师脚本]]", "[[10-AI工具与自动化/Hermes配置/awesome-hermes-agent]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|速查卡]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|精要手册]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版|抽认卡]]", "[[00-索引与导航/00-首页MOC|MOC索引]]", "[[01-记忆与配置/配置/SOUL|aliases设计策略]]"]

## 关联笔记
- [[10-AI工具与自动化/MOC]]
- [[10-AI工具与自动化/工作流/Hermes技能体系/Hermes技能体系 MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
