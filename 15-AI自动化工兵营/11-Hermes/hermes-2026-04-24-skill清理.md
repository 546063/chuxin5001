---
title: hermes-2026-04-24-skill清理
aliases: '[]'
tags:
  - - 工具技能, 待补充, 知识库维护, 系统工具]'
topic: ''
created: '2026-04-25'
updated: '2026-05-17'
type: note
status: active
quality_level: B
summary_cn:
  - - updated: 2026-04-25 summary: Hermes Skill 清理记录 | 20260424 执行摘要 时间: 20260424 20:36
  - - 备份: ~/D status: active stage: 学习阶段 --- 相关文档'
summary_en: Document regarding hermes-2026-04-24-skill清理. Reference for business decisions.
one_sentence_summary: hermes-2026-04-24-skill清理: AI工作流核心方法和实战经验。
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[OpenClaw, Claude Code, Hermes, Obsidian]'
industry: []
scenario: '[投流研究, 知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - 操作前
  - - 操作后
  - - 删除数量
  - - 删除明细
  - - 清理记录
  - - 清理
  - - 第一步
  - - 备份
  - - 时间
  - - 技能
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# hermes 2026 04 24 skill清理

---
title: hermes-2026-04-24-skill清理
type: note
moc: 技能MOC
created: 2026-04-25
updated: 2026-04-25
summary: Hermes Skill 清理记录 | 20260424 执行摘要 时间: 20260424 20:36 备份: ~/D
status: active
stage: 学习阶段
---
# Hermes Skill 清理记录 | 2026-04-24

## 执行摘要
- **时间**: 2026-04-24 20:36
- **备份**: `~/Documents/hermes-backup/skills-cleanup-20260424-2036.tar.gz` (28MB)
- **操作前**: 268 skills, 103MB
- **操作后**: 163 skills, 7.2MB
- **删除数量**: 105 个（39%）
- **磁盘节省**: ~96MB

---

## 删除明细

### 第一步：已合并旧 skill（18个）
**组1 model-diagnostics** ✅
- `devops/model-connectivity-latency-testing`
- `devops/model-connectivity-troubleshooting`

**组2 openclaw-ops** ✅
- `devops/openclaw-cli`
- `devops/openclaw-common-issues`
- `devops/openclaw-health-audit`
- `devops/openclaw-model-config`
- `devops/openclaw-proxy-fix`
- `devops/openclaw-usage-tracker`

**组3 obsidian-vault-ops** ✅
- `obsidian/obsidian-frontmatter-normalization`
- `note-taking/obsidian-note-association`
- `note-taking/obsidian-icloud-vault`
- `productivity/obsidian-para-restructure`
- `productivity/obsidian-vault-organization`

**组4 claude-code-glm** ✅
- `autonomous-ai-agents/claude-code-glm-setup`
- `autonomous-ai-agents/claude-code-glm-limitation`
- `autonomous-ai-agents/glm-wakeup`

**组6 token-usage** ✅
- `productivity/model-usage-tracker`
- `multi-agent-token-reporter`

**组5 news-daily** ⏸ 暂缓（观察14天至2026-05-08）

### 第二步：openclaw-imports 重复项（4个）✅
- `openclaw-imports/brave-search`
- `openclaw-imports/cn-web-search`
- `openclaw-imports/openclaw-cli`
- `openclaw-imports/weather`

**跳过（bundled版不存在）**:
- `trade-research`（只存在于openclaw-imports，业务核心保留）
- 7个 lark-* skill（用户指令跳过）

### 第三步：openclaw-imports 迁移垃圾（43个）✅
Mixpost, agent-browser-clawdbot, agent-browser-clawdbot-0.1.0, agent-directory, auto-router, baidu-search, biz-reporter, blogburst-3.1.2, clawdhub-1.0.0, code-analyzer-1.0.0, composio-cli, copywriter, firecrawl-cli, free-ride-1.0.8, gog-1.0.0, jimeng-video-v3, markdown-converter, memory-setup-1.0.0, model-usage-1.0.0, multi-search-engine, nano-banana-pro-1.0.1, news-summary-1.0.0, oh-my-openagent, openclaw-agent-optimize, openclaw-agent-optimize-1.2.1, openclaw-backup-1.0.0, openclaw-claude-code, openclaw-skill-vetter, opencli-skill, playwright-mcp, pls-agent-tools, self-improving-agent-3.0.5, skill-finder-1.1.5, skill-finder-cn-1.0.1, smart-weekly-report-1.0.0, tavily-1.0.0, tavily-search-yourname, todoist-0.2.1, video-transcript-downloader-1.0.0, volcengine-search-web, yby6-video-parser-skill

