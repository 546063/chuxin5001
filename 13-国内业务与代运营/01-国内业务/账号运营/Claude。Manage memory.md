---
title: Claude Memory（工作上下文）
aliases:
  - - - - - Claude Memory（工作上下文）
tags:
  - - - - - '#国内业务/代运营方法'
  - - - - - '#AI工具'
  - - - - - '#账号运营'
topic:
  - - - - - '#国内业务'
created: 2026-04-17
updated: 2026-05-04
type: journal
status: active
summary_cn: 老板（吴浩博）工作上下文AI记忆文档，涵盖:业务主线（海外社媒出海）、公司定价（¥12,800/¥29,800-49,800入门/主推套餐）、养鱼爱好（两缸热带鱼:128L神仙鱼/161L南美慈鲷）。项目背景:银羽羽毛球馆双账号运营（球馆+教练）、博哥AI智能体IP（TikTok为首）、鲸驰集团合作、三层AI多模型架构。工具背景:OpenClaw v4.3+配置、Feishu长连接、MiniMax模型设置、ClawHub插件安装。适合快速了解老板业务背景与AI工具配置。
quality_level: A
decision_value: 高
retrieval_keywords:
  - - - - - - 吴浩博
  - - - - - - 工作上下文
  - - - - - - AI记忆
  - - - - - - 河北陶之初
  - - - - - - 银羽羽毛球馆
  - - - - - - 博哥AI
  - - - - - - 鲸驰集团
  - - - - - - OpenClaw配置
  - - - - - - Feishu长连接
  - - - - - - MiniMax模型
related: 
source: AI整理-2026-05-11
category: 国内业务
platform: 多平台
industry: 多行业
scenario: 获客
summary_en: [EN] 老板（吴浩博）工作上下文AI记忆文档，涵盖:业务主线（海外社媒出海）、公司定价（¥12,800/¥29,800-49,800入门/主推套餐）、养鱼爱好（两缸热带鱼:128L神仙鱼/161L南美慈鲷）。...
one_sentence_summary: Claude Memory（工作上下文）是国内业务领域的核心方法。
routing_target:
  - "[[13-国内业务代运营MOC]]"
---





# Claude。Manage memory

