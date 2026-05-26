---
title: '"openclaw agent optimize"'
aliases: '[]'
tags:
  - - 系统工具]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn:
  - - **parallel-first delegation**, and **lean context**.相关文档
summary_en: Document regarding openclaw-agent-optimize. Reference for business decisions.
one_sentence_summary: '"openclaw agent optimize"'是AI工作流领域的核心方法。
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[OpenClaw, Claude Code]'
industry: []
scenario: '[知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

## 1) Principle: Cron should be “script-first”

**Goal:** the cron payload should be:
- a short instruction (or one command)
- a single script execution
- a small, bounded output

Prefer:
- `scripts/<job>.py` or `scripts/<job>.mjs`
- inputs/outputs stored in `memory/` or `state/` files

---

## 2) Keep prompts short and stable

Patterns:
- Put long documentation in `references/` files or comments in the script.
- Put configuration knobs in a JSON file (read by script), not in the prompt.
- Avoid embedding large templates unless absolutely necessary.

Rule of thumb:
- If the prompt needs > ~300 tokens of “how to run”, convert it into a script.

---

## 3) Prefer “alert-only delivery”

Most scheduled jobs should not message the user every time.

Recommended pattern:
- Job always writes its output to `memory/<artifact>.md` or `memory/<artifact>.json`.
- Job returns:
  - `NO_REPLY` when nothing is new / actionable
  - a short alert message only when something changed (new signal, error, anomaly)

If you need periodic reporting, separate into two jobs:
- **collector** (frequent, deliver=false, script-first)
- **reporter** (less frequent, deliver=true, summarizes recent artifacts)

---

## 4) Throttles and budgets (anti-surprise)

Add explicit throttles to reduce waste:
- **time-based throttle**: only run heavy steps every N runs
- **change-based throttle**: compute a hash of inputs; skip if unchanged
- **result-size cap**: never output more than X lines / X chars

Budget guardrails (recommended when costs matter):
- If cost spikes (or error repeats), downgrade behavior:
  - reduce scan scope
  - reduce frequency
  - disable delivery and log locally
  - fall back to minimal mode and alert once

---

## 5) Model assignment (tiered, not named)

Model-agnostic guidance:
- Default cron jobs should use the **cheapest tier** that reliably completes the task.
- Upgrade to a higher tier only if:
  - the task repeatedly fails, or
  - accuracy materially matters (e.g., financial decisions, complex synthesis)

---

## 6) Idempotency and crash safety

Cron jobs should be safe to re-run.

Patterns:
- Keep a cursor/state file (e.g., `memory/<job>-state.json`).
- Append-only logs (JSONL) for auditability.
- Avoid side effects unless a human explicitly approves.

---

## 7) Guardrails (human control)

- Do not create/edit/remove cron definitions unless explicitly requested.
- Show the exact cron change and rollback plan before applying.
- If optimization requires reducing coverage or frequency, present options and let the user choose.

Suggested options:
- Profile A: alert-only, minimal scope (cheapest)
- Profile B: balanced (moderate scope)
- Profile C: full scan + periodic report (most coverage)


### heartbeat-optimization

# Heartbeat Optimization (Generalized)

Heartbeat polls are convenient, but they are often the **largest hidden cost driver** because they:
- run in the **main session** (expensive models / large context by default), and
- tend to call tools that return **large payloads** (e.g., session listings, status cards), and
- can happen frequently.

This guide provides **model-agnostic** patterns to reduce token burn. It avoids naming any specific model.

---

## 1) Principle: Heartbeat should be “control-plane”, not “data-plane”

- **Control-plane (cheap):** Decide whether anything needs action, then either stay silent / minimal ack.
- **Data-plane (expensive):** Large scans, long lists, aggregations, or reports.

**Recommendation:** Keep heartbeat control-plane only. Move data-plane work to isolated cron or scripts.

---

## 2) Native heartbeat: why “isolating it” is not always reliable (and why it can get expensive)

On paper, native heartbeat supports `agents.defaults.heartbeat.session`, which suggests you can run heartbeats in a separate session.

**In practice (based on real-world observations), native heartbeat may still execute in the main interactive session** when heartbeats are triggered as *wake events* (e.g., “exec finished” → request heartbeat). That means:

