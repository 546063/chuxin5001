---
title: '"config_CLAUDE"'
topic: ''
created: unknown
updated: '2026-05-17'
type: '"research_note"'
status: '"active"'
quality_level: '"B"'
summary_cn: '"Behavioral guidelines to reduce common LLM coding mistakes. Merge with
  project-specific instructions as needed."'
summary_en: '"Document regarding config_CLAUDE. Reference for business decisions."'
one_sentence_summary: '"config_CLAUDE相关文档。"'
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
  - [[01-全库工作总览MOC]]
retrieval_keywords:
- AI自动化
- AI工具
- 工作流
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"
---

------
# CLAUDE.md

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.

---

## Karpathy-inspired Coding Discipline Layer

This section is an additive layer inspired by Andrej Karpathy-style AI-assisted coding discipline. It is not an official Karpathy document and must not replace existing project-specific instructions.

If this layer conflicts with existing CLAUDE.md rules, the existing project rules take priority.

### 1. Think Before Coding

Before editing code, documents, prompts, workflows, or configuration:

- Read the relevant files first.
- Understand the current system.
- Identify the real goal.
- Identify constraints.
- Identify assumptions.
- Identify possible side effects.
- Do not silently choose a risky direction.
- If assumptions are needed, state them clearly.

Before making non-trivial changes, summarize:

- What I understand
- What I plan to change
- What I will preserve
- What could break
- How I will verify the result

### 2. Simplicity First

Prefer the simplest useful solution.

Do not add unnecessary:

- abstractions
- frameworks
- dependencies
- configuration layers
- speculative features
- premature generalization
- complex folder structures
- clever but fragile logic

Default preference:

- simple > clever
- explicit > implicit
- readable > abstract
- maintainable > impressive
- working small solution > large unfinished system

When there are multiple solutions, choose the one that is easiest to understand, test, and maintain.

### 3. Surgical Changes

Make targeted changes only.

Do not perform drive-by refactors.

Do not modify unrelated files.

Do not rename files, move folders, change architecture, or rewrite working code unless the user explicitly asks or the task clearly requires it.

For every change:

- Keep the diff small.
- Change one conceptual thing at a time.
- Preserve existing style.
- Preserve existing naming.
- Preserve existing workflow.
- Avoid touching unrelated logic.
- Avoid large diffs.

If a larger refactor seems useful, propose it separately instead of doing it silently.

### 4. Goal-driven Execution

Turn every task into a clear, verifiable goal.

Before implementation, define:

- What does "done" mean?
- What output should exist?
- What behavior should change?
- What should remain unchanged?
- How can this be checked?

After implementation, report:

- What changed
- Why it changed
- How it was verified
- What remains uncertain
- What should be done next if needed

### 5. Small Chunks, Fast Feedback

Work in small incremental chunks.

Avoid producing huge diffs.

For complex work:

1. Inspect context
2. Make a small plan
3. Implement one small change
4. Verify
5. Report
6. Continue only if needed

Do not bundle many unrelated improvements into one patch.

### 6. Preserve Human Taste and Judgment

The user's existing workflow, preferences, naming, project structure, and accumulated habits are valuable.

Do not replace them casually.

When improving the system:

- Extend before replacing.
- Preserve before optimizing.
- Ask only when the missing information materially changes the outcome.
- Otherwise, make a reasonable assumption, state it, and proceed.

---

## Search-first & Tool-first Research Layer

This section is an additive research layer. It does not replace existing project rules.

### 1. Search Before Answering Uncertain Questions

When a question involves current, uncertain, niche, technical, business, platform, advertising, marketing, operations, plugin, API, policy, pricing, product, tool, or configuration information, search first before answering.

Search is required when the task involves:

- Claude Code
- Codex
- OpenClaw
- MCP tools
- Tavily
- Serper
- browser tools
- plugin configuration
- APIs
- model configuration
- pricing
- platform limits
- platform policy
- Facebook Ads
- LinkedIn Ads
- TikTok
- Douyin
- 巨量本地推
- Meta Ads
- Google Ads
- SEO
- cross-border trade
- B2B lead generation
- social media operation
- customer acquisition
- landing pages
- advertising cases
- lead conversion
- customer service
- product research
- competitor research

Do not guess when search can reduce uncertainty.

### 2. Search Tool Priority

When online search or webpage reading is required, use this priority:

1. Tavily
2. Serper
3. Browser / web search
4. Official documentation
5. Other reliable sources

Tool preferences:

- Use Tavily for broad research, webpage extraction, summaries, topic understanding, and multi-source research.
- Use Serper for Google-style search results, competitor discovery, keyword discovery, ad case discovery, SERP analysis, landing page discovery, and SEO/SEM research.
- Use official documentation for setup, APIs, plugin behavior, platform rules, advertising policy, and configuration.
- Use browser/web search when specific pages need to be opened or verified.

If Tavily or Serper is unavailable:

- Clearly say the tool is not configured.
- Do not pretend it was used.
- Continue with the best available search method.
- Provide the configuration steps needed.

### 3. Search and Plugin Configuration Check

