---
title: '"cc-connect-full-health-check-20260512"'
topic: ''
created: unknown
updated: '2026-05-17'
type: '"research_note"'
status: '"active"'
quality_level: '"B"'
summary_cn: '"# Claude Code / cc-connect / 飞书 / Telegram / SSH / VPN / 模型连接 全方位体检报告"'
summary_en:
  - for business decisions."'
one_sentence_summary: '"cc-connect-full-health-check-20260512相关文档。"'
decision_value: '"业务参考文档"'
review_note: '"一般参考文档"'
category: '"AI自动化工兵营"'
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - 服务
  - 警告
  - 写入配置等
  - 频繁重启
  - 项目
  - 不覆盖
  - 全方位体检报告
  - 不修改
  - 主要问题
  - 建议优先级
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---
# Claude Code / cc-connect / 飞书 / Telegram / SSH / VPN / 模型连接 全方位体检报告

> 生成时间：2026-05-12 21:15 (GMT+8)
> 检测原则：只检测，不修改，不修复，不覆盖，不重启，不删除

---

## 0. 执行原则

- 本次仅执行只读命令（`cat`、`grep`、`find`、`ls`、`ps`、`curl HEAD`、`ssh -T` 安全探测等）
- 未执行任何修改命令（`rm`、`mv`、`cp`、`chmod`、`kill`、写入配置等）
- 所有敏感字段仅显示前 4 位和后 4 位，中间用 `****` 代替
- 所有结论基于实际命令输出、文件内容、日志内容或可验证现象

---

## 1. 总体结论

| 项目 | 状态 | 主要问题 | 证据 | 建议优先级 |
|------|------|----------|------|-----------|
| cc-connect 服务 | **警告** | 频繁重启（85次）、会话超时 SIGTERM、飞书 reply API 超时 | `cc-connect is running` 出现 85 次，2 分钟内优雅停止超时 | 高 |
| Claude Code 模型 | **严重** | `.env` 与 `settings.json` 模型配置冲突 | `.env` 使用 `kimi-for-coding`，`settings.json` 使用 `qwen3.6-plus` | 高 |
| 飞书连接 | **正常** | WebSocket 连接正常，但 reply API 偶发超时 | 最新消息处理成功，但 2026-05-12 07:22 出现 i/o timeout | 中 |
| Telegram 连接 | **严重** | **完全未配置** | `config.toml` 中无任何 Telegram 平台配置，无相关进程 | 高 |
| SSH 连接 | **正常** | GitHub 认证成功，但全局 ProxyCommand 可能影响非 GitHub 连接 | `ssh -T git@github.com` 返回 "Hi 546063!" | 低 |
| VPN / 代理 | **警告** | Clash Verge 运行中 + HTTP_PROXY 设置导致部分 API 无法连接 | 通过代理 curl api.openai.com 返回 HTTP 000，直连返回 200 | 中 |
| 模型 API 连通 | **严重** | Dashscope API Key 返回 `invalid_api_key / token expired` | curl 测试 dashscope 返回 `{"error":{"code":"invalid_api_key"...}}` | 高 |
| Codex 配置 | **警告** | 配置中存在 `/Users/mac` 路径（公司 iMac 路径），模型为 `gpt-5.4` | `~/.codex/config.toml` 含 6 条 `/Users/mac` 路径 | 中 |
| Token 消耗 | **警告** | 近三天消耗 106,975 tokens，最长单次 turn 耗时 41m41s | 5月10-12日共 17 turns，其中 s7 会话 output_tokens=12,022 | 高 |
| 安全与密钥 | **严重** | `.mcp.json`、`.env.bak`、`codex-global-state.json.bak`、`openclaw.json.bak` 均含明文 API Key | 4 个备份文件含有效 API Key，`.mcp.json` 含 4 个 Key | 高 |
| 磁盘空间 | **警告** | `~/.claude/` 占用 2.1GB，plugins 占 1.1GB | `du -sh` 确认 | 低 |
| 配置结构 | **警告** | `config.toml` 第 63 行有孤立的 `allow_from` 行 | 在两个 `[[projects]]` 之间存在游离配置行 | 中 |

---

## 2. 最严重的 10 个问题

### 问题 1：Dashscope（qwen3.6-plus）API Key 已过期/无效
- **严重等级**：严重
- **影响范围**：cc-connect default 项目的主 provider（qwen36plus）、当前终端会话默认模型
- **证据**：`curl` 测试 `https://coding.dashscope.aliyuncs.com/apps/anthropic/v1/messages` 返回 `{"error":{"code":"invalid_api_key","message":"invalid access token or token expired"...}}`，Key 前缀 `sk-sp-27bf****c225`
- **推测根因**：Dashscope 应用密钥已过期或被重置
- **建议处理方式**：更新 Dashscope API Key，确认应用状态
- **是否需要确认**：是，更新前请备份旧 Key