- You can still pay the **main-session context tax** (100k+ tokens) even if you believe you isolated heartbeat.
- It can fire far more frequently than the interval (e.g., many runs per minute) if your system generates frequent wake triggers.

**Recommendation (cost-first):**
- Propose disabling native heartbeat and using isolated cron heartbeats:
  - `agents.defaults.heartbeat.every: "0m"`
- Treat heartbeat as “control-plane only”, and move monitoring to an isolated cron job.
- **Execution rule:** do not apply config changes until the user explicitly approves.

If a user insists on keeping native heartbeat:
- Keep it infrequent.
- Prefer `agents.defaults.heartbeat.target: "none"`.
- Keep the prompt tiny and avoid large tool calls.

---

## 3) Pair heartbeat with openclaw-mem (optional, recommended)

If the user uses isolated heartbeats already, a great next step is to install **openclaw-mem** (tool-observation memory layer) to make “cheap heartbeats” smarter via retrieval.

- Repo: https://github.com/phenomenoner/openclaw-mem

**When to mention this:**
- If the user does *not* have openclaw-mem installed/configured, recommend it.
- If they already have it, **don’t mention it**.

---

## 4) The "Isolated Heartbeat" Pattern (cron-based, best practice)

**Problem:** Native heartbeat (especially when it runs in the main session) is architecturally expensive for long-running agents.
- **Context Bloat:** Main sessions accumulate history (often 50k+ tokens).
- **Cost Multiplier:** Each heartbeat can load this full context. Even with caching, a simple "wake up" check can be expensive.
- **Inefficiency:** 99% of the time, the agent wakes up, reads a huge context, says "nothing to do", and goes back to sleep.

**Solution: The Isolated Heartbeat**
Offload the monitoring to a dedicated, stateless worker.

1) **Disable native heartbeat:**
   - Set `agents.defaults.heartbeat.every = "0m"`.

2) **Enable an isolated heartbeat cron job (with approval):**
   - Ask for explicit user approval before creating/updating any cron job.
   - Create a cron job with `sessionTarget: "isolated"`.
   - Schedule: Every 10–15 minutes.
   - Model: Cheapest available.
   - Payload: simple health/triage logic that sends messages **only when something needs attention**.

**Trade-off:** The main agent becomes reactive-only. It won't self-initiate tasks unless triggered by a user message or an explicit wake event from another job. This is usually acceptable for efficient assistants.

---

## 5) The "Hybrid Heartbeat" Pattern (RAG Optimization)

**Problem:** The "Isolated Heartbeat" is cheap but "dumb"—it has no memory of recent conversations or active tasks in the main session.

**Solution: Retrieval-Augmented Generation (RAG) for Heartbeats**
Combine the low cost of an isolated session with targeted memory retrieval.

1) **Write Context (Main Session):**
   - Ensure the main agent writes key state/tasks to a daily memory file (e.g., `memory/YYYY-MM-DD.md`) or a dedicated `HEARTBEAT.md` checklist.

2) **Read Context (Isolated Heartbeat):**
   - Modify the isolated heartbeat prompt to retrieve only what it needs.
   - Example prompt: “Identify today’s date and read `memory/YYYY-MM-DD.md`. Check for TODO/Monitoring items. If found, verify status.”

---

## 6) Common hidden token sinks (and safer replacements)

### A. Large tool outputs
Examples:
- listing sessions / jobs / logs
- dumping JSON summaries
- repeated status cards

Replace with:
- throttling (heavy calls only every N minutes)
- targeted queries
- scripts that output a small, fixed-size summary

### B. “Always-run” checklists
If the checklist runs on every heartbeat, it will dominate cost.

Replace with:
- tiered cadence (e.g., 30–60 min)
- event-driven alerts

---

## 7) Three recommended heartbeat profiles (pick one)

### Profile A — Ultra Low Token (recommended when cost matters)
**Behavior:** On heartbeat poll, reply exactly `HEARTBEAT_OK`. No tools. No reads.

If Profile A is still expensive (because the platform injects a huge session context):
- disable native heartbeat and use isolated cron heartbeats.

