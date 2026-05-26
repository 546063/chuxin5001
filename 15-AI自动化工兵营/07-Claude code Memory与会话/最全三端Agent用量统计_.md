---
title: 最全三端Agent用量统计_
topic: ''
created: '2026-04-17'
updated: '2026-05-17'
type: resource
status: active
quality_level: B
summary_cn: 最全三端Agent用量统计_是关于AI工具的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding 最全三端Agent用量统计_. Reference for business decisions.
one_sentence_summary: 最全三端Agent用量统计_: AI工具核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
category: AI工具
platform: 多平台
industry: AI
scenario: 会话管理
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: ''
related:
retrieval_keywords:
  - - 对跨境贸易的价值
  - - 适合场景
  - - 有什么风险需要注意
  - - 待补充
  - - 需要补充的数据
  - - 三端
  - - 核心指标汇总
  - - 这个方法的核心是什么
  - - 用量统计
  - - 需要后续搜索的内容
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---






# 三端 Agent 用量统计汇总

## 一句话总结
# 三端 Agent 用量统计汇总

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
## 统计周期
2026-04-01 ~ 2026-04-17 (17天)

---

## 一、各 Agent 核心指标汇总

### 表格总览

| Agent | 会话数 | 消息数 | 工具调用 | Input Tokens | Output Tokens | Total Tokens |
|-------|--------|--------|----------|--------------|---------------|--------------|
| **Hermes** | 386 | 7,765 | 3,293 | 11,332,233 | 618,121 | **11,950,354** |
| **OpenClaw** | - | - | 1,482 | - | - | - |
| **Claude Code CLI** | 7 | - | 293(事件) | - | - | - |

> 注：OpenClaw 任务周期为 4.10-4.17，Claude Code CLI 为 4.09-4.15

---

## 二、详细数据

### 1. Hermes 核心指标

| 指标 | 数值 |
|------|------|
| 会话数 | 386 |
| 消息数 | 7,765 |
| 工具调用 | 3,293 |
| Input Tokens | 11,332,233 |
| Output Tokens | 618,121 |
| Total Tokens | 11,950,354 |
| Cache Read | 4,317,186 |

#### 按模型分布 (Total Tokens)

| 模型 | 会话数 | 消息数 | 工具调用 | Total Tokens | 占比 |
|------|--------|--------|----------|--------------|------|
| MiniMax-M2.5 | 93 | 7,235 | 3,185 | 11,528,074 | 96.5% |
| GLM-4.7 | 245 | 311 | 28 | 117,100 | 1.0% |
| MiniMax-M2.5-highspeed | 1 | 0 | 0 | 174,106 | 1.5% |
| glm-4.7 | 6 | 142 | 65 | 81,331 | 0.7% |
| deepseek-chat | 2 | 16 | 7 | 24,657 | 0.2% |
| MiniMax-M2.7 | 1 | 20 | 8 | 24,344 | 0.2% |
| Others | 38 | 41 | 0 | 0 | 0% |

#### 来源分布

| 来源 | 会话数 | 消息数 | 工具调用 | 占比 |
|------|--------|--------|----------|------|
| CLI | 60 | 2,999 | 1,328 | 40% |
| Feishu | 47 | 2,052 | 870 | 27% |
| Telegram | 27 | 2,109 | 921 | 28% |
| Cron | 244 | 339 | 60 | 5% |

#### 工具调用 Top 10

1. terminal: 1,990 (63%)
2. web_search: 234
3. read_file: 168
4. execute_code: 159
5. patch: 94
6. search_files: 78
7. write_file: 65
8. skill_view: 59
9. browser_navigate: 46
10. process: 46

---

### 2. OpenClaw 核心指标

> 数据周期: 2026-04-10 ~ 2026-04-17

| 指标 | 数值 |
|------|------|
| 总任务数 | 1,482 |
| 成功 | 1,432 (96.6%) |
| 失败 | 46 (3.1%) |
| 运行中 | 3 |
| 丢失 | 1 |

#### 按任务类型分布

| 类型 | 数量 | 成功率 |
|------|------|--------|
| cron | 1,381 | 96.6% |
| cli | 58 | - |
| subagent | 43 | - |

#### 按标签分布 (Top 5)

| 标签 | 数量 |
|------|------|
| ClaudeCode代码变更监控 | ~1,347 |
| 每日新闻推送 | ~21 |
| 其他任务 | ~109 |

---

### 3. Claude Code CLI 核心指标