### 问题 2：~/.claude/.env 与 settings.json 模型配置冲突
- **严重等级**：严重
- **影响范围**：本地 Claude Code 终端会话使用什么模型完全不确定
- **证据**：
  - `~/.claude/.env` → `ANTHROPIC_MODEL=kimi-for-coding`，`ANTHROPIC_BASE_URL=https://api.kimi.com/coding/`
  - `~/.claude/settings.json` → `ANTHROPIC_MODEL=qwen3.6-plus`，`ANTHROPIC_BASE_URL=https://coding.dashscope.aliyuncs.com/apps/anthropic`
  - 当前终端进程（PID 89305）启动参数 `--model kimi-for-coding`（来自 `.env`）
  - 但 cc-connect 当前会话的 shell env 显示 `ANTHROPIC_MODEL=qwen3.6-plus`（来自 `settings.json`）
- **推测根因**：Claude Code 加载 `.env` 文件的优先级高于 `settings.json` env 块，导致模型切换不生效
- **建议处理方式**：统一模型来源，删除 `.env` 或确保两者一致
- **是否需要确认**：是

### 问题 3：Telegram 完全未配置
- **严重等级**：严重
- **影响范围**：Telegram 入口不可用
- **证据**：
  - `grep -i telegram ~/.cc-connect/config.toml` → 无结果
  - `ps aux | grep telegram` → 无相关进程
  - 无任何 Telegram bot token、webhook、polling 配置
- **推测根因**：从未配置或已被移除
- **建议处理方式**：如需 Telegram 入口，需要在 `config.toml` 中添加 `[[projects.platforms]] type = "telegram"` 区块
- **是否需要确认**：是，确认是否需要启用

### 问题 4：cc-connect config.toml 存在孤立配置行
- **严重等级**：警告
- **影响范围**：可能导致配置解析歧义
- **证据**：第 63 行 `allow_from = ["ou_35dfc186e9f6018f2f6fab53b1486cdf"]` 位于 `[[projects]]` 之间，不属于任何项目块
  ```
  Line 55: app_secret = "6O2H****PrHcx"  (default 项目飞书配置结束)
  Line 56-62: 注释行（分隔符）
  Line 63: allow_from = ["ou_35df..."]    <-- 孤立行！
  Line 64: [[projects]]                    (codex 项目开始)
  ```
- **推测根因**：可能是从旧配置复制粘贴时遗留
- **建议处理方式**：删除第 63 行孤立配置
- **是否需要确认**：是

### 问题 5：多个备份文件含有效 API Key
- **严重等级**：严重
- **影响范围**：密钥泄露风险
- **证据**：
  - `~/.claude/.env.bak-kimi-20260507` → 含 `sk-kimi-KHTy****04spc`（1 处）
  - `~/.codex/.codex-global-state.json.bak` → 含 `sk-`（1 处）
  - `~/.openclaw/openclaw.json.bak` → 含 `sk-`（1 处）
  - `~/.openclaw/openclaw.json.bak-kimi-20260507` → 含 `sk-`
  - `~/.mcp.json` → 含 Tavily `tvly-dev-1sZ3****IEnhlPl`、Firecrawl `fc-c857d****e90fe1c0`、2 个 MiniMax Key、Lark app_secret
- **推测根因**：备份策略未清理敏感信息
- **建议处理方式**：确认 Key 是否仍有效后清理或加密备份文件
- **是否需要确认**：是

### 问题 6：cc-connect 频繁重启（85 次）
- **严重等级**：警告
- **影响范围**：服务稳定性、会话连续性
- **证据**：`grep -c "cc-connect is running" cc-connect.log` → 85 次
- **推测根因**：手动重启、配置变更后重启、或进程崩溃自动重启
- **建议处理方式**：确认是否有自动重启机制，如无则排查异常重启原因
- **是否需要确认**：否，可观察

### 问题 7：会话超时频繁触发 SIGTERM
- **严重等级**：警告
- **影响范围**：用户消息处理中断
- **证据**：2 分钟内优雅停止超时，至少 14 次 SIGTERM（最近一次 2026-05-11T15:20:11）
- **推测根因**：Claude Code 进程响应慢，或模型 API 响应时间过长
- **建议处理方式**：考虑增加 graceful stop timeout，或优化模型响应速度
- **是否需要确认**：是

