---
title: '"Skill Finder (Find ClawHub skills + Search Skills.sh)"'
aliases: '[]'
tags:
  - 系统工具]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn: '# Skill Finder (Find ClawHub skills + Search Skills.sh)相关文档'
summary_en:
  - Reference for business decisions.
one_sentence_summary: '# Skill Finder (Find ClawHub skills + Search Skills.sh)  ---...'
decision_value: AI automation documentation
review_note: General AI doc
category: AI工作流
platform: '[Claude Code, Codex, OpenClaw]'
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

# Skill Finder (Find ClawHub skills + Search Skills.sh)

---
# Skill Finder (Find Clawhub Skills + Search Skills.Sh)

## When to Use

User asks how to do something, wonders whether a skill exists, wants a new capability, or asks for the best skill for a job. Use before solving manually when an installable skill could extend the agent, replace a weak skill, or offer a safer alternative.

## Architecture

Memory lives in `~/skill-finder/`. If `~/skill-finder/` does not exist or is empty, run `setup.md`.

```
~/skill-finder/
├── memory.md      Source mode + preferences + liked/passed skills
└── searches.md    Recent search history (optional)
```

## Migration

If upgrading from a previous version, see `migration.md` for data migration steps.
The agent MUST check for legacy memory structure before proceeding.

## Quick Reference

| Topic | File |
|-------|------|
| Setup | `setup.md` |
| Memory template | `memory-template.md` |
| Search strategies | `search.md` |
| Evaluation criteria | `evaluate.md` |
| Skill categories | `categories.md` |
| Edge cases | `troubleshooting.md` |

## Activation Signals

Activate when the user says things like:
- "How do I do X?"
- "Is there a skill for this?"
- "Can you do this better?"
- "Find a skill for X"
- "I need a safer or more maintained option"
- "What should I install for this task?"

Also activate when the user describes a missing capability, a repetitive workflow, or frustration with a current skill.

## Search Sources

This skill can search two ecosystems:

| Source | Search | Install | Best for |
|--------|--------|---------|----------|
| `ClawHub` | `npx clawhub search "query"` | `npx clawhub install <slug>` | Curated registry search with built-in inspection |
| `Skills.sh` | `npx skills find [query]` | `npx skills add <owner/repo@skill>` | Broad open ecosystem from the `skills` CLI |

Default mode: search **both** sources, then compare results together.

Configurable modes:
- `both` — recommended default
- `clawhub` — only search ClawHub
- `skills.sh` — only search the Skills.sh ecosystem

Store the current mode in `~/skill-finder/memory.md`. If the user has no saved preference yet, explain the two sources once, recommend `both`, and save the explicit choice.

## Security Note

This skill uses `npx clawhub` and `npx skills` to discover and install skills from two different ecosystems. Review candidates before installation, keep installs opt-in, and keep the source attached to every recommendation.

## Data Storage

This skill stores local preference data in `~/skill-finder/`:
- Source mode, explicit preferences, liked skills, and passed skills in the local memory file inside `~/skill-finder/`
- Optional recent search history in a local search log inside `~/skill-finder/`

Create on first use: `mkdir -p ~/skill-finder`

## Core Rules

### 1. Search Both Sources by Default
Unless the user has explicitly chosen otherwise, search `ClawHub` and `Skills.sh` for the same need, then compare the strongest results together.

Never assume a `Skills.sh` result can be installed with `clawhub`, or the reverse. Keep the source and install command attached to every recommendation.

### 2. Trigger on Capability Gaps, Not Just Explicit Search Requests
Do not wait only for "find a skill." Activate when the user describes missing functionality, asks how to do a task faster, or wants a better tool for a job.

### 3. Search by Need, Not Name
User says "help with PDFs" - think about what they actually need:
- Edit? -> `npx clawhub search "pdf edit"` and `npx skills find pdf edit`
- Create? -> `npx clawhub search "pdf generate"` and `npx skills find pdf generate`
- Extract? -> `npx clawhub search "pdf parse"` and `npx skills find pdf parse`

### 4. Evaluate Before Recommending
Never recommend blindly. Inspect strong candidates and check `evaluate.md` criteria:
- Description clarity
- Download count (popularity = maintenance)
- Last update (recent = active)
- Author or repository reputation
- Install scope and friction

For `Skills.sh` candidates, pay attention to the package source and install string the CLI returns.