> 数据周期: 2026-04-09 ~ 2026-04-15
> 数据来源: ~/.claude/telemetry/

| 指标 | 数值 |
|------|------|
| 版本 | 2.1.109 |
| 状态 | ✅ 已安装 |
| 事件总数 | 293 |
| 独立会话数 | 7 |

#### 按日期分布

| 日期 | 事件数 |
|------|--------|
| 2026-04-09 | 41 |
| 2026-04-13 | 3 |
| 2026-04-15 | 249 |

#### 按模型使用分布 (telemetry)

| 模型 | 使用次数 | 占比 | 备注 |
|------|----------|------|------|
| **MiniMax-M2.7-highspeed** | 247 | 84.0% | 主要使用 (第三方) |
| claude-sonnet-4-6 | 39 | 13.3% | 官方 Anthropic |
| claude-haiku-4-5-20251001 | 4 | 1.4% | 官方 Anthropic |
| openai/glm-4-plus | 3 | 1.0% | 智谱 GLM |

#### 配置的模型 Profile

| Profile | 模型 | API |
|---------|------|-----|
| minimax | MiniMax-M2.5-highspeed | MiniMax |
| deepseek | deepseek-chat | DeepSeek |
| kimi | kimi-k2 | Kimi |
| glm47 | glm-4-flash | 智谱 |
| glm5turbo | glm-5-turbo | 智谱 |
| minimax_m27 | MiniMax-M2.7 | MiniMax |

> ⚠️ Claude Code CLI telemetry 不记录 Token 消耗，需查询各模型 API 后台

---

## 三、三端合计

| 维度                  | 数值         |
| ------------------- | ---------- |
| Hermes Total Tokens | 11,950,354 |
| OpenClaw 任务数        | 1,482      |
| Claude Code CLI 事件数 | 293        |
| Hermes 工具调用         | 3,293      |
| 总工具调用               | 4,775      |
|                     |            |

---

## 四、数据限制说明

1. **Hermes**: Input/Output Token 拆分完整，包含 Cache Read 统计
2. **OpenClaw**: 不记录 Token 消耗，只记录任务执行次数和成功率
3. **Claude Code CLI**: 免费版不记录 Token，需要企业订阅

---

## 五、费用参考

如需精确计算费用，需分别查询各平台后台:
- **MiniMax 后台**: Hermes 主要消耗 (11.9M tokens)
- **智谱 (GLM) 后台**: ~198K tokens
- **DeepSeek 后台**: ~25K tokens

---

## 六、更新日志

| 日期 | 更新内容 |
|------|----------|
| 2026-04-17 | 初始记录 (4.01-4.17) 三端汇总 |

---
## 关联笔记
- [[15-AI自动化工兵营/08-Claude-Code/模型及建议 各个模型版]] — 五段路由架构的模型选择依据
- [[15-AI自动化工兵营/07-Claude code Memory与会话/Hermes模型用量统计_2026-04]] — Hermes 4月详细模型分布
- [[10-AI工具与自动化/OpenClaw配置/openclaw 模型使用情况全部]] — OpenClaw全量模型使用统计
- [[15-AI自动化工兵营/08-Claude-Code/ClaudeCode配置]] — Claude Code多模型轮转配置和Key清单
- [[15-AI自动化工兵营/07-Claude code Memory与会话/最全三端Agent用量统计_]] — 统一用量统计系统（cc_connect/crewai/hermes/open）
- [[18-个人学习与成长/03-商业人物/Karpathy认知框架]] — 龙虾智能体平台的配置，含Hermes/OpenClaw

## 标签
#类型/资源 #主题/用量统计 #主题/Agent #主题/Hermes #主题/OpenClaw #主题/Claude-Code #状态/活跃

## Frontmatter 建议
- **aliases**: [三端用量统计, Agent用量汇总, Hermes OpenClaw Claude Code统计]
- **type**: resource
- **related**: ["[[01-记忆与配置/用量统计/Hermes模型用量统计_2026-04]]", "[[10-AI工具与自动化/OpenClaw配置/openclaw 模型使用情况全部]]", "[[10-AI工具与自动化/Claude配置/模型及建议 各个模型版]]", "[[01-记忆与配置/用量统计/最全三端Agent用量统计_]]"]

## 关联笔记
- [[01-记忆与配置/MOC]]
- [[10-AI工具与自动化/MOC]]


## 相关知识点
- [[AI工作流]]
- [[AI工具]]
- [[AI自动化]]
- [[Obsidian知识库]]
- [[ClaudeCode]]
