---
title: '"Obsidian相关 Skills 工作流"'
aliases: '[]'
tags:
  - - 知识库维护]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: A
summary_cn:
  - - 知识库。 > > **关键路径** — 核心 Skill 详解 → 工具组合使用场景 → 调用优先级建议。 > > **学习方式** — 新手建议先通读「核心
  - - Skill 详解」，了解每个 Skill 能做什么；再参考「工具组合使用场景」找到你的使用场景；相关文档'
summary_en: Document regarding Obsidian相关 Skills 工作流. Reference for business decisions.
one_sentence_summary: '"Obsidian相关 Skills 工作流"': AI工作流核心方法和实战经验。
decision_value: Build AI automation workflows and scripts
review_note: Core AI automation playbook
category: AI工作流
platform: '[Codex, Claude Code, Obsidian]'
industry: []
scenario: '[内容生成, 知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - 用途
  - - 能做什么
  - - 链接关系修复
  - - 名称
  - - 语法
  - - 学习方式
  - - 说明
  - - 本文档用途
  - - 工具链概览
  - - 新手建议先通读
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# Obsidian相关 Skills 工作流

> **本文档用途** — 说明 Codex 中 Obsidian 相关 Skills 的协作方式和调用场景，帮助你高效管理 Obsidian 知识库。
>
> **关键路径** — 核心 Skill 详解 → 工具组合使用场景 → 调用优先级建议。
>
> **学习方式** — 新手建议先通读「核心 Skill 详解」，了解每个 Skill 能做什么；再参考「工具组合使用场景」找到你的使用场景；最后查阅「调用优先级建议」作为速查。
>
> **注意事项** — 调用 Skill 时关键词很重要，如「修复 wikilinks」会优先触发 `obsidian-link-graph`。建议先了解关键词触发机制。

---

## Obsidian 工具链概览

| Skill 名称 | 用途 | 触发场景 |
|-----------|------|----------|
| `obsidian-markdown` | Obsidian Flavored Markdown 语法 | 任何 .md 文件操作 |
| `obsidian-link-graph` | 修复和强化双向链接 | 链接关系修复 |
| `obsidian-cli` | Obsidian vaults CLI 操作 | 命令行操作 vault |
| `obsidian-bases` | 创建和管理 .base 文件 | 创建 Canvas/Bases |
| `wikilink-graph-bfs` | BFS 遍历 wikilinks 关系网络 | 图关系分析 |
| `resolve-alias-links` | 查找替换独立别名 wikilinks | 别名规范化 |
| `sync-semantic-links` | 验证同步 YAML frontmatter 语义链接 | 链接一致性检查 |
| `dedupe-frontmatter-links` | 去重 frontmatter wikilinks | 清理重复链接 |
| `frontmatter-parser` | 解析 YAML frontmatter 为结构化数据 | frontmatter 分析 |
| `organize-daily-notes` | 整理清理 Obsidian daily notes | 日记整理 |
| `knowledge-review` | 通过随机回顾强化 SlipBox 知识 | 知识强化 |
| `assimilate-knowledge` | 整合新知识到 02-SlipBox | 知识入库 |
| `json-canvas` | 创建和编辑 .canvas 文件 | Canvas 编辑 |
| `summarize-note` | 使用 Ollama 生成笔记 AI 摘要 | 笔记摘要 |

---

## 核心 Skill 详解

### obsidian-markdown

**用途**：Obsidian Flavored Markdown 的基础语法规范。

**覆盖内容**：
- Wikilinks `[[Note]]` — 内部链接
- Embeds `![[Note]]` — 内容嵌入
- Callouts `> [!note]` — 高亮块
- Properties/Frontmatter — 元数据
- Tags — 标签语法
- Comments `%%hidden%%` — 注释
- Mermaid diagrams — 图表
- Math/LaTeX — 数学公式

**调用方式**：自动介入，任何涉及 `.md` 文件的操作都会触发。

---

### obsidian-link-graph

**用途**：修复和强化笔记间的双向链接关系。

**典型任务**：
- 扫描孤立笔记（无入链或出链）
- 识别潜在链接机会
- 批量修复断链
- 生成链接报告

**调用建议**：
```
当用户说「修复链接」「检查断链」「孤立笔记分析」时使用
```

---

### wikilink-graph-bfs

**用途**：对 wikilinks 关系网络进行 BFS（广度优先搜索）图遍历。

**典型任务**：
- 从指定笔记出发，找出所有可达笔记
- 识别链接层次深度
- 发现链接社区/簇
- 路径发现（两笔记间的关联路径）

**调用建议**：
```
当用户说「分析链接网络」「找出关联笔记」「链接路径」时使用
```

---

### resolve-alias-links

**用途**：查找并替换独立别名 wikilinks `[[alias]]` 为规范笔记名链接。

**典型任务**：
- 扫描所有 `[[别名]]` 格式的 wikilinks
- 匹配别名到实际笔记名
- 批量替换为规范格式

**调用建议**：
```
当用户说「修复别名链接」「规范化 wikilinks」时使用
```

---

### sync-semantic-links

**用途**：验证和同步 YAML frontmatter 中的双向语义链接。

