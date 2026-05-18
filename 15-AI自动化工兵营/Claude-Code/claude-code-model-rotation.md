---
title: "\"Claude Code 模型轮转管理\""
aliases: "[]"
tags: "[AI工作流, ClaudeCode, 模型路由, 使用技巧]"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "工具技能"
status: "active"
quality_level: "B"
summary_cn: "Claude Code CLI模型自动轮转脚本，支持MiniMax-M2.7全天候主力、GLM-5.1专家层通过delegation按需触发。包含带抖动指数退避（初始1s，最大60s，±20%抖动，10次失败切换）策略。"
summary_en: "Document regarding claude-code-model-rotation. Reference for business decisions."
one_sentence_summary: "# claude code model rotation  --- # Claude Code Model Rotati..."
decision_value: "Code and automation template reference"
review_note: "Code template"
category: "AI工作流"
platform: "[Claude Code, Hermes]"
industry: []
scenario: "[客户开发, 知识库维护, 自动化]"
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - Claude Code
  - - 模型轮转
  - - MiniMax
  - - GLM
  - - 退避策略
  - - 并发配置
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# claude code model rotation

---
# Claude Code Model Rotation

# Claude Code 模型轮转管理 v3

## 概述
Claude Code CLI 模型自动轮转脚本，支持：
- **MiniMax-M2.7 全天候主力**：套餐制不怕并发，实测安全并发 20-25
- **GLM-5.1 专家层**：通过 delegation 按需触发，实测安全并发 8-9
- **带抖动指数退避**：初始1s，最大60s，±20%抖动，10次失败切换下一模型
- **实测并发优化**：基于压力测试的安全并发配置

## 模型链（优先级从高到低）
```
[1] MiniMax-M2.7     (minimax_m27)      — 全天候主力 Orchestrator（实测安全并发 20-25）
[2] DeepSeek         (deepseek)         — 备选
[3] MiniMax-M2.5     (minimax_m25)      — 兜底
```

## GLM-5.1 专家层架构
```
用户请求 → MiniMax-M2.7 (主力 Orchestrator)
    ├── 日常任务/代码执行 → MiniMax 直接处理
    ├── 复杂中文/代码思考 → delegate_task → GLM-5.1 (专家层，实测安全并发 8-9)
    ├── MiniMax 失败 → DeepSeek (终极兜底)
    └── 全部失败 → MiniMax-M2.5 (最终兜底)
```

## 高峰期策略
| 时段 | 策略 |
|------|------|
| 全天 | MiniMax-M2.7 主力运行 |
| 复杂任务 | 通过 delegation 触发 GLM-5.1 专家层 |

GLM Coding Plan Pro 套餐实测并发 8-9（远高于官方文档的2并发），但高峰期仍需谨慎。

## 退避策略
```
初始延迟: 1s
最大延迟: 60s
增长因子: 2x (指数)
抖动: ±20%
单模型最大重试: 10次
```

示例退避序列（无抖动）: 1s → 2s → 4s → 8s → 16s → 32s → 60s → 60s → 60s → 60s

## 文件位置
- 脚本: `~/.hermes/scripts/claude_code_model_rotation.py`
- 状态: `~/.hermes/scripts/.cc_model_state.json`
- 日志: `~/.hermes/scripts/.cc_model_rotation.log`
- 配置: `~/.claude/settings.json`

## 关键配置（已更新）
- `config.yaml`: `model.max_concurrency` 无效（代码不读取），并发由 client 层硬编码管理
- `delegation.max_concurrency` 无效（代码不读取），子代理并发由 `delegate_tool.py` 内部 `max_concurrent_children` 控制
- `config.yaml`: `delegation.model: glm-5.1`（GLM Coding Plan 实际模型名）
- `config.yaml`: `delegation.provider: glm`
- `delegation.max_iterations: 30`（降低，减少连续请求）

## 常用命令
```bash
python3 ~/.hermes/scripts/claude_code_model_rotation.py status    查看状态（含时段判断）
python3 ~/.hermes/scripts/claude_code_model_rotation.py smart     智能切换（根据时段）
python3 ~/.hermes/scripts/claude_code_model_rotation.py auto      自动检测+轮转（带退避）
python3 ~/.hermes/scripts/claude_code_model_rotation.py test      测试当前模型
python3 ~/.hermes/scripts/claude_code_model_rotation.py daemon    守护进程（持续监控+智能切换）
python3 ~/.hermes/scripts/claude_code_model_rotation.py reset     重置到 [1]
```

## 核心设计哲学
**"保守但务实"** — 并行工具执行采用白名单制，未知工具一律串行，宁愿慢也不引入并发 bug。

## 关键坑点

### 1. Token 读取路径
`get_token_for_provider()` 必须从 `profiles.<profile_key>.env` 读，不能从顶层 `env` 读。
每次 `switch_to_model()` 会覆盖顶层 `env`，导致其他模型的 token 被覆盖。

### 2. API 端点
| Provider | 端点 |
|----------|------|
| GLM (bigmodel.cn) | `open.bigmodel.cn/api/coding/paas/v4` → `/chat/completions` |
| MiniMax (cn) | `api.minimaxi.com/v1` → `/chat/completions` |
| DeepSeek | `api.deepseek.com` → `/chat/completions` |

### 3. 模型名映射
- 配置写 `glm-5.1`，API 端点 `open.bigmodel.cn/api/coding/paas/v4`
- GLM Coding Plan 实际返回模型名是 `glm-5.1`（不是 `glm-5`）
- 使用 GLM-5.1 需配置 `delegation.model: glm-5.1`, `delegation.provider: glm`