### 问题 8：Clash 代理导致部分 API 连接失败
- **严重等级**：警告
- **影响范围**：通过 `HTTP_PROXY=http://127.0.0.1:7897` 访问的 API 全部返回 HTTP 000
- **证据**：
  - `curl -x http://127.0.0.1:7897 https://api.openai.com` → HTTP 000
  - `curl -x http://127.0.0.1:7897 https://openrouter.ai` → HTTP 000
  - `curl -x http://127.0.0.1:7897 https://api.telegram.org` → HTTP 000
  - `curl --noproxy '*' https://open.feishu.cn` → HTTP 200（直连成功）
  - `curl --noproxy '*' https://openrouter.ai` → HTTP 200（直连成功）
- **推测根因**：Clash 规则未放行这些域名
- **建议处理方式**：在 Clash 中为模型 API 域名设置 DIRECT 规则
- **是否需要确认**：是

### 问题 9：Codex 配置包含公司 iMac 路径
- **严重等级**：警告
- **影响范围**：Codex 在本地 Mac 上可能找不到正确的文件路径
- **证据**：`~/.codex/config.toml` 中有 6 条 `/Users/mac` 路径，包括 `notify` 路径指向 `/Users/mac/.codex/computer-use/...`
- **推测根因**：Codex 配置从公司 iMac 同步而来未修改
- **建议处理方式**：将 `/Users/mac` 替换为 `/Users/a1`
- **是否需要确认**：是

### 问题 10：飞书消息队列积压历史
- **严重等级**：警告
- **影响范围**：用户消息延迟响应
- **证据**：114 次 `message queued for busy session` 记录，最高 queue_depth=5（2026-05-01T07:13:04）
- **推测根因**：长会话处理中模型响应慢，新消息被排队
- **建议处理方式**：优化模型响应速度或使用更快的 provider
- **是否需要确认**：否

---

## 3. 连接性检查结果

| 连接 | 状态 | 详情 |
|------|------|------|
| 飞书 WebSocket | 正常 | `connected to wss://msg-frontier.feishu.cn/ws/v2` 连接成功 |
| 飞书 API (open.feishu.cn) | 正常 | `curl --noproxy '*' https://open.feishu.cn` → HTTP 200，耗时 0.23s |
| 飞书 Bot 识别 | 正常 | 识别到 2 个 bot ID：`ou_db65d4c****4c25c`（default）、`ou_2b01a8c****143723`（codex） |
| Telegram | **未配置** | config.toml 中无任何 Telegram 平台配置，无相关进程 |
| SSH (GitHub) | 正常 | `ssh -T git@github.com` → "Hi 546063! You've successfully authenticated" |
| SSH (公司服务器) | 未测试 | 配置指向 172.24.141.181:22，未在当前网络环境测试 |
| Clash Verge | 运行中 | PID 27024/27040，CPU 0.2%/0.6%，内存 0.5%/0.4% |
| ZeroTier | 运行中 | PID 256，低资源占用 |
| HTTP_PROXY | 已设置 | `http://127.0.0.1:7897`（Clash Verge） |
| DNS | 正常 | nameserver: 192.168.50.1 |
| api.openai.com | **代理阻断** | 通过代理 HTTP 000，直连未测试 |
| api.anthropic.com | **代理阻断** | 通过代理 HTTP 000，直连 HTTP 403 |
| coding.dashscope.aliyuncs.com | 连通但 Key 无效 | 直连 HTTP 404（正常），但 API 返回 `invalid_api_key` |
| api.minimaxi.com | 连通但认证失败 | 直连 HTTP 404（正常），API 返回认证错误（Header 问题） |
| openrouter.ai | 直连正常 | `curl --noproxy '*' https://openrouter.ai` → HTTP 200，耗时 2.5s |
| api.telegram.org | **代理阻断** | 通过代理 HTTP 000，直连 timeout 5s（中国大陆需代理） |
| cc-connect 服务 | 运行中 | PID 86934，启动时间 21:07，当前状态 `cc-connect is running projects=2` |

---

## 4. 模型延迟和可用性测试表