**典型任务**：
- 检查 frontmatter 的 `links`/`related` 字段与正文 wikilinks 的一致性
- 同步缺失的链接到 frontmatter
- 清理已失效的链接

**调用建议**：
```
当用户说「同步双向链接」「frontmatter 链接一致性」时使用
```

---

### dedupe-frontmatter-links

**用途**：去重 YAML frontmatter 中的重复 wikilinks。

**典型任务**：
- 扫描所有笔记的 frontmatter
- 发现重复的链接条目
- 批量去重并保持顺序

**调用建议**：
```
当用户说「清理重复链接」「去重 frontmatter」时使用
```

---

### frontmatter-parser

**用途**：解析 markdown 文件的 YAML frontmatter 为结构化数据。

**典型任务**：
- 提取 frontmatter 字段
- 验证必填字段（title、tags、created 等）
- 生成 frontmatter 审计报告

**调用建议**：
```
当用户说「分析 frontmatter」「frontmatter 审计」时使用
```

---

### organize-daily-notes

**用途**：整理和清理 Obsidian daily notes。

**典型任务**：
- 识别过短或空洞的日记
- 合并相关内容到主题笔记
- 清理孤立日记
- 生成日记整理建议

**调用建议**：
```
当用户说「整理日记」「清理 daily notes」时使用
```

---

### knowledge-review

**用途**：通过随机回顾强化 SlipBox 知识。

**设计哲学**：间隔重复，结合卡片和笔记关联进行知识强化。

**调用建议**：
```
当用户说「回顾知识」「强化记忆」「SlipBox 训练」时使用
```

---

### assimilate-knowledge

**用途**：将新知识（文本/图片）整合到 02-SlipBox 目录。

**典型任务**：
- 接收新的学习内容
- 生成规范的 Obsidian 笔记格式
- 自动添加到 SlipBox 并建立链接

**调用建议**：
```
当用户说「新知识入库」「整合学习内容」时使用
```

---

### json-canvas

**用途**：创建和编辑 JSON Canvas 文件（.canvas）。

**典型任务**：
- 创建新 Canvas 节点图
- 编辑已有 Canvas 布局
- 在 Canvas 中添加笔记链接

**调用建议**：
```
当用户提到「Canvas」「节点图」「画布」时使用
```

---

### obsidian-bases

**用途**：创建和管理 Obsidian Bases（.base 文件）。

**Bases vs Canvas**：Bases 是更结构化的节点管理方式，适合项目级知识组织。

**调用建议**：
```
当用户说「创建 Bases」「管理 Bases」时使用
```

---

### summarize-note

**用途**：使用 Ollama 本地模型生成 markdown 笔记 AI 摘要。

**前提**：需要本地安装 Ollama 并运行。

**调用建议**：
```
当用户说「生成摘要」「AI 摘要」「总结笔记」时使用
```

---

## 工具组合使用场景

### 场景 1：新建知识库项目

```
1. obsidian-cli         → 创建 vault/目录结构
2. obsidian-markdown    → 编写规范笔记
3. frontmatter-parser    → 验证 frontmatter 格式
4. obsidian-link-graph  → 检查链接健康度
```

### 场景 2：清理旧 vault

```
1. wikilink-graph-bfs   → 分析链接网络结构
2. resolve-alias-links  → 修复别名链接
3. dedupe-frontmatter-links → 去重 frontmatter
4. sync-semantic-links  → 同步双向链接
5. organize-daily-notes → 整理日记
```

### 场景 3：知识吸收与强化

```
1. defuddle             → 提取网页干净内容
2. assimilate-knowledge → 整合到 SlipBox
3. obsidian-markdown    → 规范化格式
4. knowledge-review     → 随机回顾强化
```

### 场景 4：MOC 创建与维护

```
1. wikilink-graph-bfs   → 分析主题关联
2. json-canvas          → 创建 MOC Canvas
3. obsidian-bases       → 维护 MOC 结构
4. obsidian-link-graph  → 定期检查链接健康
```

---

## 调用优先级建议

| 用户请求 | 优先 Skill |
|----------|-----------|
| 修复 wikilinks | `obsidian-link-graph` + `resolve-alias-links` |
| 分析链接网络 | `wikilink-graph-bfs` |
| 清理 frontmatter | `frontmatter-parser` → `dedupe-frontmatter-links` |
| 同步双向链接 | `sync-semantic-links` |
| 整理日记 | `organize-daily-notes` |
| 新知识入库 | `assimilate-knowledge` |
| 强化记忆 | `knowledge-review` |
| 创建 Canvas/MOC | `json-canvas` / `obsidian-bases` |
| 生成摘要 | `summarize-note` |

---

## 相关链接

- [[Codex配置/Codex 配置与技能体系 MOC]] — 总入口
- [[Codex配置/Codex Skills 学习索引]] — 全部 Skills 索引
- [[Codex配置/个人自定义 Skills 索引]] — 个人定制 Skills
- [[Codex配置/Codex-Claude-Obsidian整理工作流]] — 三者协作流程
- [[Codex Memory 与会话资料说明]] — Memory 系统说明

---

## 标签

#codex skills obsidian 工作流 wikilinks frontmatter MOC