Claude。Manage memory​
Memory​
Search and reference chats​
Allow Claude to search for relevant details in past chats. Learn more.​
Generate memory from chat history​
Allow Claude to remember relevant context from your chats. This setting controls memory for 
both chats and projects. Learn more.​
Work context 老板 (吴浩博) runs a one-person new media operations company helping Chinese 
factories expand overseas via social media, with the core goal of driving precise inquiries to 
conversions. Primary service lines include overseas social media operations (TikTok, Facebook, 
Instagram, LinkedIn), domestic platform operations (Douyin, WeChat Channels, Xiaohongshu), 
and personal IP incubation. Pricing: entry package ¥12,800/month ×3 months minimum; 
primary package ¥29,800–49,800/month ×3 months minimum. Company legal entity: 河北陶之
初文化发展有限公司. Personal context 老板 is based in Shijiazhuang and maintains two fish tanks 
as a hobby, with a focus on stable, low-maintenance water quality. Tank 1 (128L) houses 
angelfish, pearl gourami, neon tetras, red-tail tetras, corydoras, and tiger otocinclus, with 
driftwood/fern aquascape and blue background; current state is healthy with minor surface film. 
Tank 2 (161L, sump filter) houses eartheater cichlids, a pale cichlid (魔门斯卡), Denison barbs, 
and neon tetras; current issues include green water tendency and heavy driftwood biofilm; 
white spot disease resolved. Also plays badminton (Li-Ning racket identified). Top of mind 
OpenClaw (龙虾) troubleshooting is active — recent sessions resolved a Feishu bot "no 
response" symptom traced to MiniMax API rate limiting (HTTP 429), with the fix being switching 
to DeepSeek or waiting for quota reset; a separate Feishu Docs permissions issue (missing 
docx:document:create scope) was also identified. A pending task is configuring browser-search 
priority in OpenClaw (requires installing the browser-use skill). The three-layer AI multi-model 
architecture (orchestration/execution/routing) has been designed but not yet implemented. 
Brief history Recent months OpenClaw setup (extensive, ongoing): Upgraded to v2026.4.3 then 
v4.3+; correct binary at /Users/mac/.local/bin/openclaw; restart via pkill -f openclaw (no restart 
command exists; --resume is invalid CLI flag, use /resume in-session). Plugins loaded: feishu, 
openclaw-weixin (v2.1.1, installed via npm install + manual symlink to nodemodules/@tencent-
weixin/openclaw-weixin), openclaw-claude-code. Web search set to DuckDuckGo (no API key 
needed). Permissions set to profile: full, exec: {ask: off}. Primary model: MiniMax-M2.5/M2.7; 
MiniMax thinking mode requires explicit "reasoning": true + "thinking": {"type": "enabled"} in 
config. Feishu longpoll integration confirmed active (app ID clia95e685bc17adbcd). Config 
stored at ~/.openclaw/openclaw.json (not YAML). ClawHub 429 rate limiting encountered during 
plugin installs; workaround is direct npm + symlink method. Version conflict risk: avoid using 
npx openclaw (picks up stale version at /Users/mac/node_modules/.bin/); always use absolute 
path. Computer Use macOS skill installed at ~/.codex/skills/computer-use-macos/; must use 
venv Python at .runtime/venv/bin/python3; accessibility + screen recording permissions 
confirmed active. Model/architecture planning: Three-layer AI architecture discussed: 
orchestration layer (GPT-4o/o3 for planning), execution layer (Claude Sonnet for long-
form/complex tasks, MiniMax for high-frequency Chinese tasks), routing layer (lightweight 
model for intent classification). Gemini 3 Flash (API: google/gemini-3-flash-preview) noted as 
pending upgrade candidate; current gemini-2.0-flash-exp available but older; Gemini 3.1 Pro 
Preview not yet supported by current API key. Oh-my-openagent plugin identified as top 
orchestration skill for OpenClaw (named agents: Sisyphus, Oracle, Librarian, Explore, 
Prometheus, Atlas). Cross-border e-commerce — product research: Extensive research 
conducted across Spanish-speaking markets (Spain, Mexico, Colombia, Argentina, Chile) and 
Australian market. Finalized 10 products for Spanish-language markets: LED beauty devices, 
portable Bluetooth speakers, smart sports watches, mini projectors, air fryers, smart pet 
feeders, solar garden lights, yoga/fitness sets, multi-port car chargers, LED plant grow lights. 
Selection framework: 7 criteria (SKU standardization, light after-sales, compliance 
controllability, strong visual appeal, channel-friendly, bundleable, high repurchase rate); 
minimum 4 criteria to qualify; consumable-driven repurchase prioritized. Business model: 
distributor-first, minimum order ≥¥3,000 RMB, solo-operable, simple fulfillment chain. 
Additional high-value direction (≥¥10,000/order) identified: commercial hot water systems, cold 
chain kitchen equipment, stainless steel kitchen modules, door hardware/engineering, welding 
consumable monthly bundles. Product judgment notes: lawn mowers and auto vegetable 
cutters favored (strong demo appeal); drones and daily chemical products flagged as unsuitable 
for 0→1 stage. Client projects: Silver Wing International Badminton Club (银羽国际羽毛球馆): two 
Douyin accounts (venue + coach); primary goal is youth enrollment (ages 5–junior high); ad 
compliance constraint: Douyin only permits adult badminton content, so ads are framed for 
adult course enrollment while staff convert inquiries to youth training. Venue differentiators: AI 
hawk-eye, speed measurement, Victor competition flooring, Klein blue aesthetic. Target 
audience: parents 31–40. CTA: free assessment + trial class. Monthly ad budget ~¥5,000. Ad copy 
direction: short (10–15 sec), efficiency/correction/beginner angles, phone number lead 
collection. 博哥 AI agent IP account: AI agent IP consultant persona, targeting 100 agents built, 
TikTok-first funnel (video → comment/DM keyword → receive agent → convert to product); each 
video sells one "claimable result." Customer acquisition SOP (factory overseas expansion): Daily 
pool-building of 20–50 prospects → 15-minute diagnosis → 1-page proposal (two pricing tiers) 
→ 7–14 day multi-touchpoint follow-up. Three required questions: current overseas acquisition 
situation? core advantage and materials? who handles inquiries and can they respond within 24 
hours? Standard project skeleton: Traffic source → private domain reception/conversion funnel 
→ daily operations (social posts/community/livestream/short video) → org structure. Delivery 
boundary: commit to delivery and iteration, not inquiry volume or conversion outcomes; clients 
must provide materials and respond to leads within 24h. Earlier context Cross-border e-
commerce research: Conducted detailed customs data analysis for Spanish-speaking markets 
and Southeast Asian B2B markets. Southeast Asia B2B top products identified: small 
commercial food processing equipment, commercial refrigeration/ice-making, off-grid solar 
systems, commercial water purification, outdoor LED displays, laser marking machines, 
industrial fans, commercial kitchen equipment, portable energy storage, EV charging stations. 
Spiritual/esoteric products for Latin America assessed as high-potential (Veladoras, incense, 
copal, amulets, crystals, tarot); joss paper assessed as culturally misaligned. Robot vacuum 
cleaner data analyzed; assessed as better suited for lead generation for factories than direct solo-
operator sales. Potential investment: Jingchi Group (鲸驰集团) North China branch partnership 
under consideration. Three protective frameworks: ①business scope/exclusivity/uniqueness 
②company governance and goals ③capital investment mechanism. Major shareholder: 吴劲波. 
Key unresolved items: coverage scope, 40% equity attribution, control structure. Brand 
authorization document: Created brand authorization letter template (品牌授权书) for baby 
stroller sales in South America under 河北陶之初文化发展有限公司, covering Colombia, Mexico, 
Argentina, Chile, Peru and other Spanish-speaking markets; includes social media account 
operation rights (Facebook/Instagram/TikTok/YouTube/WhatsApp Business). Long-term 
background New media operations business foundations: Core business is overseas social 
media marketing for Chinese factories. Content mix formula: 40% expertise/dry knowledge, 20% 
values, 20% business, 20% client results. Communication style: minimal filler, framework-first, 
SOP-oriented, first-principles thinking, strategy before execution. Files default to Downloads 
folder. Proxy tool: Shadowrocket with split-tunneling configured (mainland China direct, all 
other traffic proxied; lazy config from Johnshall repo). --- Other instructions Always address 吴浩
博 as 「老板」 Default response style: concise, no filler; lead with goal/structure, then details; 
first-principles framing preferred OpenClaw = "龙虾"/"大龙虾": open-source local AI agent 
framework, Skills-based extensibility, controls browser/files/terminal, multi-model support, skill 
marketplace = ClawHub; command via Feishu/WhatsApp/WeChat Claude Code installed on Mac 
(supports Computer Use + remote task dispatch); requires Claude Pro/Max subscription​
Memory from your chats​
Updated 6 hours ago from your chats​
View and edit memory​
Import memory from other AI providers​
Bring relevant context and data from another AI provider to Claude. We'll provide a prompt you 
can use to fetch the memory from your other account. Learn more​
Tool access​
Tool access mode​
Controls how connector tools are loaded in new conversations.​
Load tools when neededChats compact less since tools aren't pre-loaded.​
Tools already loadedChats compact more often since tools are always there.​
Visuals​
Artifacts​
Ask Claude to generate content like code snippets, text documents, or website designs, and 
Claude will create an Artifact that appears in a dedicated window alongside your conversation.​
AI-powered artifacts​
Create apps, prototypes, and interactive documents that use Claude inside the artifact. Start by 
saying, “Let’s build an AI app...” to access the power of Claude API.​
Inline visualizations​
Allow Claude to generate interactive visualizations, charts, and diagrams directly in the 
conversation.​
Code execution and file creation​
Cloud code execution and file creation​
Claude can execute code on a server and create and edit docs, spreadsheets, presentations, 
PDFs, and data reports. Required for skills.​
Allow network egress​
Give Claude network access to install packages and libraries in order to perform advanced data 
analysis, custom visualizations, and specialized file processing. Monitor chats closely as this 
comes with security risks.​
Skills
Skills have moved to Customize. Head to the new Customize page to manage your skills and 
connectors.​
Manage memory​
Here’s what Claude remembers about you! This summary is regenerated each night and does 
not include projects, which have their own specific memory.​
Work context​
老板 (吴浩博) runs a one-person new media operations company helping Chinese factories 
expand overseas via social media, with the core goal of driving precise inquiries to conversions. 
Primary service lines include overseas social media operations (TikTok, Facebook, Instagram, 
LinkedIn), domestic platform operations (Douyin, WeChat Channels, Xiaohongshu), and 
personal IP incubation. Pricing: entry package ¥12,800/month ×3 months minimum; primary 
package ¥29,800–49,800/month ×3 months minimum. Company legal entity: 河北陶之初文化发
展有限公司.​
Personal context​
老板 is based in Shijiazhuang and maintains two fish tanks as a hobby, with a focus on stable, 
low-maintenance water quality. Tank 1 (128L) houses angelfish, pearl gourami, neon tetras, red-
tail tetras, corydoras, and tiger otocinclus, with driftwood/fern aquascape and blue background; 
current state is healthy with minor surface film. Tank 2 (161L, sump filter) houses eartheater 
cichlids, a pale cichlid (魔门斯卡), Denison barbs, and neon tetras; current issues include green 
water tendency and heavy driftwood biofilm; white spot disease resolved. Also plays badminton 
(Li-Ning racket identified).​
Top of mind​
OpenClaw (龙虾) troubleshooting is active — recent sessions resolved a Feishu bot "no 
response" symptom traced to MiniMax API rate limiting (HTTP 429), with the fix being switching 
to DeepSeek or waiting for quota reset; a separate Feishu Docs permissions issue (missing 
docx:document:create  scope) was also identified. A pending task is configuring browser-
search priority in OpenClaw (requires installing the browser-use  skill). The three-layer AI 
multi-model architecture (orchestration/execution/routing) has been designed but not yet 
implemented.​
Brief history​
Recent months​
OpenClaw setup (extensive, ongoing): Upgraded to v2026.4.3 then v4.3+; correct binary at 
/Users/mac/.local/bin/openclaw ; restart via pkill -f openclaw  (no restart 
command exists; --resume  is invalid CLI flag, use /resume  in-session). Plugins loaded: 
feishu, openclaw-weixin (v2.1.1, installed via npm install  + manual symlink to 
node_modules/@tencent-weixin/openclaw-weixin ), openclaw-claude-code. Web 
search set to DuckDuckGo (no API key needed). Permissions set to profile: full , exec: 
{ask: off} . Primary model: MiniMax-M2.5/M2.7; MiniMax thinking mode requires explicit 
"reasoning": true  + "thinking": {"type": "enabled"}  in config. Feishu longpoll 
integration confirmed active (app ID cli_a95e685bc17adbcd ). Config stored at 
~/.openclaw/openclaw.json  (not YAML). ClawHub 429 rate limiting encountered during 
plugin installs; workaround is direct npm + symlink method. Version conflict risk: avoid using 
npx openclaw  (picks up stale version at /Users/mac/node_modules/.bin/ ); always 
use absolute path. Computer Use macOS skill installed at ~/.codex/skills/computer-
use-macos/ ; must use venv Python at .runtime/venv/bin/python3 ; accessibility + 
screen recording permissions confirmed active.​
Model/architecture planning: Three-layer AI architecture discussed: orchestration layer (GPT-
4o/o3 for planning), execution layer (Claude Sonnet for long-form/complex tasks, MiniMax for 
high-frequency Chinese tasks), routing layer (lightweight model for intent classification). Gemini 
3 Flash (API: google/gemini-3-flash-preview ) noted as pending upgrade candidate; 
current gemini-2.0-flash-exp  available but older; Gemini 3.1 Pro Preview not yet 
supported by current API key. Oh-my-openagent plugin identified as top orchestration skill for 
OpenClaw (named agents: Sisyphus, Oracle, Librarian, Explore, Prometheus, Atlas).​
Cross-border e-commerce — product research: Extensive research conducted across Spanish-
speaking markets (Spain, Mexico, Colombia, Argentina, Chile) and Australian market. Finalized 
10 products for Spanish-language markets: LED beauty devices, portable Bluetooth speakers, 
smart sports watches, mini projectors, air fryers, smart pet feeders, solar garden lights, 
yoga/fitness sets, multi-port car chargers, LED plant grow lights. Selection framework: 7 criteria 
(SKU standardization, light after-sales, compliance controllability, strong visual appeal, channel-
friendly, bundleable, high repurchase rate); minimum 4 criteria to qualify; consumable-driven 
repurchase prioritized. Business model: distributor-first, minimum order ≥¥3,000 RMB, solo-
operable, simple fulfillment chain. Additional high-value direction (≥¥10,000/order) identified: 
commercial hot water systems, cold chain kitchen equipment, stainless steel kitchen modules, 
door hardware/engineering, welding consumable monthly bundles. Product judgment notes: 
lawn mowers and auto vegetable cutters favored (strong demo appeal); drones and daily 
chemical products flagged as unsuitable for 0→1 stage.​
Client projects: Silver Wing International Badminton Club (银羽国际羽毛球馆): two Douyin 
accounts (venue + coach); primary goal is youth enrollment (ages 5–junior high); ad compliance 
constraint: Douyin only permits adult badminton content, so ads are framed for adult course 
enrollment while staff convert inquiries to youth training. Venue differentiators: AI hawk-eye, 
speed measurement, Victor competition flooring, Klein blue aesthetic. Target audience: parents 
31–40. CTA: free assessment + trial class. Monthly ad budget ~¥5,000. Ad copy direction: short 
(10–15 sec), efficiency/correction/beginner angles, phone number lead collection. 博哥 AI agent 
IP account: AI agent IP consultant persona, targeting 100 agents built, TikTok-first funnel (video 
→ comment/DM keyword → receive agent → convert to product); each video sells one 
"claimable result."​
Customer acquisition SOP (factory overseas expansion): Daily pool-building of 20–50 prospects 
→ 15-minute diagnosis → 1-page proposal (two pricing tiers) → 7–14 day multi-touchpoint 
follow-up. Three required questions: current overseas acquisition situation? core advantage and 
materials? who handles inquiries and can they respond within 24 hours?​
Standard project skeleton: Traffic source → private domain reception/conversion funnel → daily 
operations (social posts/community/livestream/short video) → org structure. Delivery 
boundary: commit to delivery and iteration, not inquiry volume or conversion outcomes; clients 
must provide materials and respond to leads within 24h.​
Earlier context​
Cross-border e-commerce research: Conducted detailed customs data analysis for Spanish-
speaking markets and Southeast Asian B2B markets. Southeast Asia B2B top products 
identified: small commercial food processing equipment, commercial refrigeration/ice-making, 
off-grid solar systems, commercial water purification, outdoor LED displays, laser marking 
machines, industrial fans, commercial kitchen equipment, portable energy storage, EV charging 
stations. Spiritual/esoteric products for Latin America assessed as high-potential (Veladoras, 
incense, copal, amulets, crystals, tarot); joss paper assessed as culturally misaligned. Robot 
vacuum cleaner data analyzed; assessed as better suited for lead generation for factories than 
direct solo-operator sales.​
Potential investment: Jingchi Group (鲸驰集团) North China branch partnership under 
consideration. Three protective frameworks: ①business scope/exclusivity/uniqueness 
②company governance and goals ③capital investment mechanism. Major shareholder: 吴劲波. 
Key unresolved items: coverage scope, 40% equity attribution, control structure.​
Brand authorization document: Created brand authorization letter template (品牌授权书) for 
baby stroller sales in South America under 河北陶之初文化发展有限公司, covering Colombia, 
Mexico, Argentina, Chile, Peru and other Spanish-speaking markets; includes social media 
account operation rights (Facebook/Instagram/TikTok/YouTube/WhatsApp Business).​
Long-term background​
New media operations business foundations: Core business is overseas social media marketing 
for Chinese factories. Content mix formula: 40% expertise/dry knowledge, 20% values, 20% 
business, 20% client results. Communication style: minimal filler, framework-first, SOP-oriented, 
first-principles thinking, strategy before execution. Files default to Downloads folder. Proxy tool: 
Shadowrocket with split-tunneling configured (mainland China direct, all other traffic proxied; 
lazy config from Johnshall repo).​
Other instructions​
•
Always address 吴浩博 as 「老板」​
•
Default response style: concise, no filler; lead with goal/structure, then details; first-
principles framing preferred​
•
OpenClaw = "龙虾"/"大龙虾": open-source local AI agent framework, Skills-based 
extensibility, controls browser/files/terminal, multi-model support, skill marketplace = 
ClawHub; command via Feishu/WhatsApp/WeChat​
•
Claude Code installed on Mac (supports Computer Use + remote task dispatch); requires 
Claude Pro/Max subscription​
Tell Claude what to remember or forget...​
Manage edits​
22​