### 5. Present a Decision, Not a Dump
Don't just list skills. Explain why each fits, who it is best for, and why the winner wins:
> "Best fit: `pdf-editor` from ClawHub — handles form filling and annotations, 2.3k downloads, updated last week. Matches your need for editing contracts better than the Skills.sh options."

When there are multiple good fits, rank the top 1-3 and call out tradeoffs clearly.

### 6. Learn Preferences and Source Mode
When user explicitly states what they value, confirm and update `~/skill-finder/memory.md`:
- "Search both by default" -> set source mode to `both`
- "Only use Skills.sh for this workspace" -> set source mode to `skills.sh`
- "Only check ClawHub" -> set source mode to `clawhub`
- "I prefer minimal skills" -> add to Preferences
- "This one is great" -> add to Liked with reason
- "Too verbose" -> add to Passed with reason

Do not infer hidden preferences from behavior-only signals.

### 7. Check Memory First
Before recommending, read memory.md:
- Respect saved source mode unless the user overrides it
- Skip skills similar to Passed ones
- Favor qualities from Liked ones
- Apply stated Preferences

### 8. Respect Installation and Security Boundaries
If a candidate skill is marked risky by scanner output, or the install path is unclear:
- Explain the warning or ambiguity first
- Prefer a safer alternative
- Do not run force-install flags for the user
- Do not auto-accept install prompts with `-y`
- Do not choose global install scope unless the user explicitly wants it
- Install only with explicit user consent

### 9. Fallback Gracefully
If nothing is strong enough:
- Say what was searched
- Say which source mode was used
- Explain why the matches are weak
- Help directly or suggest creating a purpose-built skill

## Search Commands

```bash
# ClawHub search and inspect
npx clawhub search "query"
npx clawhub inspect <slug>
npx clawhub install <slug>
npx clawhub list

# Skills.sh ecosystem
npx skills find [query]
npx skills add <owner/repo@skill>
npx skills list
npx skills check
npx skills update

# Example install string returned by `npx skills find`
npx skills add vercel-labs/agent-skills@vercel-react-best-practices
```

## Workflow

1. **Detect** - Is the user describing a capability gap or installable need?
2. **Load memory** - Read `~/skill-finder/memory.md` for source mode and preferences
3. **Understand** - What does user actually need?
4. **Search** - Use `both` by default, or the saved single-source mode
5. **Evaluate** - Check quality signals (see `evaluate.md`)
6. **Compare** - Rank results across both sources by fit + quality
7. **Recommend** - Top 1-3 with clear reasoning and a winner
8. **Install or fallback** - Install only with consent, otherwise help directly
9. **Learn** - Store explicit feedback in memory

## Recommendation Format

When presenting results, prefer this structure:

```text
Best fit: <slug or owner/repo@skill>
Source: <ClawHub or Skills.sh>
Why it wins: <1-2 lines>
Install: <exact command>
Tradeoffs: <what it does not cover or where alternative is stronger>
Alternatives: <slug>, <slug>
Next step: Install now or continue without installing
```

## Common Traps

- Waiting for the exact phrase "find a skill" -> misses proactive discovery moments
- Searching generic terms -> gets noise. Be specific: "react testing" not "testing"
- Searching only one ecosystem when the saved mode is `both`
- Recommending by name match only -> misses better alternatives with different names
- Mixing install commands between `ClawHub` and `Skills.sh`
- Ignoring download counts -> low downloads often means abandoned
- Not checking last update -> outdated skills cause problems

## Security & Privacy

**Data that leaves your machine:**
- Search queries sent to ClawHub registry (public search)
- Search queries sent through the `skills` CLI / Skills.sh ecosystem

**Data that stays local:**
- All preferences in `~/skill-finder/memory.md`
- Search history (if enabled)

**This skill does NOT:**
- Install skills without user consent
- Use force-install flags to skip scanner warnings
- Auto-confirm `npx skills add` with `-y`
- Switch to global install scope silently
- Collect hidden behavior data
- Access files outside `~/skill-finder/`

## Related Skills
Install with `npx clawhub install <slug>` if user confirms:
- `skill-manager` — manages installed skills, suggests updates
- `skill-builder` — creates new skills from scratch
- `skill-update` — updates existing skills

## Feedback

- If useful: `clawhub star skill-finder`
- Stay updated: `clawhub sync`

---

## 参考资料


### categories

