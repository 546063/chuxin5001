# Obsidian 自动备份规则（2026-05-21 固化）

## 基本信息

- **主库路径**: `/Users/mac/ai-workspaces/AI-Workspace-Obsidian`
- **备份频率**: 每 3 天一次（约 72 小时）

## 备份方式（优先级）

### 首选：NAS WebDAV PUT 上传

| 项目 | 值 |
|------|------|
| 协议 | WebDAV (HTTP PUT) |
| URL | `http://172.24.114.156:5005` |
| 用户名 | `taozhichu` |
| 密码 | 通过环境变量 `NAS_WEBDAV_PASSWORD` 读取 |
| 远程备份路径 | `/陶之初工作路径/Obsidian_Backups/AI-Workspace-Obsidian/YYYY-MM-DD_HHMMSS/` |
| 验证状态 | 2026-05-21 已验证成功（1184 文件，0 失败） |

### 备选：外接硬盘 rsync

| 项目 | 值 |
|------|------|
| 挂载点 | `/Volumes/Untitled` |
| 备份路径 | `/Volumes/Untitled/Obsidian_Backups/AI-Workspace-Obsidian/YYYY-MM-DD_HHMMSS/` |
| 命令 | `rsync -avh --exclude=...` |
| 验证状态 | 2026-05-21 已验证成功（1184 文件，1165 MD） |

### 不再优先使用

- **SSH rsync**: 认证失败（admin/taozhichu/root 均被拒绝），不再作为优先方案
- 如后续修复 NAS SSH 密钥认证，可作为可选方案

## 安全规则

1. **密码必须通过环境变量读取**（`NAS_WEBDAV_PASSWORD`）
2. **不允许把密码写入 Obsidian 文稿、脚本正文、公开日志**
3. **不允许把密码写入 git 仓库**
4. 备份报告中不包含密码或任何凭证
5. 脚本中使用 `${NAS_WEBDAV_PASSWORD}` 读取，不硬编码

## 排除规则

每次备份必须排除：
- `.git/`
- `.obsidian/workspace*`
- `.trash/`
- `node_modules/`
- `.DS_Store`
- `backup/`
- `backups/`

## 备份后要求

1. 每次备份生成报告：`16-知识库治理/NAS-WebDAV自动备份报告-YYYY-MM-DD.md`
2. 报告内容：文件数量、MD 数量、成功/失败数、远程路径
3. 报告不包含密码

## 脚本路径

- 备份脚本：`/Users/mac/ai-workspaces/scripts/backup-obsidian-webdav.sh`
- launchd plist：`~/Library/LaunchAgents/com.taozhichu.obsidian.webdav.backup.plist`
- 日志路径：`/Users/mac/ai-workspaces/logs/obsidian-webdav-backup.*.log`

## 历史验证记录

| 日期 | 方式 | 文件数 | MD 数 | 失败 | 状态 |
|------|------|--------|-------|------|------|
| 2026-05-21 | NAS WebDAV | 1184 | 1165 | 0 | 成功 |
| 2026-05-21 | 外接硬盘 rsync | 1184 | 1165 | 0 | 成功 |
| 2026-05-21 | NAS SSH rsync | - | - | - | 认证失败 |
