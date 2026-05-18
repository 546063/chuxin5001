---
title: "\"mnemo-hermes安装配置\""
topic: "\"\""
created: "\"2026-05-03\""
updated: "2026-05-17"
type: "\"learning\""
status: "\"active\""
quality_level: "\"B\""
summary_cn: "\"## 适用场景 - 适合平台： - 适合行业： - 适合场景：相关文档\""
summary_en: "\"Document regarding mnemo-hermes安装配置. Reference for business and personal development.\""
one_sentence_summary: "\"# mnemo-hermes 安装配置指令  ## 一句话总结 # mnemo-hermes 安装配置指令  ## 核心...\""
decision_value: "\"中\""
review_note: "\"课程笔记与学习资源\""
category: "\"学习资源\""
platform: "\"多平台\""
industry: "\"多行业\""
scenario: "\"学习\""
source_files: "[]"
merged_from: "[]"
old_versions: "[]"
archived_reason: "[]"
relations: "\"\""
related:
retrieval_keywords:
  - - - 义乌外贸案例复盘
  - - - 硅谷101科技商业案例
  - - - 跨海电波商业认知
  - - - 创业增长认知笔记
  - - - 播客商业启发笔记
  - - --
  - --
routing_target:
  - "[[16-学习成长蒸馏MOC]]"
---





# mnemo-hermes 安装配置指令

## 一句话总结
# mnemo-hermes 安装配置指令

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
## 给 Hermes 的提示词（可直接复制粘贴）

```
任务：给我的知识体系做分层改造，不要动 MEMORY.md 上限（保持 2200/1375）。

请按顺序执行：

1. 编辑 ~/.hermes/config.yaml，在 memory 节下加 nudge_interval: 0 和 flush_on_idle: false；在 sessions 节下加 retention_days: 0。改动前先 cp 一份 config.yaml.bak。

2. 安装 mnemo-hermes 插件（GitHub: hernanqwz/mnemo-hermes），用它的 Ollama 本地模式，嵌入模型选 nomic-embed-text。

3. 配置 mnemo-hermes 的索引路径指向我的 Obsidian vault：
/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/
让我确认 vault 名后再写入配置。

4. 安装完成后跑一次 hermes doctor，确认所有组件健康。

5. 输出一份"今后怎么用"的速查表：什么时候用 memory 工具写 MEMORY.md，什么时候让 mnemo_remember 存进向量库，什么时候直接写 Obsidian 笔记。

全程汇报每一步结果，遇到报错停下来问我。
```

## 前提确认

- [ ] Ollama 已安装（`ollama --version` 能返回版本）
- [ ] nomic-embed-text 模型已下载（`ollama pull nomic-embed-text`）
- [ ] 我的 Obsidian vault 在 iCloud 路径：~/Library/Mobile Documents/iCloud~md~obsidian/Documents/

## 执行后速查表（Hermes 装完会输出，这里先预告结构）

| 场景 | 用什么 |
|------|--------|
| 凭证、密码、关键约束 | MEMORY.md（手动 memory 工具） |
| 偏好、称呼习惯、沟通风格 | USER.md（手动 memory 工具） |
| 会议结论、项目方案、临时灵感 | mnemo_remember（向量库） |
| 结构化文档、课程笔记、项目日志 | Obsidian（直接写 .md） |
| 问过去聊过什么 | session_search |

## 关于 MEMORY.md 上限

**不要调**（2200/1375 保持不变）：
- 调大会破坏 prefix cache，每次会话 token 成本上升
- 你的 MiniMax-M2.7 缓存命中率会下降（现在 36-40%）
- 超过 ~4000 字符后 LLM 反而记不住所有条目

**正确姿势：分层存储**

| 层 | 存什么 | 容量 |
|----|--------|------|
| MEMORY.md | 铁则/凭证/约束 | 2200 char 够用 |
| USER.md | 身份/偏好 | 1375 char 够用 |
| session_search | 所有历史会话 | 无限，SQLite FTS5 |
| mnemo-hermes | 语义知识 | 无限，Ollama 向量 |
| Obsidian | 大块文档/课程笔记 | 无限 |

## 禁用自动精简

config.yaml 加这两行：
```yaml
memory:
  nudge_interval: 0      # 关闭周期性 nudge
  flush_on_idle: false   # idle 时不自动 flush

sessions:
  retention_days: 0      # 0 = 永不删除会话
```

## 关联笔记
- [[14-学习与成长/MOC]]
- [[02-海外投流/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[00-学习指令]]
- [[10-日常提问模板]]


## 相关知识点
- [[学习资源]]
- [[方法论]]
- [[个人成长]]
- [[播客笔记]]
- [[书库]]