# Skill Categories — Skill Finder

Reference for mapping user needs to search terms.

## Common Categories

| Category | User Might Say | Search Terms |
|----------|---------------|--------------|
| **Languages** | "help with Python", "write Rust" | python, py, rust, go, typescript, swift |
| **Frameworks** | "React app", "Django project" | react, nextjs, django, rails, flutter |
| **DevOps** | "deploy this", "CI/CD" | docker, kubernetes, deploy, ci-cd, terraform |
| **Testing** | "write tests", "QA" | testing, jest, playwright, e2e, unit-test |
| **Databases** | "SQL help", "store data" | postgres, mysql, redis, mongodb, sql |
| **APIs** | "call this API", "REST" | api, rest, graphql, http, curl |
| **Git** | "commit", "PR review" | git, github, gitlab, pr, code-review |
| **Docs** | "write readme", "documentation" | docs, readme, changelog, markdown |
| **Design** | "UI help", "make it pretty" | ui, ux, design, css, tailwind |
| **AI/ML** | "machine learning", "LLM" | ai, ml, openai, llm, embeddings |
| **Security** | "security audit", "vulnerabilities" | security, audit, owasp, secrets |
| **Productivity** | "automate this", "workflow" | automation, workflow, scripts |
| **Cloud** | "AWS", "cloud deploy" | aws, gcp, azure, cloud, serverless |
| **Mobile** | "iOS app", "Android" | ios, android, mobile, flutter, react-native |

## Search Strategy by Category

### Development (Code)
Start specific, broaden if needed:
1. `"python async"` (specific)
2. `"python"` (broader)
3. `"scripting"` (broadest)

### Infrastructure (DevOps)
Include the action:
1. `"docker deploy"` (action + tool)
2. `"kubernetes helm"` (tool + subtool)
3. `"ci-cd github"` (concept + platform)

### Tooling (CLI/Services)
Try the tool name directly:
1. `"stripe"` (service name)
2. `"payment"` (domain if name fails)

## Domain Combinations

Users often need cross-domain skills:

| Combined Need | Search Terms |
|--------------|--------------|
| "Deploy my React app" | `react deploy`, `nextjs vercel` |
| "Test my API" | `api testing`, `rest test` |
| "Python for data" | `python pandas`, `data analysis` |
| "Secure my app" | `security web`, `owasp` |

## When Category is Unclear

Ask clarifying question:
> "When you say 'help with data', do you mean:
> - Storing data (databases)?
> - Analyzing data (pandas, visualization)?
> - Moving data (ETL, pipelines)?"

Then search the specific subcategory.


### evaluate

# Skill Evaluation Criteria — Skill Finder

Reference for assessing skill quality before recommending.

## Quick Assessment (From Search Results)

Check these signals immediately:

| Signal | Good | Concerning |
|--------|------|------------|
| Downloads | >500 | <50 |
| Last update | <3 months | >1 year |
| Description | Clear what + when | Vague or generic |
| Author | Multiple skills | Single anonymous |
| Source package | Clear install string | Ambiguous or incomplete install path |

## Detailed Evaluation

### ClawHub Candidates

After `npx clawhub inspect`:

### Structure Quality

✅ **Good signs:**
- SKILL.md under 100 lines
- Auxiliary files for details
- Clear sections (When to Use, Core Rules)
- Progressive disclosure pattern

❌ **Red flags:**
- Wall of text in single file
- No organization
- Explains obvious concepts
- README/CHANGELOG noise

### Instruction Quality

✅ **Good signs:**
- Imperative voice ("Do X", "Check Y")
- Actionable instructions
- Clear triggers (when to activate)
- Examples where helpful

❌ **Red flags:**
- Passive voice ("Users should consider...")
- Theory without actionable guidance
- Vague instructions ("be careful with...")
- Over-explanation of basics

### Skills.sh Candidates

After `npx skills find` returns a candidate:

✅ **Good signs:**
- Clear install string like `owner/repo@skill`
- Recognizable or maintained source repository
- skills.sh page or repo makes the purpose obvious
- The skill feels installable without extra guesswork

❌ **Red flags:**
- Unclear install target
- Repo with weak description or no obvious maintenance
- Name sounds relevant but source package is confusing
- Requires guessing project vs global scope or target agent without user input

### Fit Assessment