### 4. GLM Coding Plan 并发实测
- Pro 套餐: 实测安全并发 8-9（远高于官方文档的2并发）
- 触发 429 阈值: 10 并发
- `delegation.max_concurrency` 无效，并发不受 config 控制

### 5. Token 截断占位符问题（关键！）
`settings.json` 中的 API Token 可能显示为截断的占位符（如 `sk-cp-...7Phk`），这意味着真实的 token 已经丢失！

**两种严重程度：**
| 程度 | 症状 | 诊断 |
|------|------|------|
| Token 截断 | Token 显示如 `sk-cp-...7Phk` | `grep API_KEY ~/.claude/settings.json` |
| Token 为空 | Token 长度 = 0（完全丢失） | `python3 -c "import json; print(len(json.load(open('~/.claude/settings.json'))['env'].get('API_KEY','')))"` |

**症状（两种情况相同）**:
- 所有模型测试返回 401 认证失败
- 即使切换到其他模型仍然是 401
- curl 直接测试 API 端点返回 401

**诊断方法**:
```bash
# 检查 settings.json 中的 token（所有 profile）
python3 -c "
import json
settings = json.load(open('/Users/mac/.claude/settings.json'))
for name, profile in settings.get('profiles', {}).items():
    token = profile.get('env', {}).get('API_KEY', '')
    print(f'{name}: {token[:15] if token else \"EMPTY\"} (len={len(token)})')
"

# 直接测试各模型 API（不经过 rotation 脚本）
curl -s -X POST "https://open.bigmodel.cn/api/coding/paas/v4/chat/completions" \
  -H "Authorization: Bearer <完整token>" \
  -H "Content-Type: application/json" \
  -d '{"model": "glm-5.1", "messages": [{"role": "user", "content": "hi"}], "max_tokens": 10}'
```

### 5.1 DNS 污染检测（2026-04-20 新发现）

**症状**：
- API 请求超时或返回 401/404
- `host api.minimaxi.com` 或 `nslookup` 返回 `198.18.x.x` 地址
- 198.18.x.x 是保留地址段，正常不应出现在公网 DNS 响应中

**诊断**：
```bash
# 检查 DNS 解析
host api.minimaxi.com
host api.deepseek.com
host open.bigmodel.cn

# 预期：api.minimaxi.com → 正常公网 IP（如 120.x.x.x）
# 异常：api.minimaxi.com → 198.18.x.x（DNS 污染）
```

**关键发现（2026-04-20）**：
- ❌ 切换 VPN 节点未能解决（新加坡 → 香港 → 再次新加坡均返回 198.18.x.x）
- ❌ 使用 Google DNS (8.8.8.8) 查询仍返回污染地址
- ✅ 确认不是 VPN 代理问题，而是本地 DNS 缓存污染或运营商侧 DNS 劫持

**解决方案**：
1. 刷新 DNS 缓存（需要 sudo）：
   ```bash
   sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder
   ```
2. 临时解决方案：等待 DNS 自动恢复（运营商侧问题，无法通过代理绕过）
3. 备选方案：使用其他网络（手机热点、办公网络）

### 5.2 GLM CLI 备用方案（2026-04-20 新发现）

当 `settings.json` 中所有 token 都丢失时，可检查独立的 GLM CLI 配置：

```bash
# 检查 glm CLI 配置
which glm && glm config --show

# GLM CLI 配置位置
cat ~/.config/glm-claude/config.json

# GLM CLI 可能有独立的有效 token
```

此配置与 `settings.json` 分离，可能包含有效 token。

**临时解决方案**:
当 MiniMax/DeepSeek token 都失效时，可临时切换到 GLM-5.1（如果其 token 有效）：
```python
# 手动切换到有效模型
python3 << 'EOF'
import json
from pathlib import Path

settings_path = Path.home() / ".claude" / "settings.json"
settings = json.loads(settings_path.read_text())

# 切换到 glm5 profile
if 'glm5' in settings.get('profiles', {}):
    profile = settings['profiles']['glm5']
    settings['model'] = profile['model']
    settings['env'] = profile['env']
    settings_path.write_text(json.dumps(settings, indent=2))
    print(f"Switched to {profile['model']}")
EOF
```

**根本解决**:
需要用户重新提供有效的 API Key，并在配置中正确保存（不被截断）。

### 6. 代理冲突：Shadowrocket 与 Clash Verge 竞争

**症状**：
- 网络请求超时（SSL 握手超时）
- 直接 ping 通但 HTTP/HTTPS 请求失败
- 多个 API 端点同时超时

**诊断**：
```bash
# 检查系统代理设置
scutil --proxy list

# 检查活跃的代理进程
ps aux | grep -i -E "clash|shadow|v2ray" | grep -v grep
```

**发现**：
- macOS 系统代理指向 127.0.0.1:1082（Shadowrocket 的 SOCKS5 端口）
- Clash Verge 监听 Unix socket (`/tmp/verge/verge-mihomo.sock`)
- 两个代理同时存在时，Python urllib 可能优先走系统代理（Shadowrocket），导致路由混乱

**解决**：
```bash
# 强制 Clash Verge 接管全局流量
curl -s --unix-socket /tmp/verge/verge-mihomo.sock -X PUT http://localhost:9090/proxies/GLOBAL \
  -H "Content-Type: application/json" \
  -d '{"name": "🚀 节点选择"}'

# 或切换到其他节点
curl -s --unix-socket /tmp/verge/verge-mihomo.sock -X PUT http://localhost:9090/proxies/🚀%20节点选择 \
  -H "Content-Type: application/json" \
  -d '{"name": "🇸🇬 新加坡02  BGP专线-A组"}'
```

**根本解决**：
在系统偏好设置中关闭 Shadowrocket 的系统代理设置，或只保留一个 VPN 客户端运行。

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]