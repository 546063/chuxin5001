---
title: '"openclaw cli"'
aliases: '[]'
tags:
  - 系统工具]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn:
  - family, execute with the correct profile context, and verify postconditions.相关文档
summary_en: Document regarding openclaw-cli. Reference for business decisions.
one_sentence_summary: '# openclaw cli  --- # Openclaw Cli  # OpenClaw CLI  Run Open...'
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[OpenClaw, Codex]'
industry: []
scenario: '[知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# openclaw cli

---
# Openclaw Cli

# OpenClaw CLI

Run OpenClaw commands safely and efficiently. Choose the right command family, execute with the correct profile context, and verify postconditions.

## Execution Workflow

1. Clarify the target state.
Ask what should change and what must remain untouched.

2. Select runtime scope first.
Use default profile unless isolation is requested. Use:
- `openclaw --dev ...` for isolated dev state under `~/.openclaw-dev`.
- `openclaw --profile <name> ...` for named isolated state under `~/.openclaw-<name>`.

3. Choose the command family.
Use `references/command-map.md` to route the request quickly.

4. Expand command details before running risky operations.
Run `openclaw <command> --help` for starred families and confirm flags.

5. Prefer machine-readable output when automation is needed.
Use `--json` where available, then parse/verify.

6. Verify outcomes explicitly.
Check with `openclaw status`, `openclaw health`, `openclaw nodes status --json`, or command-specific follow-up.

## Safety Rules

- Require explicit user confirmation before `reset`, `uninstall`, destructive `--force` flows, or credential-clearing operations.
- Prefer non-destructive diagnostics first: `status`, `health`, `doctor`, `logs`.
- Keep profile usage consistent across a workflow. Do not mix default and `--dev`/`--profile` commands accidentally.
- For gateway issues, diagnose before restart unless restart is explicitly requested.

## Triage Sequence

For generic "OpenClaw not working" issues:
1. Run `openclaw status`.
2. Run `openclaw health`.
3. Run `openclaw doctor`.
4. Check `openclaw gateway ...`, `openclaw node ...`, or `openclaw nodes ...` based on where failure appears.
5. Escalate to targeted commands in `references/command-map.md`.

## Resources

- `references/command-map.md`: Command families, routing guidance, and practical recipes.

---

## 参考资料


### README

# OpenClaw CLI Skill

A Codex skill for operating and troubleshooting the OpenClaw CLI safely and quickly.

This skill helps route requests to the correct `openclaw` command family, apply profile isolation correctly (`--dev`, `--profile`), and verify outcomes after each operation.

## Highlights

- Command-family routing for setup, runtime, channels, messaging, agents, models, plugins, and system health.
- Built-in triage flow for "OpenClaw not working" incidents.
- Safety-first guidance for destructive commands (`reset`, `uninstall`, `--force`).
- Verification-first workflow (`status`, `health`, `doctor`, `--json` when available).

## Command Coverage

- Runtime and services: `gateway`, `daemon`, `node`, `nodes`
- Diagnostics: `status`, `health`, `doctor`, `logs`
- Messaging and channels: `channels`, `message`, `pairing`, `devices`, `qr`
- Agent workflows: `agent`, `agents`, `skills`
- Setup and config: `setup`, `configure`, `config`, `onboard`
- Extensions and system: `plugins`, `models`, `system`, `update`
- Security and policy: `security`, `approvals`, `sandbox`

## Installation