Ask yourself:
- Does it solve the **actual** need?
- Is it too broad (generic) or too narrow (edge case)?
- Does it conflict with skills already installed?
- Is it worth the context cost?

## Scoring (Mental Model)

Rate 1-5 on each:

| Dimension | Question |
|-----------|----------|
| **Relevance** | How well does it match the specific need? |
| **Quality** | How well is the skill built? |
| **Maintenance** | Is it actively maintained? |
| **Value** | Is it worth the context tokens? |

**Recommend if:** All scores ≥3

## Reporting to User

### When Recommending
> "Found `skill-name` — [what it does in one line]. [Quality note]. Want me to install it?"

Example:
> "Found `stripe` — handles payment integration with webhooks and subscriptions. 4k downloads, updated last week. Want me to install it?"

For `Skills.sh`:
> "Found `owner/repo@skill-name` on Skills.sh — [what it does]. Install command is `npx skills add owner/repo@skill-name`. Want me to install it?"

### When Hesitant
> "Found `skill-name` but [concern]. [Alternative or ask if want anyway]."

Example:
> "Found `old-pdf-tool` but it hasn't been updated in 8 months. There's a newer `pdf-toolkit` with similar features — want that instead?"

### When No Good Options
> "Searched for [query] but nothing fits well. [Explain gap]. I can help directly, or you could create a custom skill."

## Comparison Table (Multiple Options)

When presenting several options:

| Skill | Source | Fits Need | Quality | Signal | Updated |
|-------|--------|-----------|---------|--------|---------|
| `option-1` | ClawHub | ⭐⭐⭐ | ⭐⭐⭐ | 5.2k downloads | 2 weeks |
| `option-2` | Skills.sh | ⭐⭐ | ⭐⭐⭐ | trusted repo | 1 month |
| `option-3` | ClawHub | ⭐⭐⭐ | ⭐⭐ | 800 downloads | 3 months |

Then recommend based on user's stated preferences.


### memory-template

# Memory Template — Skill Finder

Create `~/skill-finder/memory.md` with this structure:

```markdown
# Skill Finder Memory

## Status
status: ongoing
last: YYYY-MM-DD
sources: both
integration: proactive

## Preferences
<!-- Explicit quality values stated by user -->
<!-- Examples: "prefers minimal", "wants well-maintained", "okay with experimental" -->

## Source Policy
<!-- Default source mode: both, clawhub, or skills.sh -->
<!-- Example: both -->
<!-- Install scope for `npx skills add`: ask, project, or global -->

## Liked
<!-- Skills user explicitly praised, with their reason -->
<!-- Format: source:identifier — "what they said they liked" -->
<!-- Examples: clawhub:skill-manager — "clear and safe" -->
<!--           skills.sh:vercel-labs/agent-skills@frontend-design — "great for UI work" -->

## Passed
<!-- Skills user explicitly declined, with their reason -->
<!-- Format: source:identifier — "what they said was wrong" -->

## Domains
<!-- Areas user works in (helps narrow searches) -->

---
*Updated: YYYY-MM-DD*
```

## Status Values

| Value | Meaning |
|-------|---------|
| `ongoing` | Still learning preferences |
| `established` | Has enough preference data |

## What to Store

### Source Policy (from explicit statements)
- "Search both" → `sources: both`
- "Only use ClawHub" → `sources: clawhub`
- "Only use Skills.sh" → `sources: skills.sh`
- "Prefer project installs" → add under `## Source Policy`
- "Prefer global installs" → add under `## Source Policy`

### Preferences (from explicit statements)
- "I prefer minimal skills" → add verbatim
- "I want well-maintained only" → add verbatim
- "I don't mind experimental" → add verbatim

### Liked (from explicit praise)
- User says "this skill is great because X" → `source:identifier — "X"`
- User expresses satisfaction → `source:identifier — "reason"`

### Passed (from explicit rejection)
- User declines with reason → `source:identifier — "reason"`
- User uninstalls and explains → `source:identifier — "reason"`

## What NOT to Store

- Silent installations (no comment = no data)
- Inferred preferences from behavior patterns
- Anything not explicitly stated by user

## Using Memory

When multiple skills match a search:
1. **Check source mode** — Search `both`, `clawhub`, or `skills.sh` accordingly
2. **Check Passed** — exclude similar
3. **Check Liked** — favor similar qualities
4. **Apply Preferences** — filter accordingly

## Maintenance