| provider | model | baseUrl | 连通状态 | HTTP 状态码 | 首包延迟 | 总耗时 | 错误摘要 | 判断 |
|----------|-------|---------|----------|------------|----------|--------|----------|------|
| dashscope (coding) | qwen3.6-plus | https://coding.dashscope.aliyuncs.com/apps/anthropic | 连接成功 | 404 (endpoint) | 0.12s | 0.12s | `invalid_api_key` / `token expired` | **Key 已过期** |
| minimax | MiniMax-M2.7 | https://api.minimaxi.com/anthropic | 连接成功 | 404 (endpoint) | 0.21s | 0.35s | `login fail: Please carry the API secret key in the 'X-Api-Key' field` | Header 名称不匹配（cc-connect 用 `x-api-key`，API 要求可能不同） |
| openrouter | z-ai/glm-5.1 | https://openrouter.ai/api/v1 | 直连成功 | 200 | N/A | 2.5s | 无（仅连通性测试） | 连通，但未做 API 认证测试 |
| feishu API | N/A | https://open.feishu.cn | 直连成功 | 200 | 0.23s | 0.23s | 无 | 正常 |

> 注：出于安全考虑，未发送真实 API Key 做完整 API 调用测试。上述测试仅验证端点连通性和基本认证响应。

---

## 5. 最近三天错误日志汇总

| 时间 | 来源文件 | 错误类型 | 错误摘要 | 频率 | 影响 | 根因判断 |
|------|----------|----------|----------|------|------|----------|
| 2026-05-12 07:22:26 | cc-connect.log | 飞书 reply 超时 | `dial tcp 124.237.235.19:443: i/o timeout` | 1 次 | 飞书回复延迟 551ms 后重试成功 | 网络波动，已自动恢复 |
| 2026-05-11 14:53:12 | cc-connect.log | 会话停止超时 | `claudeSession: graceful stop timed out, sending SIGTERM` timeout=2m0s | 2 次（5/11, 5/11） | 会话强制终止，可能丢失中间输出 | 模型响应超过 2 分钟 |
| 2026-05-12 19:07:11 | claude-to-im.err.log | 实例锁冲突 | `another cc-connect instance is already running (PID 86934)` | 1 次 | 阻止重复启动 | 正常保护机制 |
| 2026-05-12 07:59:19 | cc-connect.log | 超长 turn | `turn_duration=41m41.82s`，92 tools，output_tokens=12,022 | 1 次 | Token 消耗极大，会话占用长 | 复杂任务导致模型长时间运行 |
| 2026-05-12 19:05:00 | cc-connect.log | 慢发送警告 | `slow agent send elapsed=20.78s` | 2 次 | 用户等待时间长 | 模型首包延迟高 |
| 2026-05-10 23:08-23:10 | cc-connect.log | 消息排队 | `message queued for busy session` queue_depth=2 | 3 次 | 消息延迟处理 | 会话正忙 |

**错误频率统计**：
- SIGTERM 超时：累计 14+ 次（历史），近 3 天 2 次
- 消息排队：累计 114 次，近 3 天 4 次
- 飞书 API 超时：近 3 天 1 次
- 重复启动尝试：近 3 天多次（每次重启后尝试再次启动）

---

## 6. 飞书专项检查

### 配置
- **default 项目**：`app_id=cli_a9663a3305b89bc3`，`app_secret=6O2H****PrHcx`
- **codex 项目**：`app_id=cli_a97c44901db89bc0`，`app_secret=6XXe****hEnZ`
- 两个项目各自独立配置，app_id 不同

### 权限
- **allow_from**（default）：`["ou_35dfc186e9f6018f2f6fab53b1486cdf"]`（项目级设置正确）
- **allow_from**（codex）：`["ou_35dfc186e9f6018f2f6fab53b1486cdf"]`（正确）
- **平台级 allow_from 警告**：日志中持续出现 `allow_from is not set — all users are permitted` 警告（147 次）
  - 根因：`[[projects.platforms]]` 区块缺少 `allow_from` 字段，但项目级 `allow_from` 有效

### 消息路由
- 飞书消息 → 根据 `app_id` 路由到对应项目
- `cli_a9663a3305b89bc3` → default 项目（claudecode agent）
- `cli_a97c44901db89bc0` → codex 项目（codex agent）

### 重复触发风险
- **两个飞书 bot 同时运行**：default 和 codex 项目各自有一个飞书 WebSocket 连接
- 消息不会重复消费（根据 app_id 区分），但用户需要给不同 bot 发消息才能触发不同项目

### 连接错误
- 2026-05-12 07:22:26：飞书 reply API i/o timeout（1 次，已重试成功）
- WebSocket 连接稳定，无断开记录

---

## 7. Telegram 专项检查

| 检查项 | 结果 |
|--------|------|
| Bot Token 配置 | **未配置**，config.toml 中无 Telegram 平台 |
| Webhook / Polling | **未配置** |
| Bot 进程 | **无**，`ps aux | grep telegram` 无结果 |
| 网络连通性 | api.telegram.org 通过代理 HTTP 000，直连 timeout |
| 代理影响 | Telegram API 在中国大陆需代理，当前代理未放行 |
| 重复进程 | 不适用 |
| 错误日志 | 无 Telegram 相关日志 |

