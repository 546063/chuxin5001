---
title: NAS-WebDAV备份报告-2026-05-21
aliases: []
tags:
  - #知识库治理
  - #NAS备份
  - #WebDAV
  - #备份
type: report
status: done
created: 2026-05-21
updated: 2026-05-21
summary_cn: 2026-05-21通过WebDAV协议将Obsidian完整备份到NAS。1184文件全部上传成功，1165个Markdown文件。与外接硬盘备份数量一致。SSH认证失败，改用WebDAV方案。
summary_en: 2026-05-21 WebDAV backup of Obsidian vault to NAS. 1184 files uploaded successfully, 1165 Markdown files. Matches external drive backup count.
related:
  - "[[16-知识库治理/最近入库文稿属性整理报告-2026-05-21]]"
  - "[[16-知识库治理/最近入库文稿轻量修复报告-2026-05-21]]"
retrieval_keywords:
  - NAS备份
  - WebDAV备份
  - Obsidian备份
  - 外接硬盘备份
decision_value: 记录WebDAV NAS备份过程和结果，验证备份完整性。
quality_level: A
routing_target:
  - 知识库治理
source: auto_generated
---

# NAS-WebDAV 备份报告-2026-05-21

> [!summary] 核心结论
> Obsidian 主库通过 WebDAV 协议完整备份到 NAS。SSH 认证全部失败后改用 WebDAV PUT 上传方案。
> **1,184 文件全部上传成功（0 失败），1,165 个 Markdown 文件**，与外接硬盘备份数量完全一致。

---

## 一、WebDAV 连接状态

| 项目 | 结果 |
|------|------|
| WebDAV URL | `http://172.24.114.156:5005` |
| 认证 | HTTP Basic Auth（taozhichu） |
| PROPFIND 根目录 | 207 Multi-Status |
| OPTIONS DAV 支持 | DAV 1,2（支持 PUT/MKCOL/PROPFIND/DELETE） |
| SSH 直连 admin@192.168.50.124 | 失败（Connection closed） |
| SSH 隧道 localhost:10022 | 失败（Permission denied，所有用户） |

---

## 二、远程备份路径

```
/volume1/陶之初工作路径/Obsidian_Backups/AI-Workspace-Obsidian/2026-05-21_125855/
```

- `陶之初工作路径` 是 NAS 上已有的共享目录
- `Obsidian_Backups/` 为本次新建的备份根目录
- `2026-05-21_125855` 为时间戳子目录，不覆盖已有文件

---

## 三、上传结果

| 指标 | 数值 |
|------|------|
| 上传文件总数 | **1,184** |
| 上传失败数 | **0** |
| Markdown 文件数 | **1,165** |
| 创建目录数 | 241 |
| 上传耗时 | 47 秒 |
| 备份目录大小 | ~186MB（与外接硬盘一致） |

### 排除项
- `.obsidian/workspace*`
- `.trash/`
- `node_modules/`
- `.git/`
- `.DS_Store`
- `backup/`
- `backups/`

---

## 四、关键文件验证

| 文件 | HTTP HEAD 状态 | 大小 |
|------|--------------|------|
| MECE原则思维模型.md | 200 OK | 7,061 bytes |
| 最近入库文稿属性整理报告-2026-05-21.md | 200 OK | 7,340 bytes |
| 最近入库文稿轻量修复报告-2026-05-21.md | 200 OK | 11,994 bytes |

### 随机抽查（10 个 Markdown 文件）

| 文件 | 状态 | 大小 |
|------|------|------|
| Hermes模型用量统计_2026-04.md | 200 | 4,696 bytes |
| obsidian_一二三级目录含文稿_20260515_141554.md | 200 | 101,556 bytes |
| 模型调用优先级.md | 200 | 3,550 bytes |
| 15-个人微信与OpenClaw连接说明.md | 200 | 1,607 bytes |
| 安先生视频课程系统整理.md | 200 | 2,505,712 bytes |
| 05-产品评估样例.md | 200 | 11,379 bytes |
| claude-code-skill.md | 200 | 73,268 bytes |
| 烂鳍病.md | 200 | 2,479 bytes |
| Learning Pack - SKILL 定义.md | 200 | 8,671 bytes |
| Gary Halbert Boron Letters蒸馏.md | 200 | 5,174 bytes |

---

## 五、与外接硬盘备份对比

| 指标 | 外接硬盘 | NAS WebDAV | 一致？ |
|------|---------|-----------|--------|
| 文件总数 | 1,184 | 1,184 | 是 |
| Markdown 文件 | 1,165 | 1,165 | 是 |
| 目录大小 | 186MB | ~186MB | 是 |

---

## 六、备份方案总结

| 方案 | 状态 | 路径 |
|------|------|------|
| 外接硬盘备份 | 成功 | `/Volumes/Untitled/Obsidian_Backups/AI-Workspace-Obsidian/2026-05-21_125855/` |
| NAS SSH (rsync) | 失败（认证拒绝） | - |
| NAS WebDAV (PUT) | 成功 | `/volume1/陶之初工作路径/Obsidian_Backups/AI-Workspace-Obsidian/2026-05-21_125855/` |

---

> [!info] 报告生成时间
> 2026-05-21
>
> [!note] 前置报告
> - [[最近入库文稿属性整理报告-2026-05-21]]
> - [[最近入库文稿轻量修复报告-2026-05-21]]