Keep under 50 lines. When exceeded:
- Archive old Liked/Passed entries
- Keep most recent Preferences


### migration

# Migration Guide - Skill Finder

Read this guide when upgrading from older published versions.

## Breaking Changes in v1.1.3

### 1) Memory template now stores source-selection defaults

**Before:** `~/skill-finder/memory.md` tracked status, preferences, liked skills, passed skills, and domains.

**Now:** the memory file also tracks:
- `sources: both|clawhub|skills.sh`
- `integration: proactive|explicit`
- `## Source Policy`

**Migration steps:**
1. Back up the current memory file before editing:
   ```bash
   cp ~/skill-finder/memory.md ~/skill-finder/memory.md.bak 2>/dev/null || true
   ```
2. Preserve all existing sections and user notes.
3. Add missing status keys if they do not exist:
   ```markdown
   sources: both
   integration: proactive
   ```
4. Add a `## Source Policy` section if missing.
5. Ask the user which default source mode they want:
   - `both`
   - `clawhub`
   - `skills.sh`
6. Update `sources:` only after the user answers explicitly.

### 2) Setup now assumes dual-source search readiness

**Before:** the skill only described ClawHub search and could work with the older memory format.

**Now:** the skill can search both ClawHub and Skills.sh, and setup should explain both ecosystems before first use.

**Migration steps:**
1. If `~/skill-finder/` already exists, keep using the same folder.
2. Do not delete or rename existing files.
3. Optionally create `~/skill-finder/searches.md` if the user wants recent-query continuity.
4. If the workspace or AGENTS routing references the old one-source behavior, update it so the agent loads:
   - the `skill-finder` skill
   - `~/skill-finder/memory.md`

## Post-Migration Verification

- [ ] `~/skill-finder/memory.md` still contains all prior preferences and history
- [ ] `sources:` exists and matches the user's explicit choice
- [ ] `integration:` exists
- [ ] `## Source Policy` exists
- [ ] No existing data was deleted

## Cleanup Policy

- Never delete `memory.md.bak` without explicit user confirmation.
- Do not remove legacy notes that still provide value.
- Prefer additive migration over rewrite.


### search

# Search Strategies — Skill Finder

Reference for skill finder, find skills, Skills.sh search, and ClawHub search requests.

## Search Sources

| Source | Search | Inspect | Install | Notes |
|--------|--------|---------|---------|-------|
| `ClawHub Search` | `npx clawhub search "query"` | `npx clawhub inspect <slug>` | `npx clawhub install <slug>` | Best for curated registry results and built-in metadata |
| `Skills.sh Search` | `npx skills find [query]` | Inspect returned page/repo | `npx skills add <owner/repo@skill>` | Best for wider open-ecosystem discovery |

Default mode is `both`. Search a single source only if `~/skill-finder/memory.md` says `sources: clawhub` or `sources: skills.sh`, or the user overrides it.

## Commands

```bash
# ClawHub
npx clawhub search "query"
npx clawhub search "react testing"
npx clawhub inspect <slug>
npx clawhub inspect <slug> --files   see all files
npx clawhub install <slug>
npx clawhub explore
npx clawhub list

# Skills.sh / skills CLI
npx skills find
npx skills find react performance
npx skills add vercel-labs/agent-skills@frontend-design
npx skills list
npx skills check
npx skills update
```

## Dual-Source Search Flow

For a new query:

1. Read `~/skill-finder/memory.md`
2. Check `Status.sources`
3. If mode is `both`, search both ecosystems with the same intent
4. Compare the strongest matches together before recommending
5. Keep the source and exact install command attached to each result

## Trigger Recognition

Search even when the user does not explicitly say "skill":

| User signal | What it usually means |
|-------------|------------------------|
| "How do I do X?" | A skill may already solve this |
| "Can you do this?" | Possible capability gap |
| "There must be a better way" | Search for a specialized workflow |
| "What should I install?" | Direct skill discovery request |
| "This current skill is weak" | Replacement search |

## Search by Need, Not Name

User says "I need help with PDFs" — don't just search "pdf".

Think about what they actually need:

| User Need | Better Search |
|-----------|--------------|
| Edit PDFs | `npx clawhub search "pdf edit"` + `npx skills find pdf edit` |
| Create PDFs | `npx clawhub search "pdf create"` + `npx skills find pdf generate` |
| Extract from PDFs | `npx clawhub search "pdf extract"` + `npx skills find pdf parse` |
| Fill PDF forms | `npx clawhub search "pdf form"` + `npx skills find pdf form` |