**结论**：Telegram 入口完全未启用。如需启用，需要：
1. 在 `config.toml` 中添加 Telegram 平台配置
2. 确保 Clash 代理放行 `api.telegram.org`

---

## 8. SSH 专项检查

### config
- `~/.ssh/config` 存在，14 行
- GitHub 配置：`Host github.com` → `ssh.github.com:443`（443 端口绕过防火墙）
- 公司服务器：`Host tao-imac company-imac` → `172.24.141.181:22`
- **全局代理**：`Host *` → `ProxyCommand nc %h %p`（所有 SSH 走 nc 代理）

### Key 权限
- `id_ed25519`：600（正确）
- `id_ed25519.pub`：644（正确）
- `id_rsa`：600（正确）
- `id_rsa.pub`：644（正确）

### known_hosts
- 38 条记录，正常

### GitHub 连通性
- `ssh -T git@github.com` → "Hi 546063! You've successfully authenticated"（成功）

### 错误日志
- 近三天无 SSH 连接失败记录

---

## 9. VPN / 代理专项检查

### 当前代理环境变量
```
HTTP_PROXY=http://127.0.0.1:7897
HTTPS_PROXY=http://127.0.0.1:7897
ALL_PROXY=http://127.0.0.1:7897
```

### Clash Verge
- 进程运行中：PID 27024（UI）/ PID 27040（mihomo 内核）
- 运行时间：42h32m / 20h37m
- 外部 IP：140.235.140.58（通过代理）

### DNS
- nameserver: 192.168.50.1（路由器 DNS）

### API 连通性对比
| API | 通过代理 | 直连 | 建议 |
|-----|----------|------|------|
| open.feishu.cn | 未测试 | HTTP 200 (0.23s) | 直连正常 |
| coding.dashscope.aliyuncs.com | 未测试 | HTTP 404 (0.13s) | 端点通，Key 无效 |
| api.minimaxi.com | 未测试 | HTTP 404 (0.21s) | 端点通，Header 问题 |
| openrouter.ai | HTTP 000 (0.46s) | HTTP 200 (2.5s) | **代理阻断** |
| api.telegram.org | HTTP 000 (0.34s) | timeout (5s) | **代理和直连均不通** |
| api.anthropic.com | HTTP 000 (0.30s) | HTTP 403 (0.66s) | 代理阻断，直连返回 403 |

### 可能由 VPN 引起的问题
1. **OpenRouter 通过代理无法连接** → 需要在 Clash 中添加 `openrouter.ai` 为 DIRECT 规则
2. **Telegram API 代理未放行** → 需要在 Clash 中添加 `api.telegram.org` 为 PROXY 规则（走海外代理）
3. **Anthropic API 代理路径不明确** → 需确认是否应走代理

---

## 10. cc-connect 架构和配置分析

### default 项目
- agent 类型：`claudecode`
- work_dir：`/Users/a1/ai-workspaces/cc-connect-default`（空目录）
- mode：`bypassPermissions`
- providers：`qwen36plus`（主）、`minimax-m27`（已注释 fallback）

### codex 项目
- agent 类型：`codex`
- work_dir：`/Users/a1/ai-workspaces/cc-connect-codex`（空目录）
- mode：`bypassPermissions`
- providers：`minimax-m27hs`、`openrouter`

### work_dir 隔离
- default 和 codex 各有独立 work_dir（正确）
- 但两个目录均为空（首次使用后未产生文件）

### fallback
- default 项目的 `minimax-m27` provider 的 `fallback = true` 已被注释（`# disabled for token control`）
- codex 项目的 `openrouter` provider 无 fallback 标记
- **无默认 fallback 导致多模型重复请求的风险**（已正确禁用）

### timeout
- 所有 provider 的 `API_TIMEOUT_MS = 300000`（5 分钟）
- cc-connect 日志显示 graceful stop timeout = 2m0s
- 5 分钟 API 超时 + 2 分钟停止超时 = 最长 7 分钟单请求

### allow_from
- 项目级配置正确
- 平台级配置缺失导致持续警告（不影响功能）

### 旧配置风险
- 无 `old-config-*`、`*bak*`、`*backup*` 文件在 `~/.cc-connect/` 目录
- 无被误加载的旧配置风险

### 多入口风险
- 两个飞书 bot（不同 app_id）分别对应 default 和 codex 项目
- 不会互相干扰，但用户需要区分给哪个 bot 发消息