When the project involves research, automation, agent workflows, ads research, or knowledge-base workflows, check whether the following are configured:

- Tavily API key or MCP tool
- Serper API key or MCP tool
- Browser / web search capability
- Obsidian vault access
- LLM Wiki access
- GitHub knowledge repository access
- Local file search
- Environment variables
- Relevant config files

Common environment variables to document:

- TAVILY_API_KEY
- SERPER_API_KEY
- SERPAPI_API_KEY, if used
- OPENAI_API_KEY=REMOVED
- ANTHROPIC_API_KEY=REMOVED

Security rules:

- Never expose real API keys.
- Never print tokens.
- Never commit secrets.
- Use .env.example with placeholders only.

Example placeholders:

```
TAVILY_API_KEY=your_tavily_api_key_here
SERPER_API_KEY=your_serper_api_key_here
```

---

## Obsidian / LLM Wiki Knowledge-base Layer

This section is an additive knowledge workflow layer. It must preserve the existing knowledge structure.

### 1. Internal Knowledge First for User's Core Business

For the user's business-related questions, search the internal knowledge base first when available.

Core business topics include:

- 跨境贸易
- 跨境社媒
- 海外社媒运营
- B2B 获客
- 食品加工机械
- Facebook 广告
- LinkedIn 广告
- TikTok 运营
- 抖音 / 巨量本地推
- 客户开发
- 客户服务
- 客户沟通
- 投流案例
- 广告素材
- 落地页
- 表单获客
- 私域跟进
- 产品调研
- 竞品分析
- 行业研究
- 销售话术
- Obsidian 知识库
- LLM Wiki
- 提示词系统
- Agent 工作流

Default research order:

1. Search Obsidian / LLM Wiki / local notes first.
2. Search repository docs and GitHub knowledge files.
3. Search web with Tavily.
4. Search Google/SERP/competitor pages with Serper.
5. Compare internal knowledge with current web findings.
6. Produce a practical answer.
7. Suggest what should be saved back into the knowledge base.

### 2. 投流 / 运营 / 获客研究流程

For advertising, operations, social media, lead generation, and customer conversion questions, use this workflow:

#### Step 1: Define Context

Identify:

- Platform
- Country / region
- Product / service
- Industry
- Target customer
- Budget level
- Conversion goal
- Funnel stage
- Existing creatives
- Landing page
- Lead form
- Follow-up method

#### Step 2: Search Internal Knowledge

Search:

- Obsidian notes
- LLM Wiki
- Past campaign cases
- Prompt templates
- Product research notes
- Customer notes
- Sales scripts
- Case library
- SOPs

#### Step 3: Search Online

Use:

- Tavily for strategy, current platform changes, case summaries, policy changes, and broad research.
- Serper for competitor pages, Google results, keywords, ad case discovery, landing pages, and SERP research.
- Official platform docs for ad policies, account setup, tracking, conversion API, lead forms, attribution, and ad formats.

#### Step 4: Extract Useful Elements

Extract:

- Campaign objective
- Audience targeting
- Hook
- Pain point
- Offer
- Creative format
- Landing page structure
- Lead form structure
- CTA
- Follow-up script
- Metrics
- Testing plan
- Failure reasons
- Reusable insight

#### Step 5: Produce Practical Output

Return one or more of:

- Campaign strategy
- Ad creative brief
- Landing page structure
- Lead form structure
- Customer follow-up script
- SOP
- Checklist
- Testing matrix
- Obsidian note
- Prompt template
- Case library entry

### 3. Obsidian Note Format

When producing content that should be saved into Obsidian, use this format:

```
---
title:
aliases:
type:
status:
tags:
related:
source:
created:
updated:
---

# Title

## Summary

## Key Points

## Practical Use

## Workflow / SOP

## Prompts

## Cases / Examples

## Sources

## Related Notes

## Next Actions
```

Recommended tags:

- #跨境贸易
- #跨境社媒
- #Facebook广告
- #LinkedIn获客
- #TikTok运营
- #巨量本地推
- #投流案例
- #广告素材
- #客户转化
- #食品加工机械
- #B2B获客
- #客户服务
- #Obsidian
- #LLMWiki
- #提示词
- #工作流

### 4. Knowledge Capture Rule

When useful information is discovered, decide whether it should be saved into Obsidian / LLM Wiki.

Save-worthy information includes:

- Reusable prompts
- SOPs
- Campaign cases
- Customer communication scripts
- Product research
- Industry insights
- Competitor analysis
- Platform rules
- Configuration steps
- Tool setup guides
- Debugging solutions
- Workflow improvements

Do not automatically write into the knowledge base unless instructed.

But always suggest:

- What new note should be created
- What existing note should be updated
- Which tags should be added
- Which related notes should be linked
- What source should be recorded

---

## Default Operating Loop

For complex tasks, use this complete loop:

1. Read existing project instructions.
2. Preserve existing workflow.
3. Understand the user's goal.
4. Search internal knowledge if relevant.
5. Search online if the answer is current or uncertain.
6. Prefer Tavily, then Serper, then browser/web, then official docs.
7. Build a simple mental model.
8. Make a small plan.
9. Make the smallest useful change.
10. Verify the result.
11. Report what changed and why.
12. Suggest knowledge-base updates.

