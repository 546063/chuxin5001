---
title: "AI 全电脑扫描报告与协作规划"
topic: "个人学习与AI系统"
created: "2026-05-23"
updated: "2026-05-23"
type: knowledge_note
status: active
quality_level: A
summary_cn: AI 对 Mac Mini 全站深度扫描后的完整报告:技术栈全景、可执行的10件事、长期协作计划、AI视角下的吴浩博画像。
summary_en: Full computer scan report with actionable items, collaboration plan, and AI perspective on the user.
decision_value: 用于理解自身 AI 基础设施全貌，明确协作优先级，聚焦食品机械出海业务。
routing_target:
  - "[[15-AI工作流与自动化]]"
  - "[[18-个人学习与成长]]"
related:
  - "[[AI工具链与本地项目维护总入口]]"
  - "[[AI用量统计系统配置与维护说明]]"
  - "[[AI Native 创始人手册 Obsidian文稿]]"
retrieval_keywords:
  - 电脑扫描
  - 技术栈
  - 协作计划
  - AI 基础设施
  - 模型路由
  - 食品机械出海
  - 一人公司
---

# AI 全电脑扫描报告与协作规划

> 扫描日期：2026-05-23  
> 扫描范围：`/Users/mac` 全站深度扫描  
> 目的：理解基础设施全貌 → 列出可执行事项 → 制定长期协作计划

---

## 1. 我是谁（业务身份）

- **吴浩博**，Mac Mini 作为 AI 工作站主力机
- 主业：**食品加工机械跨境出海**（B2B，整单 ≥ ¥20,000）
- 公司关联：**鲸拓**（河北省鲸池集团），有房屋出租业务
- 品牌/副业线：**银羽**（装备）、**陶之初**（医美运营）、**美力欧**（整装定制）、**悦网球**（新媒体）
- 个人兴趣：养鱼、茶台私域

---

## 2. 技术栈全景

### 2.1 AI 模型矩阵

| 模型 | 提供商 | 用途 | 状态 |
|------|--------|------|------|
| Qwen 3.6-plus | 百炼 | Claude Code 默认主力 | ✅ 活跃 |
| GLM 5.1 | New API | 默认路由备选 | ✅ 活跃 |
| Kimi-for-coding | Kimi | 编码专用 | ✅ 活跃 |
| DeepSeek V4 Pro | DeepSeek | 编码/分析 | ✅ 活跃 |
| MiniMax M2.7 | MiniMax | 高速/文本双模式 | ✅ 活跃 |
| Claude (Opus/Sonnet) | Anthropic | 高质量任务 | ✅ 活跃 |

### 2.2 AI 框架并行

| 框架 | 路径 | 状态 |
|------|------|------|
| **Claude Code** | `.claude/` | ✅ 主力，150+ skills |
| **Codex CLI** | `.codex/` | ✅ 活跃，126MB 日志 |
| **OpenClaw** | `.openclaw/` | ⚠️ 需关注 gateway 稳定性 |
| **Hermes** | `.hermes/` | ✅ 代码 review 脚本 |
| **cagent** | `.cagent/` | ✅ 轻量代理 |

### 2.3 MCP 工具链

- `claude-mem` — 记忆系统（本地 SQLite + MCP）
- `firecrawl` — 网页抓取
- `tavily` — 搜索（主）
- `serper` — 搜索（备）
- `lark` — 飞书集成（多维表格、消息、Wiki、权限）
- `minimax` / `minimax-text` — 模型 MCP

### 2.4 桥接中间件

| 项目 | 路径 | 语言 | 功能 |
|------|------|------|------|
| claude-to-im | `projects/claude-to-im/` | TypeScript | Claude 消息桥接 IM |
| feishu-codex-bridge | `feishu-codex-bridge/` | Node.js | 飞书 ↔ Codex 桥接 |
| feishu-bot | `feishu-bot/` | Node.js | 飞书机器人 |
| telegram-bot | `telegram-bot/` | Python | Telegram 机器人（62MB 日志） |
| safari-mcp | `safari-mcp/` | Node.js + Swift | Safari MCP 服务器 |