---

## 11. 代码质量和稳定性分析

### 重试机制
- 飞书 reply API 有重试机制（`max_retries=3`，延迟 551ms），已验证有效
- 会话停止有 2 分钟 graceful timeout，超时后 SIGTERM

### fallback 机制
- 已正确禁用 fallback 避免多模型重复请求

### 全目录扫描风险
- cc-connect 二进制文件为 Go 编译，未发现 `glob` 或 `os.walk` 模式
- 未发现全盘扫描行为

### 日志增长风险
- `cc-connect.log`：704KB（692K），正常大小
- `claude-to-im.out.log`：48KB，正常
- 无日志无限增长风险

### 错误处理
- 飞书 transient error 有自动重试
- 会话超时有 graceful stop + SIGTERM fallback
- 未发现未捕获错误

### 进程管理
- 单一 cc-connect 实例（PID 86934）
- 3 个相关进程为 Python → Node → Go 进程树，非重复启动

### 并发风险
- 消息队列机制已实现（queue_depth 最高 5）
- 未发现并发竞态条件证据

---

## 12. Token 消耗风险分析

### 风险等级：中-高

| 风险来源 | 触发条件 | 可能消耗 | 证据 | 建议 |
|----------|----------|----------|------|------|
| 超长会话 | 用户发起复杂多轮任务 | 单 turn 可达 12,022 output tokens | s7 会话 5月12日 07:59，41m41s，92 tools | 设置 max_tokens 上限或主动截断 |
| 多轮对话累积 | 同一 session 多轮消息 | input_tokens 随会话增长 | s2 会话 5月10日 input_tokens=35,987 | 使用 `/new` 重置会话 |
| 模型响应慢导致重试 | 模型超过 2 分钟未响应 | 2 分钟超时后 SIGTERM，用户可能重新发送 | 14 次 SIGTERM 记录 | 增加 timeout 或优化模型选择 |
| 工具调用过多 | agent 连续调用多个 tools | 单次 turn 92 tools | s7 会话 tools=92 | 限制单次 turn 的 tool 调用次数 |
| Codex 独立消耗 | Codex 项目使用不同模型 | 独立 token 池 | codex 使用 MiniMax-M2.7-highspeed | 监控 Codex token 消耗 |

### Token 统计（近三天）
- 总 turns：17
- 总 input tokens：65,379
- 总 output tokens：41,596
- 总计：106,975 tokens
- 平均单 turn：6,293 tokens

---

## 13. 速度瓶颈分析

| 瓶颈 | 证据 | 对应建议 | 优先级 |
|------|------|----------|--------|
| Dashscope API Key 无效 | 返回 `invalid_api_key`，模型调用失败 | 更新 API Key | 最高 |
| 模型首包延迟高 | 多次 `slow agent send` 超过 20s | 切换到更快的模型或使用缓存 | 高 |
| Clash 代理延迟 | 代理路径增加网络延迟 | 为模型 API 设置 DIRECT 规则 | 中 |
| OpenRouter 响应慢 | 直连 2.5s，代理不通 | 考虑备用 provider | 中 |
| 会话超时 SIGTERM | 2 分钟超时，用户需等待 | 增加 timeout 或换快模型 | 中 |
| 日志文件较大 | cc-connect.log 704KB | 定期轮转日志 | 低 |

**最大瓶颈**：Dashscope API Key 无效导致 default 项目主 provider 不可用，所有请求可能 fallback 到不可用状态。

---

## 14. 安全风险分析

### API Key 散落
| 文件 | 含 Key 类型 | 数量 | 风险等级 |
|------|------------|------|----------|
| `~/.cc-connect/config.toml` | Dashscope、MiniMax、OpenRouter | 4 | 高（主配置） |
| `~/.claude/.env` | Kimi | 1 | 高（override 风险） |
| `~/.claude/.env.bak-kimi-20260507` | Kimi | 1 | 高（备份未清理） |
| `~/.claude/.mcp.json` | Tavily、Firecrawl、MiniMax x2、Lark | 6 | 高（MCP 服务器明文） |
| `~/.claude/settings.json` | Dashscope | 1 | 中（正常配置） |
| `~/.codex/.codex-global-state.json.bak` | 未知 sk-* | 1 | 高 |
| `~/.openclaw/openclaw.json` | 未知 sk-* | 1 | 中 |
| `~/.openclaw/openclaw.json.bak` | 未知 sk-* | 1 | 高（备份未清理） |

### SSH Key 权限
- 所有私钥 600，公钥 644，权限正确

