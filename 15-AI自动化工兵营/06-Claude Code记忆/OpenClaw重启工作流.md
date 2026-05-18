---
title: OpenClaw 重启工作流
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: SOP
status: active
quality_level: A
summary_cn: '```bash PID=$(lsof -ti:18789 2>/dev/null); if [ -n "$PID" ]; then kill
  -TERM $PID 2>/dev/null; fi; sleep 2 ```相关文档'
summary_en: Document regarding OpenClaw重启工作流. Reference for business decisions.
one_sentence_summary: '# OpenClaw Gateway 重启工作流  ## 触发条件  当需要重启 OpenClaw gateway 时执...'
decision_value: Build AI automation workflows and scripts
review_note: Core AI automation playbook
category: ''
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[01-全库工作总览MOC]]
retrieval_keywords:
- 触发条件
- 当需要重启
- 停止旧进程
- 时执行
- 启动新进程
- 重启工作流
- 重启步骤
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# OpenClaw Gateway 重启工作流

## 触发条件

当需要重启 OpenClaw gateway 时执行。

## 重启步骤

### 1. 停止旧进程

```bash
PID=$(lsof -ti:18789 2>/dev/null); if [ -n "$PID" ]; then kill -TERM $PID 2>/dev/null; fi; sleep 2
```

### 2. 启动新进程

```bash
HOME=/Users/mac TMPDIR=/var/folders/vd/6wy5_gz12g7_b651gdlqywfw0000gn/T/ NODE_EXTRA_CA_CERTS=/etc/ssl/cert.pem NODE_USE_SYSTEM_CA=1 PATH=/Users/mac/.npm-global/bin:/Users/mac/Library/pnpm:/Users/mac/.bun/bin:/Users/mac/.local/bin:/Users/mac/bin:/Users/mac/.volta/bin:/Users/mac/.asdf/shims:/Users/mac/.nix-profile/bin:/Users/mac/.fnm/aliases/default/bin:/Users/mac/.local/share/pnpm:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin OPENCLAW_GATEWAY_PORT=18789 OPENCLAW_LAUNCHD_LABEL=ai.openclaw.gateway OPENCLAW_SERVICE_MARKER=openclaw OPENCLAW_SERVICE_KIND=gateway OPENCLAW_SERVICE_VERSION=2026.4.24 /Users/mac/.npm-global/bin/node /Users/mac/.npm-global/lib/node_modules/openclaw/dist/index.js gateway --port 18789 > /tmp/openclaw-gateway.log 2>&1 &
```

### 3. 等待启动并验证

```bash
sleep 12 && lsof -i :18789 2>&1
```

## 配置路径

- **配置文件**: `~/.openclaw/openclaw.json`
- **Gateway 日志**: `/tmp/openclaw-gateway.log`
- **Node 二进制**: `/Users/mac/.npm-global/bin/node`
- **OpenClaw 入口**: `/Users/mac/.npm-global/lib/node_modules/openclaw/dist/index.js`