### 2.5 网络与安全

- **代理**：Clash Verge + Quantumult X + Shadowrocket（socks5://127.0.0.1:7897）
- **组网**：ZeroTier（NAS 隧道、远程访问）
- **SSH**：ed25519 + rsa 双密钥，多设备 `known_hosts`
- **NAS**：Synology（WebDAV 密码已配置，SSH 隧道映射）

### 2.6 知识库体系

**Obsidian 主库**：`ai-workspaces/AI-Workspace-Obsidian/`（33 个子目录）

```
00-总指挥部 / 00-索引与导航
01-外贸市场情报站
02-跨境社媒获客
03-海外投流 / 03-海外投流火力站
04-内容素材弹药库
05-客户开发与成交
06-客户沟通复盘
07-工厂探访侦察站
08-交付与售后复盘
09-销售过程复盘
10-食品加工机械作战体系 ← 核心业务
11-选品产品情报站
12-行业竞品侦察站
13-国内业务与代运营
14-国内投流
15-AI自动化工兵营 / 15-AI工作流与自动化
16-知识库治理
17-个人财务与账单分析
18-个人学习与成长
19-个人生活与兴趣项目
20-资料下载中转仓 / 20-原始资料与下载暂存
25-成交案例战报库
99-Archive / 99-历史档案馆
```

**女娲顾问系统**：8 张核心董事卡 + 5 张业务工具卡 + 3 张观察型卡 + 5 个委员会

---

## 3. 十件我可以帮你做的事

### 🎯 业务优先级（P0-P1）

**1. 食品加工机械 SEO/SEM 体系落地**
- 你已有 14 条作战体系笔记（选型标准、买家决策、短视频 SOP、认证物流等）
- 可转化为：Google SEO 落地页、关键词矩阵、Google Ads/LinkedIn Ads 投放策略
- 涉及 skills：`seo-content`、`keyword-research`、`google-ads`、`linkedin-ads`

**2. 100 个短视频选题批量生产**
- 已有 `食品机械海外短视频100选题库.md`
- 可扩展为：每个选题的脚本框架 + 分镜 + 文案 + 发布排期
- 涉及 skills：`video-ad-analysis`、`tiktok`、`social-content`

**3. 全域投放测试分析与优化**
- `Downloads/投流测试/` 有大量投放截图（Facebook/LinkedIn/TikTok）
- 可做：素材表现分析、ROI 诊断、下一轮投放建议
- 涉及 skills：`meta-ads`、`facebook-ads`、`paid-ads`

**4. 客户沟通话术体系化**
- 已有 `食品机械客户沟通成交总纲.md`
- 可转化为：销售 SOP + 飞书模板 + 自动化跟进流程 + 飞书多维表格 CRM
- 涉及 skills：`feishu-lark`、`email-marketing`、`conversion`

### 🔧 基础设施（P2）

**5. OpenClaw 启动诊断和稳定性优化**
- 记忆中有 `openclaw-restart.md` 重启工作流
- 可检查：gateway 端口 18789、provider 配置、日志异常
- 涉及文件：`.openclaw/`、`.ai-stack-env`

**6. Obsidian 知识库索引修复**
- 28 个分类目录、374+ 已归档笔记、大量交叉引用
- 可做：断裂 wikilink 检查、MOC 索引完善、重复内容合并
- 涉及 skills：`obsidian-link-graph`、`wikilink-graph-bfs`、`obsidian-markdown`

**7. AI 用量审计和成本优化**
- 6+ 个 AI 平台、大量 API Key、多个框架并行
- 可做：用量分析、冗余 API Key 清理、模型路由策略优化
- 涉及文件：`.ai-stack-env`、`.zshrc`、`ai-workspaces/AI-Workspace-Obsidian/15-AI自动化工兵营/04-AI用量统计/`