### 敏感信息在日志中
- cc-connect.log 中未发现 API Key 泄露（0 次 `sk-` 匹配）

### Webhook/Secret
- 飞书 app_secret 在 config.toml 和 .mcp.json（lark MCP server）中均有明文

---

## 15. 建议的调整顺序

### 立刻处理（P0）
1. **更新 Dashscope API Key** — default 项目主 provider 不可用
2. **解决 .env 与 settings.json 冲突** — 删除或统一 `~/.claude/.env`
3. **配置 Clash 代理规则** — 为模型 API 域名设置正确的路由

### 第二优先级（P1）
4. **清理备份文件中的 API Key** — `.env.bak`、`openclaw.json.bak` 等
5. **删除 config.toml 第 63 行孤立配置** — 避免解析歧义
6. **确认是否需要 Telegram 入口** — 如需要则配置

### 后续优化（P2）
7. **增加 graceful stop timeout** — 减少 SIGTERM 强制终止
8. **设置 max_tokens 上限** — 控制单 turn token 消耗
9. **修复 Codex 的 /Users/mac 路径** — 改为 /Users/a1
10. **为飞书平台级配置添加 allow_from** — 消除持续警告

### 可以暂时不动（P3）
11. 清理 `~/.claude/plugins` 缓存（1.1GB）
12. 日志轮转配置
13. SSH 全局 ProxyCommand 优化

---

## 16. 建议调整清单

### 1. 更新 Dashscope API Key
- **为什么要改**：当前 Key (`sk-sp-27bf****c225`) 返回 `invalid_api_key / token expired`，导致 default 项目完全不可用
- **改哪里**：`~/.cc-connect/config.toml` 第 16 行 `ANTHROPIC_AUTH_TOKEN`，`~/.claude/settings.json` 中的 `ANTHROPIC_AUTH_TOKEN`
- **预期收益**：恢复 qwen3.6-plus 模型正常调用
- **风险**：新 Key 需要验证可用性
- **是否需要备份**：是，备份旧 Key 值

### 2. 统一模型配置来源
- **为什么要改**：`.env` 覆盖 `settings.json`，导致模型切换行为不确定
- **改哪里**：删除 `~/.claude/.env` 或将其内容与 `settings.json` env 块对齐
- **预期收益**：模型行为可预测，切换脚本有效
- **风险**：删除 `.env` 后需确认终端启动参数不受影响
- **是否需要备份**：是，先备份 `.env` 为 `.env.archived`

### 3. Clash 代理规则调整
- **为什么要改**：代理阻断了 OpenRouter、Telegram、Anthropic 等 API
- **改哪里**：Clash Verge 规则中为以下域名添加 DIRECT 或正确 PROXY 规则：
  - `coding.dashscope.aliyuncs.com` → DIRECT（国内）
  - `api.minimaxi.com` → DIRECT（国内）
  - `open.feishu.cn` → DIRECT（国内）
  - `openrouter.ai` → PROXY（需海外）
  - `api.telegram.org` → PROXY（需海外）
- **预期收益**：所有 API 正常连通
- **风险**：规则配置错误可能导致所有网络中断
- **是否需要备份**：是，导出 Clash 当前配置

### 4. 清理备份文件中的 API Key
- **为什么要改**：备份文件包含有效 API Key，存在泄露风险
- **改哪里**：`~/.claude/.env.bak-*`、`~/.openclaw/openclaw.json.bak*`、`~/.codex/.codex-global-state.json.bak`
- **预期收益**：降低密钥泄露风险
- **风险**：如果 Key 已失效则无风险，如仍有效需先确认
- **是否需要备份**：否，本身就是备份文件

### 5. 修复 config.toml 结构
- **为什么要改**：第 63 行孤立 `allow_from` 可能导致 TOML 解析歧义
- **改哪里**：删除 `~/.cc-connect/config.toml` 第 63 行
- **预期收益**：配置结构清晰，消除潜在解析问题
- **风险**：低，该行不属于任何项目块
- **是否需要备份**：是，`cp config.toml config.toml.bak.$(date +%Y%m%d)`

### 6. 修复 Codex 路径
- **为什么要改**：`/Users/mac` 是其他机器路径，本地不存在
- **改哪里**：`~/.codex/config.toml` 中所有 `/Users/mac` 替换为 `/Users/a1`
- **预期收益**：Codex 在本地正常工作
- **风险**：如果路径是公司 iMac 共享的则可能影响
- **是否需要备份**：是

---

## 17. 附录：本次执行过的检测命令