## Expand Search Terms

If first search yields poor results:

1. **Synonyms** — edit → modify, create → generate, check → validate
2. **Related tools** — pdf → document, docx → word
3. **Underlying task** — "pdf form" → "form filling"
4. **Domain name** — "stripe payments" → just "stripe"

## Interpret Results

Normalize each result into the same decision shape:
- Source
- Name / identifier
- What it does
- Install command
- Quality signals

Typical signals:
- `ClawHub`: name, description, downloads, author, update freshness
- `Skills.sh`: returned install string, source repo, skills.sh page, and project reputation

**Quick quality signals:**
- High downloads + recent update = well-maintained
- Clear description = probably well-structured
- Multiple skills by same author = established creator
- Recognizable repo or maintainer = safer bet in `Skills.sh`
- Vague description = likely low quality

## Multiple Results Strategy

When several skills match:

1. **Filter** — Apply quality criteria (see `evaluate.md`)
2. **Rank** — By fit to specific need, not just downloads
3. **Present top 3** — With reasoning for each
4. **Pick a winner** — Give a recommendation, not just options
5. **Let user choose** — Or ask clarifying questions

Example response:
> Found 3 options for React testing:
> 1. `react-testing` (ClawHub) — focuses on component tests, 5k downloads
> 2. `vercel-labs/agent-skills@frontend-design` (Skills.sh) — broader frontend workflow guidance
> 3. `testing` (ClawHub) — general testing, includes React section
>
> Which fits your project better?

## Query Refinement

| Situation | Action |
|-----------|--------|
| Too many results | Add specificity: "python" → "python async" |
| No results | Broaden: "fastapi oauth2" → "api auth" |
| Wrong domain | Clarify: "testing" → "unit testing" vs "e2e testing" |
| Tool-specific | Try tool name directly: "stripe", "twilio" |
| One source is empty | Keep the other source, but say that only one ecosystem produced matches |

## Search Operators

The search is semantic (meaning-based), not keyword-exact.

- `"react hooks"` finds skills about React patterns
- `"api testing"` finds REST, GraphQL testing skills
- `"deploy docker"` finds containerization + deployment

No special operators needed — describe what you want in natural language.


### setup

# Setup — Skill Finder

Read this when `~/skill-finder/` is missing or empty.

## First-Time Setup

### 1. Create Local Workspace

Tell the user what will happen:
- A local workspace will be created at `~/skill-finder/`
- Source preference and recommendation preferences are stored only in `~/skill-finder/memory.md`
- No data is written outside this folder

Create the workspace only when needed:

```bash
mkdir -p ~/skill-finder
```

Then create `memory.md` from `memory-template.md`.

### 2. Explain the Two Search Sources

Explain this once on first run:
- `ClawHub` search uses `npx clawhub search` and `npx clawhub install`
- `Skills.sh` uses `npx skills find` and `npx skills add`
- Recommended default: search **both** and compare the best results together

Ask which default mode they want:
- `both`
- `clawhub`
- `skills.sh`

Save the explicit choice in `Status.sources` in `memory.md`.

### 3. Optional Search Log

If you want local continuity for recent queries, create:

```markdown
~/skill-finder/searches.md
```

Keep it lightweight and optional.

### 4. First Conversation

#### Understand the concrete need
- Clarify ambiguous requests
- Ask just enough context to run a useful search

#### Search and evaluate
- Run search terms that match the user task across the configured source mode
- Filter with quality signals
- Recommend top options with reasoning

#### Confirm what to save
If the user explicitly shares preferences, confirm and save them to `memory.md`.

### 5. Add AGENTS.md Steering (Non-Destructive)

Update `AGENTS.md` or the workspace memory/routing section by adding a small routing line. Do not replace the whole section and do not remove existing rules.

Add this exact idea in the most relevant routing block:

```markdown
- When a request sounds like finding, comparing, or installing a skill, always load the `skill-finder` skill and `~/skill-finder/memory.md` before answering.
```

This line should only force loading the skill and memory. It should not hardcode commands.

If there is already a continuity or memory inventory list, also add:

```markdown
- **Skill Finder:** `~/skill-finder/` (via `skill-finder`) — source mode, explicit preferences, liked skills, passed skills, and optional recent searches
```