### 💰 个人与副业（P3）

**8. Telegram 机器人增强**
- `telegram-bot/bot.log` 62MB，长期运行积累
- 可做：错误日志分析、代码优化、新功能开发

**9. 个人财务对账系统**
- `17-个人财务与账单分析` 目录 + `银行卡，微信账单` 文件夹 + 房屋出租合同
- 可做：收支分析、租金收入追踪、账单分类
- 涉及 skills：`personal-finance-reconciliation`

**10. 副业项目竞品分析**
- 陶之初医美、美力欧整装、悦网球——多个业务方向各有方案文档
- 可做：每个方向的竞品分析 + 市场定位 + 投入产出评估

---

## 4. 长期协作计划

### 4.1 业务优先级排序

```
第一优先级：食品加工机械出海获客 → 转化 → 成交
第二优先级：AI 基础设施稳定性（OpenClaw/Claude Code/MCP）
第三优先级：知识库体系完善（Obsidian 索引、归档、自动化）
第四优先级：副业探索（医美/整装/网球/房产出租）
第五优先级：个人财务和生活管理
```

### 4.2 协作节奏

| 触发 | 我做的事 | 输出 |
|------|----------|------|
| **日常对话** | 具体任务执行：写脚本、改配置、分析截图、优化文案 | 直接可用的结果 |
| **每周一次** | 投流数据复盘、客户开发进展、AI 用量审计 | 简短报告 + 下周建议 |
| **每月一次** | 业务方向复盘、知识库整理、工具链升级评估 | 战略调整建议 |
| **重大决策** | 触发女娲圆桌讨论 | 多视角决策建议 |

### 4.3 我的承诺

1. **不替你决定方向** — 我给选项和分析，你拍板
2. **不偷偷改配置** — 涉及 `.zshrc`、`.ai-stack-env`、API Key 的改动先告诉你
3. **记住历史** — 每次合作的结论存到 memory，下次直接接着来
4. **业务优先** — 工具再酷也要为业务服务，不让你沉迷搭工具而忘了卖机器
5. **定期提醒** — 如果你两周没碰某个项目，我会问你要不要继续还是归档

---

## 5. AI 眼中的吴浩博

### 五个关键词

**系统化构建者** — 不满足"用一下 AI"，而是在搭建一整套 AI 基础设施。多模型路由、MCP 工具链、知识库体系、决策系统。你在造机器，不是用工具。

**务实的生意人** — `food-machinery-hero` 是真实的 B2B 出海生意。你要的是转化和 ROI，不是好玩的功能。有效客户比流量重要。

**知识管理上瘾** — Obsidian Vault + 女娲顾问系统 + 书籍/人物蒸馏工作流 + git-wiki。在试图把一切经验结构化为可复用的决策框架。好的上瘾，但要警惕"整理知识"变成"逃避行动"的借口。

**喜欢控制感** — 多模型路由、模型切换 SOP、cc-connect、权限体系——希望掌控 AI 的每一个细节，而不是被平台绑定。工程师本能。

**孤独的学习者** — 吴恩达笔记、Anthropic 黑客松冠军配置、Karpathy 编码纪律——在大量吸收顶尖高手的经验。但一个人学容易陷入"收集设定"的陷阱。

### 一句话总结

> 一个正在用 AI 武装自己的 B2B 出海创业者，系统搭建能力远超 95% 的同行。
> **最大的风险是"工具比业务跑得快"**——基础设施已经很完备了，接下来应该让业务数据来驱动优化方向，而不是反过来。

---

## 6. 下一步建议

1. **选一件事立即做** — 从上面 10 件事中选一个 P0 任务，我现在就开始执行
2. **确认协作节奏** — 你希望我多久主动提醒一次？（每周/每两周/每月）
3. **设置业务目标** — 食品机械出海，下一个里程碑是什么？（第一个询盘？第一笔订单？SEO 上线？）