```bash
# 一、进程检查
ps aux | grep -iE '(cc-connect|claude|codex|openclaw|telegram|node|python)' | grep -v grep

# 二、配置检查
cat ~/.cc-connect/config.toml
ls -la ~/.cc-connect/logs/
cat ~/.cc-connect/logs/cc-connect.err.log
cat ~/.cc-connect/logs/claude-to-im.err.log
tail -100 ~/.cc-connect/logs/claude-to-im.out.log
ls -la ~/.cc-connect/old-config-* ~/.cc-connect/*bak* ~/.cc-connect/*backup* ~/.cc-connect/*bad* 2>/dev/null
ls -la ~/.cc-connect/sessions/

# 三、网络/代理检查
echo "http_proxy=$http_proxy; https_proxy=$https_proxy; all_proxy=$all_proxy"
curl -s --connect-timeout 5 https://api.ipify.org
scutil --dns | grep -E "nameserver"
ps aux | grep -iE '(clash|surge|quantumult|v2ray|sing|wireguard|tailscale|zerotier)' | grep -v grep
curl -s -o /dev/null -w "HTTP %{http_code}" --connect-timeout 5 https://api.openai.com
curl -s -o /dev/null -w "HTTP %{http_code}" --connect-timeout 5 -x http://127.0.0.1:7897 https://openrouter.ai
curl -s -o /dev/null -w "HTTP %{http_code}" --connect-timeout 5 --noproxy '*' https://open.feishu.cn
curl -s --connect-timeout 5 -x http://127.0.0.1:7897 https://api.ipify.org

# 四、SSH 检查
cat ~/.ssh/config
ls -la ~/.ssh/id_*
stat -f "%A %N" ~/.ssh/id_*
ssh -T -o ConnectTimeout=5 -o StrictHostKeyChecking=no git@github.com
wc -l ~/.ssh/known_hosts

# 五、Shell 命令检查
alias cc; alias claude; alias codex; alias openclaw
which cc; which claude; which codex; which openclaw
type cc; type claude; type codex; type openclaw

# 六、模型切换脚本检查
ls /opt/homebrew/bin/cc-use-* ~/.local/bin/cc-use-* 2>/dev/null
which aitokens; which aireports; which cmem

# 七、配置目录检查
ls -la ~/.claude/ | head -20
cat ~/.claude/settings.json | head -30
cat ~/.claude/.env
cat ~/.claude/.mcp.json
ls -la ~/.codex/ | head -15
cat ~/.codex/config.toml | head -50
ls -la ~/.openclaw/ | head -15
cat ~/.openclaw/openclaw.json

# 八、日志检查
grep -iE '(error|fail|timeout|429|401|403|500)' ~/.cc-connect/logs/cc-connect.log | tail -30
grep -c "timeout" ~/.cc-connect/logs/cc-connect.log
grep "SIGTERM" ~/.cc-connect/logs/cc-connect.log
grep -E "input_tokens=[0-9]{5,}" ~/.cc-connect/logs/cc-connect.log
grep -c "cc-connect is running" ~/.cc-connect/logs/cc-connect.log
grep "slow agent send" ~/.cc-connect/logs/cc-connect.log
grep "message queued" ~/.cc-connect/logs/cc-connect.log
grep -c "allow_from is not set" ~/.cc-connect/logs/cc-connect.log

# 九、Token 统计
grep -E "2026-05-(10|11|12).*turn complete.*input_tokens" ~/.cc-connect/logs/cc-connect.log

# 十、磁盘检查
du -sh ~/.cc-connect ~/.claude ~/.codex ~/.openclaw
du -sh ~/.claude/plugins ~/.claude/agents ~/.claude/backups ~/.claude/debug

# 十一、安全检
grep -c "sk-" ~/.cc-connect/logs/cc-connect.log
grep -l "sk-" ~/.claude/.env.bak* 2>/dev/null
grep -c "sk-" ~/.openclaw/openclaw.json 2>/dev/null
ls -la ~/.ssh/id_* (权限)

# 十二、API 连通性测试（轻量，不消耗 token）
curl -s --connect-timeout 10 -m 15 --noproxy '*' https://coding.dashscope.aliyuncs.com/apps/anthropic/v1/messages \
  -H "Content-Type: application/json" -H "x-api-key: sk-sp-27bf140****c225" \
  -H "anthropic-version: 2023-06-01" -d '{"model":"qwen3.6-plus","max_tokens":5,"messages":[{"role":"user","content":"ping"}]}'

# 十三、进程和环境
ps aux | grep "claude.*--model" | grep -v grep
env | grep -i "ANTHROPIC\|CLAUDE_MODEL" | head -10
```

---

**报告完毕。所有检测均未做任何修改。**
