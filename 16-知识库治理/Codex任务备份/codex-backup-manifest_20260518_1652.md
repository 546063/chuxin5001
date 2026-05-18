---
title: Codex任务与对话备份清单
type: backup_manifest
created: "2026-05-18 16:52"
source: Codex
target: Obsidian Git Vault
summary_cn: 本文件记录 Codex 任务、对话、日志、备份记录同步进入 Obsidian Git 仓库的情况。
related:
  - "[[16-知识库治理]]"
  - "[[Codex任务备份]]"
tags:
  - codex
  - backup
  - obsidian
  - ai-workflow
---

# Codex任务与对话备份清单

## 一、备份目标

把 Codex 的任务记录、对话记录、执行摘要和已有备份记录同步进入 Obsidian Vault，并通过 Git 提交保存。

## 二、备份来源

候选路径清单：`16-知识库治理/Codex任务备份/codex_candidate_paths_20260518_1652.txt`

## 三、备份目标

备份目录：`16-知识库治理/Codex任务备份/raw/20260518_1652`

## 四、已复制文件清单（16 个）

| # | 源文件 | 备份文件名 |
|---|---|---|
| 1 | ~/.codex/external_agent_session_imports.json | external_agent_session_imports.json |
| 2 | ~/.codex/log/codex-login.log | codex-login.log |
| 3 | AI-Workspace-Obsidian-Removed-Archive-20260517/codex.md | codex.md |
| 4 | Removed-Archive/_reports/FINAL-GOV-STEP-07-icloud-backup-report.md | FINAL-GOV-STEP-07-icloud-backup-report.md |
| 5 | Removed-Archive/_reports/FINAL-GOV-STEP-07-icloud-backup-plan.md | FINAL-GOV-STEP-07-icloud-backup-plan.md |
| 6 | Removed-Archive/15-AI工作流与自动化/认知框架/tdd-session-reviewer.md | tdd-session-reviewer.md |
| 7 | Removed-Archive/15-AI工作流与自动化/AI工作流/tdd-session-reviewer.md | tdd-session-reviewer.md |
| 8 | 15-AI自动化工兵营/07-Claude code Memory与会话/Codex Memory 与会话资料说明.md | Codex Memory 与会话资料说明.md |
| 9 | 15-AI自动化工兵营/10-Codex/codex.md | codex.md |
| 10 | 00-总指挥部/02-AI路由与入口/09-Codex总指挥规则.md | 09-Codex总指挥规则.md |
| 11 | ~/.codex/skills/.system/imagegen/references/codex-network.md | codex-network.md |
| 12 | 00-总指挥部/02-AI路由与入口/01-AI读取入口/09-Codex总指挥规则.md | 09-Codex总指挥规则.md |
| 13 | Library/Logs/com.openai.codex/2026/05/18/codex-desktop-*.log | codex-desktop-20260518.log |
| 14 | Library/Logs/com.openai.codex/2026/05/11/codex-desktop-*.log | codex-desktop-20260511-1.log |
| 15 | Library/Logs/com.openai.codex/2026/05/11/codex-desktop-*.log | codex-desktop-20260511-2.log |
| 16 | Library/Logs/com.openai.codex/2026/05/11/codex-desktop-*.log | codex-desktop-20260511-3.log |

## 五、跳过文件（9 个，含敏感关键词）

| # | 文件 | 跳过原因 |
|---|---|---|
| 1 | ~/.codex/session_index.jsonl | 含 token/session_id |
| 2 | ~/.codex/.codex-global-state.json | 含 api_key |
| 3 | ~/.codex/log/codex-tui.log | 含 token |
| 4 | ~/ai-workspaces/codex-rescue/.codex.toml | 含 api_key |
| 5 | ~/ai-workspaces/codex-rescue/CODEX_RESCUE_RULES.md | 含 api_key |
| 6 | AI用量统计备份 x4 | 含 token 关键词 |
| 7 | codex_candidate_paths_*.txt x2 | 含 token 路径 |

## 六、风险说明

本次复制前对文本文件进行了敏感关键词过滤。如文件中出现 api_key、token、secret、credential、password 等关键词，则跳过，不写入 Git。

## 七、后续建议

建议后续建立每日或每周自动备份脚本：
1. Codex 对话和任务记录进入 Obsidian。
2. Obsidian 每日 Git commit。
3. 如配置 remote，则自动 push 到远程仓库或 NAS Git。