Clone this repo into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
git clone https://github.com/ramensushi2026/openclaw-cli-skill.git ~/.codex/skills/openclaw-cli
```

If you already cloned it elsewhere, copy the folder so the final path is:

```text
~/.codex/skills/openclaw-cli
```

## Usage

Ask Codex with the skill name:

```text
Use $openclaw-cli to diagnose why my channels are disconnected.
Use $openclaw-cli to send a WhatsApp message from the dev profile.
Use $openclaw-cli to restart gateway and verify health.
```

## Safety Model

The skill is designed to avoid accidental destructive actions:

- Confirms intent before `reset`, `uninstall`, or forceful flows.
- Prefers diagnostics before restarts.
- Keeps profile context consistent across a workflow.
- Uses explicit post-checks after each operation.

## Repository Structure

- `SKILL.md`: Skill definition, workflow, triage sequence, and guardrails.
- `references/command-map.md`: OpenClaw command routing, recipes, and caution commands.
- `agents/openai.yaml`: Agent-facing display metadata and prompt defaults.

## References

- OpenClaw CLI docs: https://docs.openclaw.ai/cli


### command-map

# OpenClaw CLI Command Map

## Table of Contents

- Global flags
- Command routing quick map
- Command families
- Common recipes
- Caution commands

## Global Flags

- `--dev`: Use dev profile and isolate under `~/.openclaw-dev`; default gateway port `19001`.
- `--profile <name>`: Isolate state/config under `~/.openclaw-<name>`.
- `--no-color`: Disable ANSI colors for logs/automation.
- `-h`, `--help`: Show help.
- `-V`, `--version`: Print version.

Prefer choosing profile flags before the command family:

```bash
openclaw --dev status
openclaw --profile staging gateway
```

## Command Routing Quick Map

- Run a single agent turn: `agent`
- Manage isolated agent runtimes: `agents`
- Diagnose health: `status`, `health`, `doctor`, `logs`
- Operate gateway runtime: `gateway`, `daemon`
- Operate headless node service: `node`, `nodes`
- Manage channel auth/connectivity: `channels`, `pairing`, `devices`, `qr`
- Send/read messages: `message`
- Model discovery/config: `models`
- Config/setup/onboarding: `setup`, `configure`, `config`, `onboard`
- Plugin/extension management: `plugins`
- Scheduled jobs: `cron`
- Security/audits: `security`, `approvals`, `sandbox`
- Live docs lookup: `docs`
- Open Control UI: `dashboard`, `tui`
- System/presence/events: `system`
- Local data lifecycle: `reset`, `uninstall`, `update`

For starred families, inspect subcommands first:

```bash
openclaw <family> --help
```

## Command Families

- `acp *`: Agent Control Protocol tooling.
- `agent`: Execute one agent turn via Gateway.
- `agents *`: Manage isolated agents, auth, routing, workspaces.
- `approvals *`: Manage exec approvals.
- `browser *`: Manage dedicated browser (Chrome/Chromium).
- `channels *`: Manage chat channel connections.
- `clawbot *`: Legacy command aliases.
- `completion`: Generate shell completions.
- `config *`: Non-interactive config helper commands.
- `configure`: Interactive setup wizard.
- `cron *`: Manage scheduler jobs.
- `daemon *`: Legacy alias for gateway service control.
- `dashboard`: Open Control UI with current token.
- `devices *`: Device pairing and token management.
- `directory *`: Lookup contact/group IDs for channels.
- `dns *`: DNS helpers for wide-area discovery.
- `docs`: Search live OpenClaw docs.
- `doctor`: Run health checks and quick fixes.
- `gateway *`: Run/inspect/query the WebSocket Gateway.
- `health`: Fetch health from running gateway.
- `hooks *`: Manage internal agent hooks.
- `logs`: Tail gateway file logs via RPC.
- `memory *`: Search/reindex memory files.
- `message *`: Send/read/manage messages.
- `models *`: Discover/scan/configure models.
- `node *`: Run/manage headless node host service.
- `nodes *`: Manage gateway-owned node pairing and commands.
- `onboard`: Interactive onboarding for gateway/workspace/skills.
- `pairing *`: Secure DM pairing flow.
- `plugins *`: Manage plugins/extensions.
- `qr`: Generate iOS pairing QR/setup code.
- `reset`: Reset local config/state (CLI remains installed).
- `sandbox *`: Manage sandbox containers.
- `security *`: Security tooling and local config audits.
- `sessions`: List stored conversation sessions.
- `setup`: Initialize local config and workspace.
- `skills *`: List and inspect available skills.
- `status`: Show channel health + recent recipients.
- `system *`: System events, heartbeat, presence.
- `tui`: Open terminal UI connected to Gateway.
- `uninstall`: Remove gateway service and local data.
- `update *`: Update OpenClaw and check channel status.
- `webhooks *`: Webhook integration helpers.

## Common Recipes

Inspect help for an area:

```bash
openclaw models --help
openclaw channels --help
```

Run gateway locally:

```bash
openclaw gateway --port 18789
openclaw --dev gateway
openclaw gateway --force
```

Perform channel login with logs:

```bash
openclaw channels login --verbose
```

Send a message with JSON output:

```bash
openclaw message send --target +15555550123 --message "Hi" --json
openclaw message send --channel telegram --target @mychat --message "Hi"
```

Run an agent turn and optionally deliver:

```bash
openclaw agent --to +15555550123 --message "Run summary" --deliver
```

Check runtime health:

```bash
openclaw status
openclaw health
openclaw doctor
```

## Caution Commands

- `openclaw reset`: destructive local state reset.
- `openclaw uninstall`: removes service + local data.
- `openclaw gateway --force`: forcefully clears port conflicts.

Always confirm intent before running caution commands.

## External Docs

- CLI docs: `https://docs.openclaw.ai/cli`

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]