# Claude-mem Token Budget Rule

Before using memory or reading history, follow:

- Read ~/.claude/memory-policy/CLAUDE_MEM_BUDGET.md
- Prefer project-level PROJECT_MEMORY.md over full history
- Never load claude-mem-observer-sessions directly into context
- Never load cc-connect.log or large jsonl files fully
- Summarize memory first, then answer


# AI Memory Router Policy

- Claude-to-IM / cc-connect is only a Feishu bridge.
- Do not use bridge logs as memory.
- Prefer PROJECT_MEMORY.md and PROJECT_INDEX.md for project context.
- Do not read claude-mem-observer-sessions unless explicitly requested.
- Do not read historical jsonl files by default.
- Do not read cc-connect.log fully.
- For claude-mem, use search first, then timeline, then get_observations only for selected IDs.
- If context is missing, ask for the project name or run a keyword route first.


# Web Search / News / Weather Tool Policy

当用户通过飞书、Claude Code 或终端提出以下需求时，优先使用本机工具，不要直接依赖普通网页抓取：

## 搜索优先级

1. 普通网页搜索：
   ai-search "关键词"

2. 新闻搜索：
   ai-news "关键词"

3. 网页正文抓取：
   ai-fetch "URL"

4. 天气查询：
   ai-weather "城市名"

## 工具优先级

- Tavily：优先用于搜索、综合问答、快速整理结果。
- Firecrawl：优先用于抓取网页正文、文章内容、网页 Markdown。
- Serper：作为 Tavily 的搜索备用方案。
- Open-Meteo：用于天气，不要优先网页搜索天气。

## 天气问题规则

当用户问天气、气温、下雨、风力、出行天气时：

1. 优先执行：
   ai-weather 城市名

2. 例如：
   ai-weather 石家庄
   ai-weather 北京
   ai-weather 上海

3. 如果用户没有说城市，先根据上下文判断；无法判断再追问。

4. 不要编造天气数据。

5. ai-weather 失败后，再执行：
   ai-search "城市 今日 天气"

## 新闻问题规则

当用户问“最新、今天、最近、新闻、政策、价格、模型版本、API 变化、公司动态”时：

1. 优先执行：
   ai-news "关键词"

2. 如果新闻结果不够，再执行：
   ai-search "关键词"

3. 必须说明来源和时间。

## 网页抓取规则

当用户给出具体 URL，需要总结、提取、转 Obsidian、整理信息时：

1. 优先执行：
   ai-fetch "URL"

2. 不要直接用普通浏览器抓取失败后就放弃。

## Token 节省规则

- 搜索结果先摘要，不要全文塞进上下文。
- 网页正文超过 12,000 字符时，只读相关段落。
- 多网页研究时，先列 URL 和摘要，再决定是否深入抓取。
- 不要反复抓取同一个 URL。
- 不要把完整 HTML、完整 JSON、完整日志发给模型。

## 飞书远程工作流

当用户从飞书发来搜索、新闻、天气、网页总结任务：

1. 先判断任务类型。
2. 天气走 ai-weather。
3. 新闻走 ai-news。
4. 普通搜索走 ai-search。
5. 指定 URL 走 ai-fetch。
6. 最后用简短中文回复飞书。


# Claude-mem Safe Memory Policy

当涉及项目历史、长期记忆、继续上次任务时：

1. 优先读取当前项目的 PROJECT_MEMORY.md / PROJECT_INDEX.md。
2. 不要默认读取 claude-mem-observer-sessions。
3. 不要默认读取历史 jsonl。
4. 不要默认启动 chroma-mcp 或 worker-service.cjs。
5. 如果需要 claude-mem，必须先 search，再 timeline，最后只 get_observations 相关 ID。
6. 项目结束时，把稳定结论写入 PROJECT_MEMORY.md，把过程时间线写入 PROJECT_HISTORY.md。
7. 单次 input_tokens 超过 50,000 时必须暂停总结。
8. 详细规则见：~/.claude/memory-policy/CLAUDE_MEM_SAFE_POLICY.md

# Feishu Process Layer Rule

当用户通过飞书提问时，允许保留“思考/过程层”，但必须简短。

允许输出：
- 💭 简短说明下一步动作
- 🔧 Tool #1: Bash
- 实际执行的命令，例如 ai-weather 石家庄
- 工具完成后的简短说明
- 最终答案

禁止输出：
- 长篇内部推理
- 大段英文 reasoning
- 大段 chain of thought
- 大段工具原始 JSON
- 大段日志
- 大段网页 HTML
- 无关分析

天气类推荐格式：

💭 用户询问天气，优先使用 ai-weather 查询实时天气。
🔧 Tool #1: Bash
ai-weather 城市名
💭 天气查询完成，整理为简洁中文结果。

然后输出最终天气结果。

过程层每条不超过 80 字。

详细规则见：
~/.ai-control/bridge/FEISHU_PROCESS_LAYER_RULE.md
