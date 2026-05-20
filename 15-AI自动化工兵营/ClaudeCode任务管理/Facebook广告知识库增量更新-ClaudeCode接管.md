---
title: Facebook广告知识库增量更新-ClaudeCode接管
type: automation_task
status: active_manual_or_claude_managed
owner: Claude Code
old_owner: OpenClaw
source_task: Facebook广告知识库每3天增量更新
frequency: every_3_days
quality_level: A
decision_value: 用于持续更新Facebook广告投放知识库，服务海外投流、Meta广告、跨境社媒获客决策
related:
  - "[[03-海外投流]]"
  - "[[02-跨境社媒获客]]"
  - "[[15-AI自动化工兵营]]"
  - "[[16-知识库治理]]"
tags:
  - AI自动化
  - ClaudeCode
  - Facebook广告
  - MetaAds
  - 知识库增量更新
---

# Facebook广告知识库增量更新-ClaudeCode接管

## 一句话总结
本任务原由 OpenClaw cron 每 3 天自动执行，现在改为 Claude Code 管理，避免后台任务混乱，同时保留可恢复能力。

## 原 OpenClaw 任务信息

| 字段 | 值 |
|------|-----|
| 原任务 ID | `10f7e568-6550-450e-b484-24b93f76599e` |
| 原任务名称 | Facebook广告知识库每3天增量更新 |
| 原 schedule | `every 259200000ms`（每 3 天），anchor: `1776948139481` |
| 原模型 | `minimax/MiniMax-M2.7-highspeed` |
| 原超时 | 1800 秒 |
| 写入 Obsidian 路径 | `/Users/mac/ai-workspaces/AI-Workspace-Obsidian/03-海外投流/Facebook广告知识库/FB广告知识库-增量知识点.md` |
| 发送飞书 | 是（channel: feishu, to: ou_7818f9542a0c2c05afd43f28bd02673c） |
| 最近一次运行 | lastRunAtMs: 1779089311979（约 2026-05-20），status: ok，delivery: message failed |
| 备份路径 | `~/Downloads/openclaw-cron-backup-20260520-171836/` |

## 为什么迁移到 Claude Code

1. **当前 Obsidian 主库由 Claude Code 管理更稳定** — 所有 Git 提交和文件变更通过 Claude Code 统一管控
2. **避免 OpenClaw 后台 cron 生成不可控内容** — cron 任务写入未经检查，可能重复或低质量
3. **所有增量写入先经过 Claude Code 检查** — 保证 frontmatter、格式、去重合规
4. **方便 Git 提交和回滚** — 每次增量更新自动 commit，可随时回退

## Claude Code 执行频率

建议：每 3 天手动执行一次，或后续改为 macOS launchd 调 Claude Code 脚本。

## 白名单域名

- facebook.com/business
- developers.facebook.com
- foxwellfounders.com
- jonloomer.com
- shopify.com/blog
- adespresso.com
- socialmediaexaminer.com
- motionapp.com
- triplewhale.com
- madgicx.com
- commonthreadcollective.com

## 关键词组合（中英双语）

- "facebook ads" campaign structure 2025
- "meta ads" bidding strategy guide
- "advantage+ shopping campaigns" tutorial
- "facebook conversions api" setup
- "facebook ads" learning phase
- "facebook video ads" hook first 3 seconds
- "meta ads" UGC creative strategy
- "facebook ads" creative fatigue
- Facebook 广告投放教程 2025
- Meta 广告账户结构
- Facebook 视频素材跑量
- Advantage+ 购物广告

## 写入位置

主文件：`03-海外投流/Facebook广告知识库/FB广告知识库-增量知识点.md`

---

## 恢复 OpenClaw 执行方式

如未来要恢复 OpenClaw 自动执行：

1. 找到备份目录：`~/Downloads/openclaw-cron-backup-20260520-171836/`
2. 恢复 `jobs.json`：`cp ~/Downloads/openclaw-cron-backup-*/jobs.json ~/.openclaw/cron/jobs.json`
3. 把任务 `10f7e568-6550-450e-b484-24b93f76599e` 的 `enabled` 改回 `true`

---

## 下次直接复制给 Claude Code 的执行提示词

```
你现在执行「Facebook广告知识库增量更新」任务。

任务要求：

1. 读取 Obsidian 主库：
   /Users/mac/ai-workspaces/AI-Workspace-Obsidian

2. 找到现有 Facebook 广告知识库目录。
   优先检查：03-海外投流/Facebook广告知识库/
   如果该目录不存在，搜索 03-海外投流 或 02-跨境社媒获客 下相关目录。

3. 检查上次更新时间和已收录 URL。
   - 读取 /tmp/fb_ads_research/logs/last_run.txt 获取上次运行时间
   - 读取现有 Obsidian 文件了解已收录内容
   - 如果没有上次运行记录，则从头抓取

4. 搜索最近 3 天（自上次运行时间之后）的新内容。
   使用 Tavily 搜索以下关键词组合：
   - "facebook ads" campaign structure 2025
   - "meta ads" bidding strategy guide
   - "advantage+ shopping campaigns" tutorial
   - "facebook conversions api" setup
   - "facebook ads" learning phase
   - "facebook video ads" hook first 3 seconds
   - "meta ads" UGC creative strategy
   - "facebook ads" creative fatigue
   - Facebook 广告投放教程 2025
   - Meta 广告账户结构
   - Facebook 视频素材跑量
   - Advantage+ 购物广告

5. 优先白名单来源：
   facebook.com/business、developers.facebook.com、foxwellfounders.com、
   jonloomer.com、shopify.com/blog、adespresso.com、socialmediaexaminer.com、
   motionapp.com、triplewhale.com、madgicx.com、commonthreadcollective.com

6. 每次最多收录 3-6 篇文章。

7. 每篇文章提炼：
   - 标题
   - 来源域名
   - URL
   - 发布日期
   - 核心观点（3-5条）
   - 对做跨境社媒获客/海外投流的启发
   - 可执行动作
   - 适合放入哪个 Obsidian 主题

8. 至少输出 5 条可执行知识点。

9. 写入 Obsidian：
   - 追加到 03-海外投流/Facebook广告知识库/FB广告知识库-增量知识点.md
   - 确保 frontmatter 完整（如有需要）
   - 不重复收录已有文章

10. 生成本次增量报告，包含：
    - 新增文章数量
    - 新增知识点数量
    - 新增 URL 数量
    - 是否有重复
    - 运行状态（成功/失败/部分成功）

11. 更新 last_run.txt：
    echo "$(date '+%Y-%m-%d %H:%M:%S')" > /tmp/fb_ads_research/logs/last_run.txt

12. 执行 git 提交：
    cd /Users/mac/ai-workspaces/AI-Workspace-Obsidian
    git add -A
    git commit -m "update: Facebook广告知识库增量更新 $(date '+%Y-%m-%d')"

13. 不要自动 push GitHub，除非我明确要求。

验收标准：
- 新增知识点 >= 5 条（太少说明时间过滤失效）
- 所有新增内容字段齐全，无空字段
- Obsidian 写入后 frontmatter 完整
- 不重复收录已有文章
```