---

> [!info] 相关笔记
> **上级导航**: [[账号运营 MOC]] | [[00-索引与导航/00-首页MOC]]
>
> **本集群关联**:
> - [[龙虾MEMORY]] -- OpenClaw 记忆（业务运营档案）
> - [[09-国内业务/账号运营/三Agent使用统计报告]] -- Agent 使用统计
>
> **跨集群关联**:
> - [[01-记忆与配置/配置/MEMORY]] -- OpenClaw 主记忆文件
> - [[01-记忆与配置/配置/MEMORY]] -- Hermes 主记忆文件
> - Claude AI/INDEX -- Claude Code 知识库索引

---

*标签: #AI记忆 #工具/Claude-Code*

## 一句话总结
# Claude。Manage memory

## 核心结论
- 待补充

## 适用场景
- 适合平台：
- 适合行业：
- 适合场景：

## 可复用方法
- 方法 1：待补充
- 方法 2：待补充

## 对我的业务有什么价值
- 对跨境贸易的价值：待补充
- 对 Facebook 投流的价值：待补充
- 对巨量本地推的价值：待补充
- 对客户开发的价值：待补充
- 对知识库沉淀的价值：待补充

## 相关案例
- [[相关案例]]（待补充）

## 后续可提问的问题
- 这个内容适合哪个行业复用？
- 这个策略适合什么平台？
- 这个方法的核心是什么？
- 有什么数据需要补充？
- 有什么风险需要注意？

## 待补充
- 需要补充的数据
- 需要补充的案例
- 需要后续搜索的内容
#待补充
## 关联笔记
- [[09-国内业务/MOC]]
- [[00-索引与导航/00-首页MOC]]


## 相关知识点
- [[国内业务]]
- [[国内社媒]]
- [[客户服务]]
- [[账号运营]]
- [[客户档案]]