### Profile B — Light Monitor (balanced)
**Behavior:** Only check minimal state (small file) + alert on anomalies.

### Profile C — Full Monitor (safety-first)
**Behavior:** Run a full checklist each time.

---

## 8) Disable heartbeat delivery (when heartbeat turns are inherently expensive)

Sometimes heartbeat cost is dominated by **input/cache tokens** (large context reuse), even when the reply is minimal.

In that case, the most effective fix is to stop delivering heartbeat prompts entirely:
- Set: `agents.defaults.heartbeat.target = "none"`

Then replace monitoring with:
- isolated cron collectors (`deliver=false`)
- a less frequent reporter job (`deliver=true`, alert-only)

---

## 9) “Move work out of heartbeat” pattern (general)

When a heartbeat step is expensive, prefer:
- isolated cron
- script-first
- alert-only delivery

---

## 10) UX guidance: removing checks must be user-approved

If optimization requires removing or reducing checks:
- present the trade-off clearly (cost vs coverage)
- offer profiles A/B/C
- ask the user to choose


### memory-patterns

# Memory Patterns (Daily + Long-Term + Size Control)

## Files
- **Daily log:** `memory/YYYY-MM-DD.md` (raw events, decisions, links)
- **Long-term:** `MEMORY.md` (curated, stable preferences/guardrails/config facts)

## Distillation rules
- Keep only what survives a restart: preferences, guardrails, key configs, and stable decisions.
- Move transient details to daily logs.
- Summarize big threads into 1–3 bullets with pointers to artifacts.

## Size control (prevents hidden token burn)
- Logs that grow forever become “silent token sinks” when read frequently.

Patterns:
- Keep state files small (`*-state.json`).
- Use JSONL for append-only ledgers; summarize with a separate reporter.
- Rotate/trim large logs (keep last N entries) unless the user explicitly wants full retention.

## Cadence
- Distill daily logs into `MEMORY.md` periodically.
- Keep `MEMORY.md` short and actionable.


### model-selection

# Model Selection (Tiered, Model-Agnostic)

## Principle
Use the **cheapest capable tier** for the job. Escalate only when:
- the task repeatedly fails at a cheaper tier, or
- correctness materially matters (risk, finance, security), or
- the task requires deep synthesis/architecture.

Avoid naming specific models in guidance. Treat “model” as a **tier**.

---

## Tiers (conceptual)
- **Tier 1 (cheap / frequent):** routine formatting, lightweight summaries, single-script cron runs.
- **Tier 2 (general):** multi-file edits, orchestration, non-trivial debugging.
- **Tier 3 (deep):** architecture, risk analysis, complex planning.

---

## Escalation policy
- Start at Tier 1 for automation.
- Escalate to Tier 2 only after *observed* failure or clear complexity.
- Escalate to Tier 3 only with justification.

If you need user approval to change a global default, ask. Otherwise prefer local overrides per job.

---

## Anti-patterns
- Using Tier 3 for simple cron/heartbeat tasks.
- Re-running the same expensive analysis every schedule tick.
- Asking the user to choose a model for routine tasks (choose the cheapest tier that works).


### optimization-playbook

# Optimization Playbook (General, Model-Agnostic)

A reusable checklist for reducing cost, improving determinism, and keeping OpenClaw automation maintainable.

This playbook is **model-agnostic**: it avoids naming specific providers/models. Use the cheapest tier that reliably works.

---

## 0) First question: Where is the cost coming from?

Before changing behavior, identify the dominant cost driver:
- Frequent triggers (heartbeat / high-frequency cron)
- Large tool outputs (session lists, status cards, long logs)
- Long prompts repeated each run
- Non-idempotent tasks causing rework

If available, use usage/cost instrumentation (ledger, status deltas) to validate wins.

---

## 1) Choose a profile (user must choose if coverage changes)

Execution stance: advisory-first. Do not apply persistent config/cron changes until the user explicitly approves.

When optimization reduces coverage/frequency or removes checks, present trade-offs and let the user pick.

### Profile A — Ultra Low Cost
- Heartbeat: ack-only (no tools)
- Cron: collector jobs deliver=false by default
- Reporting: only on change/error