### 6. Proactivity Preference

Ask once how proactive recommendations should be:
> "Do you want proactive skill suggestions when you mention missing capabilities, or only when you explicitly ask?"

Save their answer in `Status.integration` in `memory.md`.

## Allowed Learning

Store only user-stated details:
- Source mode preference
- Quality preferences
- Domains they work in
- Explicit likes/dislikes after recommendations

Do not infer hidden preferences from passive behavior.

## Boundaries

- Keep all local data inside `~/skill-finder/`
- Never write to global agent memory outside `~/skill-finder/`
- Never run force-install commands for risky skills
- Never add `-y` to `npx skills add` automatically
- Never choose project vs global install scope without user consent


### troubleshooting

# Troubleshooting — Skill Finder

Reference for handling edge cases and common problems.

## No Results Found

**First:** Try alternative search terms (see `search.md` for expansion strategies).

**If still nothing:**

1. **Acknowledge honestly**
   > "I searched for skills related to [X] in the configured sources but didn't find any strong matches."

2. **Offer direct help**
   > "I can help you with this directly using my general capabilities."

3. **Suggest creation (for recurring needs)**
   > "If this is something you do often, you could create a custom skill with `skill-builder`."

## Too Many Results

**Problem:** Search returns 10+ skills, hard to choose.

**Solution:**
1. Apply quality filters (see `evaluate.md`)
2. Check user's memory for preferences
3. Present only top 3 with clear differentiation
4. Ask clarifying question if still unclear

> "Found several options. To narrow down:
> - Need basic features or comprehensive?
> - Prefer popular/stable or cutting-edge?"

## Skill is Flagged as Suspicious

**What it means:** VirusTotal Code Insight detected potentially risky patterns (API calls, file access, etc.).

**How to handle:**

1. **Inform user**
   > "This skill is flagged as suspicious by the security scanner. It may make external API calls or access files."

2. **Check what triggered it**
   ```bash
   npx clawhub inspect <slug> --files
   ```

3. **Default to safer alternatives**
   > "I can recommend similar skills that are not flagged, then we pick the best match."

4. **Do not skip scanner warnings**
   - Never use force-install options
   - Prefer normal installation only for non-flagged options with explicit user consent

## Skill Not Found (404)

**Possible causes:**
- Typo in slug
- Skill was deleted/hidden
- Author changed the name
- Skills.sh result points to a repo or skill path that changed

**Solutions:**
1. Search by description instead of exact name
2. Check for similar names: `npx clawhub search "partial-name"`
3. Re-run `npx skills find [domain]` if the missing result came from Skills.sh
4. The skill may have been replaced — search the domain

## Conflicting Skills

**Problem:** User wants a skill that overlaps with one already installed.

**Detection:** Check `npx clawhub list` for existing skills in same domain.

**Resolution:**
1. **Explain the overlap**
   > "You have `git` installed. The `github` skill adds PR/issue features on top of it — they work together."

2. **Or warn about conflict**
   > "You have `eslint-basic` installed. `eslint-pro` covers the same but more — want to replace?"

## User Changed Their Mind

**After installation:**
- Uninstall: `npx clawhub uninstall <slug>`
- Remove Skills.sh install: `npx skills remove <skill>`
- Don't reinstall: Add to Passed in memory.md with reason

**During recommendation:**
- Just move on, no need to store unless they explain why

## Outdated Skill

**Signs:**
- Last update >6 months ago
- Low recent downloads
- References old versions of tools

**How to handle:**
> "This skill was last updated [X months] ago. It references [old version]. Want to try anyway, or should I look for alternatives?"

## Source Mismatch

**Problem:** A result was found in one ecosystem, but the install command shown belongs to the other.

**Resolution:**
1. Restate the source clearly
2. Use the install command that belongs to that source only
3. If needed, present an equivalent result from the other ecosystem instead

> "This result is from Skills.sh, so the correct install path is `npx skills add owner/repo@skill`, not `clawhub install`."

## Memory Issues

**Memory file corrupted or malformed:**
1. Backup: `cp ~/skill-finder/memory.md ~/skill-finder/memory.md.bak`
2. Recreate from `memory-template.md`
3. Ask user to re-state key preferences

**Memory too large (>50 lines):**
1. Archive old entries
2. Keep only recent Liked/Passed
3. Preserve all Preferences (they're stable)

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]