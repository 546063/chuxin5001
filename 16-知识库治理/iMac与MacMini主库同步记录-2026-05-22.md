---
title: iMac与MacMini主库同步记录-2026-05-22
aliases:
  - 双端主库统一报告
type: 治理记录
status: 已完成
tags:
  - #知识库治理
  - #跨设备同步
  - #Obsidian
  - #Git
source: 本地诊断与rsync同步
created: 2026-05-22 18:41
updated: 2026-05-22 18:41
---

# iMac与MacMini主库同步记录-2026-05-22

## 本次同步原因

Mac mini iCloud 老库（`/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian`）与 iMac 主库存在大量差异：
- iMac 进行了大规模目录重构（如 `03-海外投流火力站` → `03-海外投流`）
- 新增多个目录（`00-索引与导航`、`19-个人生活与兴趣项目`、`20-原始资料与下载暂存`、`99-Archive` 等）
- iCloud 同步不完整，Mac mini 老库停留在旧版目录结构（1160 文件 vs iMac 1641 文件）
- 双端使用不同同步机制（iMac=Git，Mac mini=iCloud），导致长期不一致

## iMac 源路径

```
/Users/mac/ai-workspaces/AI-Workspace-Obsidian
```

- 有 Git 仓库，remote: `origin → https://github.com/546063/chuxin5001.git`
- 分支: `master`，最新提交: `88e4450`（sync: update AI Workspace Obsidian before Mac mini clone 2026-05-22）
- 文件总数: 1410（不含 .git）
- Markdown 文件数: 1358
- 目录大小: 30MB

## Mac mini 新路径

```
/Users/a1/ai-workspaces/AI-Workspace-Obsidian
```

- 通过 ZeroTier rsync 从 iMac 复制而来
- 有 Git 仓库（与 iMac 相同历史）
- 文件总数: 1410（不含 .git）
- Markdown 文件数: 1358
- 目录大小: 30MB

## iCloud 老库备份路径

```
/Users/a1/Backups/Obsidian-iCloud-backup-20260522-185229
```

- 完整备份，未删除任何内容
- 1160 文件，1125 Markdown，18MB
- iCloud 老库本体保留在原路径，未被修改

## 双端一致性结果

| 指标 | iMac | Mac mini 新库 | 结果 |
|------|------|---------------|------|
| 文件总数 | 1410 | 1410 | ✅ 一致 |
| Markdown 数 | 1358 | 1358 | ✅ 一致 |
| 目录大小 | 30MB | 30MB | ✅ 一致 |
| 顶级目录 | 27 个 | 27 个 | ✅ 一致 |
| 最近 20 个修改文件 | 路径和时间戳完全相同 | 路径和时间戳完全相同 | ✅ 一致 |

## GitHub push 被拦截原因

GitHub Secret Scanning 在旧 commit `0df4dbf`（2026-05-20，snapshot: before level-2-level-3-folder-number-normalization）中检测到 **OpenRouter API Key**，拒绝 push 到 `master` 分支。

- 拦截位置：`15-AI自动化工兵营/用量统计/用量分析与模型轮转.md`
- GitHub 放行链接：https://github.com/546063/chuxin5001/security/secret-scanning/unblock-secret/3E4ok4WLIkvpxO8MQWUxVz89u90
- 该 commit 在 master 分支历史中，无法跳过
- 远程 `main` 分支仅有 8 个 Codex 文件，从未包含 Obsidian 库内容

## 后续使用规则

### 1）iMac 作为主库源头

所有知识库的大规模整理、目录重构、文件新增/删除，先在 iMac 上完成。

### 2）Mac mini 使用新路径

Mac mini 的主库路径统一为：
```
/Users/a1/ai-workspaces/AI-Workspace-Obsidian
```
在 Obsidian 中打开此路径作为 vault。

### 3）暂时不要删除 iCloud 老库

iCloud 老库（`/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian`）保留在原处。
- 在 Obsidian 中关闭该 vault（不要删除文件）
- 观察新库使用 1-2 天无问题后，再决定是否归档
- 备份已保存在 `/Users/a1/Backups/Obsidian-iCloud-backup-20260522-185229`

### 4）GitHub push 修复前，临时用 ZeroTier rsync

在 GitHub push 问题未解决期间，用以下命令从 iMac 同步到 Mac mini：

```bash
# Mac mini 上执行
rsync -avc \
  mac@172.24.141.181:/Users/mac/ai-workspaces/AI-Workspace-Obsidian/ \
  /Users/a1/ai-workspaces/AI-Workspace-Obsidian/
```

**注意：**
- 不使用 `--delete` 参数，避免误删 Mac mini 本地新增文件
- 确认 ZeroTier 在线（`zerotier-cli info` 显示 ONLINE）

### 5）不要再把 iCloud Documents 当作最新主库

iCloud 同步机制不可靠（目录重命名时易出现同步冲突），后续：
- 不要再对 `/Users/a1/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian` 进行大量编辑
- 该目录保留为历史备份，不作为日常工作库
- 如需要在 Mac mini 上编辑，使用 `/Users/a1/ai-workspaces/AI-Workspace-Obsidian`

## 相关记录

- [[Obsidian-Git备份状态_20260518_1653]]
- [[NAS-WebDAV备份报告-2026-05-21]]
- [[最终收尾报告_iCloud备份完成_20260518_1653]]