### Profile B — Balanced
- Heartbeat: light monitor with throttles
- Cron: alert-only + periodic summary (e.g., daily)

### Profile C — Maximum Coverage
- Heartbeat: full checklist
- Cron: full scan + frequent reporting

---

## 2) Heartbeat: keep it control-plane

Rules:
- Heartbeat should decide “do we need action?” not do the heavy work.
- Move heavy work to isolated cron or scripts.
- Never call large-output tools on every poll unless user explicitly accepts the cost.
- If heartbeat turns are still expensive due to large **input/cache context**, consider disabling heartbeat delivery and relying on cron reporting instead (e.g., set `agents.defaults.heartbeat.target = "none"`).

---

## 3) Cron: script-first + alert-only delivery

Patterns:
- Cron payload should be one command (script execution).
- Script reads small config/state files, writes artifacts to `memory/`.
- Return `NO_REPLY` when nothing changed.

Split jobs:
- Collector (frequent, deliver=false)
- Reporter (less frequent, deliver=true)

---

## 4) Throttles, caps, and idempotency

Throttles:
- Time-based: heavy step only every N runs
- Change-based: hash inputs; skip if unchanged

Caps:
- limit returned text size (lines/chars)
- limit scan scope (top K items)

Idempotency:
- maintain a cursor file
- append-only JSONL logs for audits

---

## 5) Safe escalation and fallback

- Default to the cheapest tier that works.
- Escalate tier only after repeated failures or when correctness matters.
- If a tool fails repeatedly: stop, log diagnostics, and ask for human input.

---

## 6) Deliver policy

Avoid spam:
- deliver=false by default
- deliver=true only for: anomalies, new actionable signals, or explicit reports

---

## 7) Documentation hygiene

- Put long instructions in references/scripts, not in cron prompts.
- Keep rules modular.
- Keep memory files small; rotate/trim logs that grow without bound.


### safeguards

# Safeguards (Anti-loop + Budget + Human Control)

Use this when an OpenClaw agent is **looping**, **burning tokens**, or repeatedly failing the same tool/action.

---

## 0) Quick triage (find the repeating unit)
- Same tool call failing? (exec/browser/web_fetch/cron.update)
- Same prompt being retried?
- Provider cooldown / rate limit storms?
- Tool outputs too large (session lists, status cards, long logs)?

Decide whether it’s safe to auto-fix or must ask the user.

---

## 1) Hard stop rules (prompt-level)
- Same error ≥ 2–3 times → **stop** and ask for human input.
- No blind retry loops for cooldown/rate limits; throttle or defer to next schedule.
- Prefer deterministic scripts over repeated re-planning.

---

## 2) Budget guardrails (behavioral)
General patterns:
- Reduce scope (top K, cap lines/chars).
- Reduce frequency (tiered cadence).
- Switch to alert-only delivery.
- Degrade gracefully: “minimal mode + one alert” instead of repeated retries.

If the platform supports explicit caps (per-session cost/tokens), enable them.

---

## 3) Heartbeat & cron runaway prevention

### Heartbeat
- Treat heartbeat as control-plane.
- If heartbeat is expensive, adopt profiles:
  - **A:** ack-only
  - **B:** light monitor (throttled)
  - **C:** full monitor

If adopting A/B reduces coverage, present trade-offs and let the user choose.

### Cron
- Script-first (one exec) + idempotent.
- Deliver only on change/error.
- Split collector/reporter if you need periodic reporting.

---

## 4) Loop detection (conceptual)
True enforcement may require middleware, but you can approximate via prompts:
- step limits
- similarity detection on recent tool calls
- repeated identical stderr messages

Action on detection: stop + emit “need help” + write diagnostics.

---

## 5) Human-in-the-loop approvals
Use approvals for dangerous/high-cost actions:
- risky exec patterns
- restricted browser domains
- persistent configuration changes (`config.apply`, `config.patch`, `update.run`)
- cron creation/update/removal

Before applying persistent changes, provide:
- exact change/diff
- expected impact
- rollback plan

---

## 6) File hygiene to prevent silent token sinks
- Rotate/trim logs that grow without bound.
- Avoid reading large files frequently; summarize to a compact artifact.

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]