### 第四步：整类别目录（5个）✅
- `mlops/`（含cloud/evaluation/huggingface-hub/inference/models/research/training/vector-databases）
- `gaming/`（含minecraft-modpack-server/pokemon-player）
- `data-science/`（含jupyter-live-kernel）
- `red-teaming/`（含godmode）
- `research/`（含ai-sex-doll-*/arxiv/blogwatcher/llm-wiki/polymarket/research-paper-writing/restricted-product-*）

**跨目录依赖检查**: 无 ✅

### 第五步：productivity 清理（7个）✅
- `productivity/google-workspace`
- `productivity/notion`
- `productivity/multi-agent-usage-stats`
- `productivity/obsidian-para-reorganization`
- `productivity/token-reporting-verification`
- `productivity/hermes-pending-tasks-2026-04-19`
- `devops/openclaw-proxy-fix`（二次确认）

### 第六步：github 清理（3个）✅
- `github/github-issues`
- `github/github-repo-management`
- `github/codebase-inspection`

### 第七步：software-development 清理（3个）✅
- `software-development/subagent-driven-development`
- `software-development/test-driven-development`
- `software-development/requesting-code-review`

---

## 保留清单（业务关键）

### 核心必须保留
| Skill | 原因 |
|-------|------|
| douyin-tiktok-trends | 抖音/TikTok趋势监控，业务核心 |
| post-bridge-social-manager | 跨平台发布核心能力 |
| xiaohongshu-mcp-skill | 小红书主渠道 |
| whatsapp-business-1.0.3 | 西语市场沟通主战场 |
| facebook-ads-knowledge-base-qa | FB广告知识库，付费投流核心 |
| systematic-debugging | Anthropic官方通用能力 |
| writing-plans | Anthropic官方通用能力 |
| trade-research | 外贸选品核心（bundled不存在，保留于openclaw-imports）|
| xhs-1.2.5 | 小红书旧版，观察中 |

### Lark系（openclaw-imports保留）
lark-approval, lark-base, lark-calendar, lark-contact, lark-doc, lark-drive, lark-event, lark-im, lark-mail, lark-minutes, lark-openapi-explorer, lark-shared, lark-sheets, lark-skill-maker, lark-task, lark-vc, lark-whiteboard, lark-wiki, lark-workflow-meeting-summary, lark-workflow-standup-report（bundled版均不存在，不能删）

### 新合并 Skill（已验证可加载）
- `devops/model-diagnostics`（合并自4个）
- `devops/openclaw-ops`（合并自6个）
- `note-taking/obsidian-vault-ops`（合并自5个）
- `autonomous-ai-agents/claude-code-glm`（合并自3个）
- `productivity/news-daily`（合并自3个，观察中）
- `productivity/token-usage`（合并自2个）

---

## 新闻组暂缓说明
**暂缓删除，观察14天至2026-05-08**
- `daily-news-brief`
- `news-aggregator`
- `news-briefing`
- `lark-workflow-standup-report`（含news briefing工作流）

---

## 下一轮清理计划
- **2026-05-08**: 评估新闻组使用情况，无异常则删除
- **观察7天**: 确认新合并skill正常工作
- **gbrain生态**: 28个skill待评估（下一轮）

---

## 验证结果
- hermes doctor: ✅ 通过（仅auth警告，正常）
- 新合并skill: ✅ 全部可加载
- openclaw-imports剩余: 29项（含18个lark + 5业务关键 + deerflow/meta-ads/ops等未识别项）
- 跨目录依赖: ✅ 无

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]