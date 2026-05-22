---
title: "Facebook Messenger 获客链路 SOP"
aliases:
  - "Messenger 广告获客 SOP"
  - "Facebook Click to Messenger B2B 获客"
  - "Messenger Lead Generation Playbook"
tags:
  - facebook-ads
  - messenger-ads
  - b2b-lead-gen
  - food-processing-machinery
  - sop
  - conversation-ads
type: sop
module: overseas-traffic-acquisition
platform: Facebook/Messenger
routing_target:
  - messenger_leads
  - facebook_conversation_ads
  - facebook_b2b_ads
quality_level: A
summary_cn: "B2B 食品加工机械出口通过 Facebook Messenger 获客的完整 SOP，覆盖广告结构、受众设置、自动回复、线索分级、无效过滤、WhatsApp 转接、跟进节奏与可复制清单。"
summary_en: "Complete SOP for B2B food processing machinery export lead generation via Facebook Messenger, covering ad structure, audience setup, auto-reply, lead scoring, filtering, WhatsApp handoff, follow-up cadence, and step-by-step checklist."
related:
  - "[[10-Facebook投流路由入口]]"
  - "[[15-Facebook客服营销SOP]]"
  - "[[14-Facebook无效线索过滤SOP]]"
  - "[[13-Facebook WhatsApp获客链路SOP]]"
retrieval_keywords:
  - "Messenger广告怎么做"
  - "Messenger询盘怎么接"
  - "Facebook私信获客"
  - "Click to Messenger广告"
  - "Messenger自动回复设置"
  - "Facebook B2B 获客"
  - "机械出口 Messenger"
  - "食品加工机械 Facebook 广告"
  - "Messenger 转 WhatsApp"
  - "Facebook 线索分级"
decision_value: "Messenger 是中东/拉美市场 B2B 获客首选通道，自动回复筛选 + 人工跟进可提升有效线索率 40%+"
created: 2026-05-22
updated: 2026-05-22
---

# Facebook Messenger 获客链路 SOP

> 适用行业：食品加工机械出口（整单 ≥ ¥20,000）
> 核心逻辑：广告触发对话 → 自动回复筛选 → 人工跟进 → WhatsApp 深度沟通 → 报价/样品/成交

---

## 1. Messenger 广告适合什么业务

| 维度 | 说明 |
|------|------|
| **适合** | B2B 高客单价决策型产品，需要多轮沟通建立信任 |
| **适合** | 产品线复杂（型号/产能/配置需定制化沟通） |
| **适合** | 目标客户有明确的采购意向信号（搜索过竞品/加入行业群） |
| **不适合** | 纯品牌曝光、无对话意愿的低客单快消品 |
| **不适合** | 无客服团队承接、无法做到 2 小时内首次回复 |

**食品加工机械的典型适配场景：**

- 客户已了解行业基础信息，进入"比较供应商"阶段
- 需要发送设备视频、技术参数表、工厂实拍
- 客户希望通过即时通讯快速确认产能、价格区间、交期
- 目标市场 WhatsApp/Messenger 渗透率高（东南亚、中东、非洲、拉美）

---

## 2. Click to Messenger 广告结构

```
广告账户
└── Campaign（广告系列）
    └── Objective: Engagement 或 Leads
        └── Conversion Location: Messaging Apps → Messenger
            └── Ad Set（广告组）
                ├── Audience（受众）
                ├── Placement（版位）
                ├── Budget & Schedule
                └── Optimization: Conversations
                    └── Ad（广告创意）
                        ├── Primary Text（正文）
                        ├── Headline（标题）
                        ├── Visual（图片/视频）
                        └── CTA: Send Message
```

### 关键配置对照表

| 配置项 | 推荐值 | 备注 |
|--------|--------|------|
| Campaign Objective | Engagement 或 Leads | Leads 适合已做过 Pixel 优化的账户 |
| Conversion Location | Messaging Apps | 选 Messenger |
| Optimization | Conversations | 优化对话发起次数 |
| Message Template | 必须设置 | 见第 6 节 |
| CTA Button | Send Message | 不可更改文案 |
| 广告版位 | Feeds + Reels | 优先 FB Feed + IG Feed |
| 预算起步 | $20–50/天/广告组 | 待实测，根据 CPL 调整 |

---

## 3. 广告目标选择

| 目标 | 适用阶段 | 优化事件 | 建议 |
|------|----------|----------|------|
| **Engagement → Messaging** | 新账户/冷启动 | 对话发起 | 首选，门槛低 |
| **Leads → Messaging** | 有历史转化数据 | 表单提交/对话 | 需 Messenger 中有线索收集流程 |
| **Sales → Messaging** | 成熟账户 | 购买/加购 | B2B 机械不推荐，转化链路过长 |

**推荐路径：** 新账户用 `Engagement → Messaging`，积累 50+ 对话后切换到 `Leads → Messaging`。

---

## 4. 受众设置

### 4.1 核心受众（Cold）

| 参数 | 设置 |
|------|------|
| 地域 | 目标国家（如印度、尼日利亚、印尼、菲律宾、墨西哥） |
| 年龄 | 25–55 |
| 性别 | 不限 |
| 语言 | 英语 + 当地语言（如设置英语，可覆盖大部分 B2B 采购决策者） |

### 4.2 兴趣定向

| 兴趣关键词 | 适用场景 |
|------------|----------|
| Food processing | 通用覆盖 |
| Food industry | 行业从业者 |
| Food manufacturing | 制造端 |
| Restaurant equipment | 餐饮设备经销商 |
| Bakery / Baking | 烘焙设备 |
| Meat processing | 肉类加工设备 |
| Packaging machinery | 包装机械（交叉需求） |
| Alibaba.com | 活跃 B2B 采购商 |
| Import/Export | 贸易从业者 |
| Small business owner | 中小企业主 |

### 4.3 自定义受众

| 受众类型 | 数据来源 | 用途 |
|----------|----------|------|
| 网站访客 | Pixel 数据（30/60/90 天） | 再营销 |
| 视频观看者 | 观看 50%/75% 广告视频 | 高意向再营销 |
| 互动受众 | IG/FB 主页互动（365 天） | 品牌认知用户 |
| 已有客户列表 | 上传客户邮箱/电话 | 排除 + Lookalike |
| Messenger 历史对话者 | 广告互动数据 | 最核心再营销池 |

### 4.4 Lookalike 受众

| 种子 | 比例 | 说明 |
|------|------|------|
| 已成交客户邮箱 | 1%–3% | 最高质量 |
| 高意向对话者（交换过 WhatsApp/报价） | 1%–5% | 次优 |
| 网站产品页访客（90 天） | 1%–3% | 补充 |

**受众排除策略：**

- 排除已成交客户（上传客户列表）
- 排除同行/竞争对手（排除相关兴趣：同行品牌名、B2B 平台名称）
- 排除 18–24 岁（采购决策概率极低）

---

## 5. 素材方向

### 5.1 素材类型与优先级

| 素材类型 | 优先级 | 说明 | 示例 |
|----------|--------|------|------|
| **工厂实拍短视频** | P0 | 15–30 秒，展示设备运行 | 灌肠机在车间运转，工人操作 |
| **设备工作特写** | P0 | 突出关键部件和成品效果 | 切片机切出均匀肉片 |
| **客户案例/证言** | P1 | 客户工厂 + 设备 + 简短采访 | 尼日利亚客户使用真空包装机 |
| **对比图** | P1 | 手工 vs 机器、旧设备 vs 新设备 | 手工包饺子 vs 饺子机产出 |
| **参数信息图** | P2 | 核心参数一目了然 | 产能/功率/尺寸/重量 |
| **工厂全景/团队** | P2 | 建立信任感 | 车间全景、质检环节 |

### 5.2 广告文案模板

**模板 A — 痛点驱动型：**

```
EN: Still packing by hand? Our automatic [machine name] produces [X] units/hour with consistent quality. Factory-direct price, full installation guide included. Tap "Send Message" to get the specs and pricing.

CN: 还在人工包装？我们的全自动[设备名]每小时产出[X]件，品质稳定。工厂直供价，含完整安装指导。点击"发送消息"获取参数和报价。
```

**模板 B — 产能数据型：**

```
EN: [Machine Name] — Capacity: [X] kg/h, Power: [Y] kW, Output: [Z] units/min. 500+ units sold to 40+ countries. Message us for a customized quote based on your production needs.

CN: [设备名] — 产能：[X] kg/h，功率：[Y] kW，产量：[Z] 件/分钟。已出口 40+ 国家，500+ 台销量。私信我们，根据您的产能需求获取定制报价。
```

**模板 C — 信任背书型：**

```
EN: ISO certified. CE approved. 15 years in food processing machinery. Free consultation — tell us what you're producing, we'll recommend the right machine.

CN: ISO 认证，CE 认证，15 年食品加工机械经验。免费咨询——告诉我们您生产什么，我们为您推荐合适的设备。
```

### 5.3 素材制作 checklist

- [ ] 视频前 3 秒展示设备运行画面（抓注意力）
- [ ] 画面中出现成品效果（建立结果联想）
- [ ] 字幕/文字叠加核心参数（静音也能获取信息）
- [ ] CTA 明确指向"发消息获取报价"
- [ ] 横版 16:9（Feed）+ 竖版 9:16（Reels/Stories）各一套
- [ ] 图片分辨率 ≥ 1080×1080
- [ ] 视频时长 15–60 秒（最优 20–30 秒）

---

## 6. 自动回复设计（含示例话术）

### 6.1 自动回复流程

```
用户点击广告 → 进入 Messenger 对话
    ↓
【欢迎消息】（自动触发）
    ↓
【快速回复按钮】引导用户选择需求
    ↓
【分支自动回复】根据选择推送对应内容
    ↓
【线索收集】询问关键信息（国家/产能需求/用途）
    ↓
【人工接管】客服介入深度沟通
```

### 6.2 欢迎消息配置

在 Ads Manager 的 "Message Template" 中设置：

| 元素 | 内容 |
|------|------|
| 欢迎语 | 简短专业，表明身份 + 行动引导 |
| 快速回复按钮 | 3–4 个选项，覆盖核心场景 |
| 冻结问候语 | 用户在广告未打开时显示 |

### 6.3 欢迎消息示例

**欢迎语：**

```
EN: Hi! Thanks for your interest in our food processing equipment. To serve you faster, please tell us what you're looking for:

CN: 您好！感谢您关注我们的食品加工设备。为更快为您服务，请告诉我们您的需求：
```

**快速回复按钮：**

| 按钮文案 | 对应自动回复 |
|----------|-------------|
| 🏭 Machine Catalog | 发送产品目录链接 + 热门机型清单 |
| 💰 Get a Quote | 进入报价引导流程 |
| 📹 Watch Demo Video | 发送设备运行视频链接 |
| ❓ General Inquiry | 通用咨询，人工接管 |

### 6.4 分支自动回复话术

**A. 用户选择 "Machine Catalog"（产品目录）：**

```
EN: Here's our full catalog: [链接]

Our top 3 bestsellers:
1. [Machine A] — [1-sentence description]
2. [Machine B] — [1-sentence description]
3. [Machine C] — [1-sentence description]

Which one interests you? I can send detailed specs and pricing.

CN: 这是我们的产品目录：[链接]

畅销 Top 3：
1. [设备A] — [一句话描述]
2. [设备B] — [一句话描述]
3. [设备C] — [一句话描述]

您对哪款感兴趣？我可以发送详细参数和报价。
```

**B. 用户选择 "Get a Quote"（获取报价）：**

```
EN: Great! To give you an accurate quote, I need a few details:

1. Which machine are you interested in?
2. What's your expected output (kg/hour or units/hour)?
3. What products are you processing? (meat, vegetables, snacks, etc.)
4. Which country are you shipping to?

Reply with your answers and I'll prepare a customized quote for you within 2 hours.

CN: 好的！为了给您准确报价，需要了解几个信息：

1. 您对哪款设备感兴趣？
2. 您的预期产能是多少（公斤/小时 或 件/小时）？
3. 您加工什么产品？（肉类、蔬菜、零食等）
4. 发货到哪个国家？

请回复以上信息，我将在 2 小时内为您准备定制报价。
```

**C. 用户选择 "Watch Demo Video"（观看演示视频）：**

```
EN: Here's a [Machine Name] running in our factory: [YouTube/视频链接]

Key specs:
- Capacity: [X] kg/h
- Power: [Y] kW
- Material: Stainless steel 304
- Warranty: 2 years

Want to see more models or get a quote? Just let me know.

CN: 这是[设备名]在我们工厂的运行视频：[链接]

核心参数：
- 产能：[X] kg/h
- 功率：[Y] kW
- 材质：304 不锈钢
- 质保：2 年

想看更多型号或获取报价？随时告诉我。
```

### 6.5 ManyChat / 原生工具配置要点

| 配置项 | 建议 |
|--------|------|
| 工具选择 | Facebook 原生 Message Template（够用）/ ManyChat（复杂流程） |
| 关键词触发 | 设置 "price", "quote", "catalog", "video" 等关键词自动回复 |
| 超时提醒 | 30 分钟未回复自动发送 follow-up |
| 多语言 | 根据用户语言选择自动回复语言（英语 + 西语/阿语按需） |

---

## 7. 人工客服接入

### 7.1 客服团队配置

| 角色 | 职责 | 响应时间 |
|------|------|----------|
| 一线客服 | 自动回复监控 + 基础问题回答 + 线索收集 | ≤ 2 小时 |
| 技术工程师 | 技术参数解答、选型建议 | ≤ 4 小时（可次日） |
| 销售经理 | 报价、谈判、WhatsApp 深度跟进 | ≤ 2 小时 |

### 7.2 客服工作流程

```
1. 收到新对话通知（Messenger 桌面版 / 手机端 / ManyChat）
2. 查看用户自动回复中已提交的信息
3. 补充询问缺失的关键信息
4. 推送对应资料（参数表/视频/案例）
5. 判断意向等级 → 分级（见第 8 节）
6. 高意向线索 → 引导至 WhatsApp 深度沟通
7. 记录到 CRM / 表格
```

### 7.3 客服话术要点

| 场景 | 话术示例 |
|------|----------|
| 用户只说 "hi" | `Hi! Are you looking for a specific food processing machine? Tell me what you produce and I'll recommend the right equipment.` |
| 用户问价格 | `The price depends on capacity and configuration. Could you share your expected output (kg/h)? I'll prepare a detailed quote.` |
| 用户问交期 | `Standard models ship within 15–25 days after deposit. Customized models take 30–45 days. Which machine are you considering?` |
| 用户沉默 | `Just following up — are you still interested in the [machine name]? I can send more photos or a video if that helps.` |

---

## 8. 线索分级

### 8.1 分级标准

| 等级 | 标识 | 判断标准 | 跟进策略 |
|------|------|----------|----------|
| **A 级 — 高意向** | 🔴 | 已提供：国家 + 产能需求 + 具体机型 + 联系方式（WhatsApp/邮箱） | 立即报价，24 小时内 WhatsApp 跟进 |
| **B 级 — 中意向** | 🟡 | 已提供：2 项以上信息（如国家 + 机型），但无联系方式 | Messenger 内持续跟进，引导交换 WhatsApp |
| **C 级 — 低意向** | 🟢 | 仅发送 "hi" 或点了按钮后无进一步回复 | 自动回复 + 48 小时后 follow-up |
| **D 级 — 无效** | ⚫ | 同行套价/学生/无采购意图/机器人 | 标记排除，加入黑名单 |

### 8.2 评分卡（快速判断）

| 信号 | 分值 |
|------|------|
| 提供具体产能需求 | +3 |
| 提供目标国家 | +2 |
| 指定具体机型 | +2 |
| 主动提供 WhatsApp/邮箱 | +3 |
| 询问交期/付款方式 | +2 |
| 要求视频/参数表 | +1 |
| 只说 "hi" / "price" | +0 |
| 同行/竞品员工 | -5（直接排除） |

**评分阈值：** ≥ 8 分 = A 级；5–7 分 = B 级；≤ 4 分 = C 级

---

## 9. 无效线索过滤

### 9.1 常见无效线索类型

| 类型 | 识别特征 | 处理方式 |
|------|----------|----------|
| **同行套价** | 问多个不相关机型、追问成本价/出厂价细节 | 礼貌回复后标记排除 |
| **学生/研究者** | 问技术参数但无采购背景，用学术邮箱 | 提供公开资料，不进入报价流程 |
| **C 端消费者** | 问家用小型设备、个人使用 | 引导至零售渠道或礼貌告知仅做 B2B |
| **机器人/群发** | 消息含大量链接、明显模板化 | 直接忽略/拉黑 |
| **无预算概念** | 预算远低于设备成本（如 $500 买工业设备） | 说明最低配置和价格区间 |

### 9.2 过滤话术

**判断是否为真实采购商：**

```
EN: To make sure we recommend the right solution, could you share:
- What products are you processing?
- What's your current production scale?
- Are you purchasing for your own factory or for resale?

CN: 为确保为您推荐最合适的方案，能否分享：
- 您加工什么产品？
- 目前的生产规模如何？
- 是自用采购还是经销？
```

**预算明显不符时：**

```
EN: Our industrial [machine type] starts at [X] USD due to the stainless steel construction and industrial-grade components. For smaller-scale needs, we have [alternative model] at [Y] USD. Would you like details on either?

CN: 我们的工业级[设备类型]因 304 不锈钢材质和工业级部件，起步价为 [X] 美元。如需小规模生产，我们也有 [替代型号] 约 [Y] 美元。需要哪款的详细资料？
```

### 9.3 黑名单机制

- 在 CRM/表格中标记黑名单用户
- 使用 Facebook 自定义受众排除已标记的无效线索
- 定期（每周） review 无效线索来源，优化受众定向

---

## 10. Messenger 转 WhatsApp 的话术（含中英文示例）

### 10.1 为什么转 WhatsApp

| 原因 | 说明 |
|------|------|
| 沟通效率 | WhatsApp 支持语音、长视频、文件传输更稳定 |
| 客户习惯 | 东南亚/中东/非洲/拉美客户更习惯用 WhatsApp |
| 关系建立 | WhatsApp 个人号沟通更亲近，有利于建立信任 |
| 功能丰富 | 可发送大文件（参数表/合同/发票/视频） |
| 留存率 | WhatsApp 打开率远高于 Messenger |

### 10.2 转接时机

| 时机 | 信号 |
|------|------|
| 线索达到 B 级及以上 | 已交换 2 轮以上有效信息 |
| 客户主动询问更多细节 | 发送参数表/视频/案例 |
| 准备报价 | 需要发送正式报价单 |
| 客户提到 "WhatsApp" | 客户主动提及 |

### 10.3 转接话术

**场景 A — 自然引导（首选）：**

```
EN: I'd love to send you more detailed specs and videos. Is it okay if I add you on WhatsApp? It's easier to share files and photos there. My number: [+86 XXX XXXX XXXX]

Or you can add me directly: [wa.me/86XXXXXXXXXX]

CN: 我想给您发送更详细的参数和视频。方便加一下 WhatsApp 吗？那边传文件和图片更方便。我的号码：[+86 XXX XXXX XXXX]

或者直接加我：[wa.me/86XXXXXXXXXX]
```

**场景 B — 报价驱动：**

```
EN: I'm preparing your customized quote now. To send the official quotation with all specs and photos, may I have your WhatsApp number? I'll send it within the hour.

CN: 我正在为您准备定制报价。为了发送正式报价单（含全部参数和照片），可以留一下您的 WhatsApp 号码吗？我在一小时内发给您。
```

**场景 C — 客户已提 WhatsApp：**

```
EN: Sure! I'll add you on WhatsApp right now. Please accept my request — I'll send the [catalog/quote/video] immediately.

CN: 好的！我马上在 WhatsApp 上加您。请通过好友请求——我会立刻发送[目录/报价/视频]。
```

**场景 D — 委婉引导（适用于谨慎型客户）：**

```
EN: We usually communicate with our international clients on WhatsApp for faster response and easier file sharing. Here's my WhatsApp: [号码]. Feel free to add me — no pressure at all. 😊

CN: 我们通常和海外客户在 WhatsApp 上沟通，回复更快，发文件也方便。这是我的 WhatsApp：[号码]。方便的话可以加我——完全不勉强。😊
```

### 10.4 WhatsApp 通过后的首条消息

```
EN: Hi [Name], this is [Your Name] from [Company]. Thanks for connecting on WhatsApp! Here's the information I promised:
📄 Quotation: [文件]
📹 Demo video: [链接]
📋 Spec sheet: [文件]

Please take your time to review. Any questions, just message me here — I'm always available.

CN: [姓名] 您好，我是 [公司] 的 [您的名字]。感谢添加 WhatsApp！这是之前沟通的资料：
📄 报价单：[文件]
📹 演示视频：[链接]
📋 参数表：[文件]

您先看看，有任何问题随时在这里问我，我随时在线。
```

---

## 11. 跟进节奏（时间线）

### 11.1 A 级线索（高意向）跟进时间线

| 时间 | 动作 | 渠道 |
|------|------|------|
| **0–2 小时** | 首次回复，收集信息，确认需求 | Messenger |
| **2–4 小时** | 发送初步方案/报价区间 | Messenger / WhatsApp |
| **24 小时** | 发送正式报价单 + 参数表 + 视频 | WhatsApp |
| **48 小时** | Follow-up：是否收到报价？有任何疑问？ | WhatsApp |
| **72 小时** | 补充资料：客户案例 / 工厂实拍 / 认证文件 | WhatsApp |
| **第 5 天** | 主动询问：是否需要调整配置？有对比其他供应商吗？ | WhatsApp |
| **第 7 天** | 限时优惠/库存提醒（如有） | WhatsApp |
| **第 14 天** | 定期跟进：分享行业内容/新品 | WhatsApp |
| **第 30 天** | 月度回访：是否还有采购计划？ | WhatsApp / Email |

### 11.2 B 级线索（中意向）跟进时间线

| 时间 | 动作 | 渠道 |
|------|------|------|
| **0–2 小时** | 首次回复，引导提供更多需求信息 | Messenger |
| **24 小时** | 发送产品目录 + 热门机型推荐 | Messenger |
| **48 小时** | Follow-up：看了目录后有感兴趣的型号吗？ | Messenger |
| **第 5 天** | 发送客户案例 / 视频 | Messenger |
| **第 7 天** | 引导转 WhatsApp（提供 WhatsApp 号码） | Messenger |
| **第 14 天** | 月度内容推送 | Messenger |

### 11.3 C 级线索（低意向）跟进时间线

| 时间 | 动作 | 渠道 |
|------|------|------|
| **自动触发** | 发送欢迎语 + 快速回复选项 | Messenger |
| **30 分钟未回复** | 自动发送 follow-up："Still there? Happy to help." | Messenger |
| **48 小时** | 自动发送产品目录链接 | Messenger |
| **第 7 天** | 自动发送行业内容/案例 | Messenger |
| **第 30 天** | 不主动跟进，等待用户主动联系 | — |

### 11.4 跟进注意事项

- **不要每天发消息**：B2B 决策周期长（通常 2 周 – 3 个月），高频消息会引起反感
- **每次跟进有价值**：不要只问 "Are you still interested?"，要附带新信息（案例/视频/行业动态）
- **尊重时差**：根据客户所在时区安排发送时间
- **记录每次互动**：CRM 中记录沟通内容，避免重复发送相同资料

---

## 12. 常见坑

| 坑 | 表现 | 解决方案 |
|----|------|----------|
| **回复太慢** | 客户 2 小时内无人回复，流失率 > 60% | 设置自动回复 + 客服排班，确保 ≤ 2 小时首次回复 |
| **没有消息模板** | 用户进对话后看到空白窗口 | 广告上线前必须配置 Message Template |
| **受众太宽** | CPL 极低但全是无效线索 | 用兴趣 + 年龄 + 排除条件收紧受众 |
| **素材不 B2B** | 用生活化图片，不像工业设备供应商 | 用工厂实拍、设备运行视频、参数信息图 |
| **不问关键信息** | 聊了 20 句还不知道客户要什么 | 用结构化问题引导（机型/产能/国家/用途） |
| **不转 WhatsApp** | 一直在 Messenger 沟通，转化率低 | B 级以上线索主动引导转 WhatsApp |
| **不记录 CRM** | 线索分散在 Messenger，无法系统管理 | 每通对话录入 CRM/表格，标记等级和状态 |
| **预算分配不合理** | 全部预算给冷启动，不投再营销 | 冷启动 60% + 再营销 40%（待实测调整） |
| **忽视时差** | 在工作时间发消息但客户在睡觉 | 根据目标市场时区安排消息发送 |
| **不测试素材** | 一套素材跑到底，疲劳后成本飙升 | 每周至少测试 2–3 套新素材 |
| **不设置排除受众** | 同行/学生/无关人群消耗预算 | 排除同行品牌、B2B 平台兴趣、低年龄段 |

---

## 13. 可复制 SOP（Step-by-Step Checklist）

### Phase 1: 准备阶段（广告上线前）

- [ ] **明确目标产品**：选出 3–5 款主推机型（销量高 / 利润好 / 差异化强）
- [ ] **准备素材**：
  - [ ] 每款设备拍摄 15–30 秒运行视频（横版 + 竖版）
  - [ ] 工厂实拍照片（车间/质检/团队）
  - [ ] 参数表（PDF/图片格式）
  - [ ] 产品目录（PDF/链接）
  - [ ] 客户案例（2–3 个，含照片）
- [ ] **配置 Message Template**：
  - [ ] 设置欢迎语（中英双语）
  - [ ] 设置 3–4 个快速回复按钮
  - [ ] 配置关键词自动回复（price, quote, catalog, video）
- [ ] **准备话术库**：
  - [ ] 欢迎语
  - [ ] 报价引导话术
  - [ ] WhatsApp 转接话术
  - [ ] Follow-up 话术（24h / 48h / 7d）
  - [ ] 无效线索过滤话术
- [ ] **建立线索管理表格**（或 CRM）：
  - [ ] 字段：姓名 / 国家 / 机型 / 产能需求 / 联系方式 / 线索等级 / 状态 / 最后跟进时间
- [ ] **客服排班**：确保覆盖目标市场的主要在线时段

### Phase 2: 广告搭建

- [ ] **创建 Campaign**：
  - [ ] 目标选 Engagement 或 Leads
  - [ ] Conversion Location 选 Messaging Apps → Messenger
- [ ] **创建 Ad Set**：
  - [ ] 设置目标国家（1 个国家 = 1 个 Ad Set，便于分析）
  - [ ] 年龄 25–55
  - [ ] 兴趣定向（3–5 个相关兴趣，不要超过 10 个）
  - [ ] 排除：同行品牌、低年龄段、已成交客户
  - [ ] 版位：Feeds + Reels
  - [ ] 预算：$20–50/天（待实测）
- [ ] **创建 Ad**：
  - [ ] 上传素材（视频/图片）
  - [ ] 撰写 Primary Text（用模板 A/B/C）
  - [ ] 撰写 Headline（≤ 40 字符）
  - [ ] CTA 选 "Send Message"
  - [ ] 关联 Message Template
- [ ] **检查清单**：
  - [ ] Message Template 已配置
  - [ ] 自动回复流程已测试
  - [ ] 客服已准备就绪
  - [ ] 线索管理表格已建好

### Phase 3: 上线后管理（每日/每周）

**每日：**

- [ ] 检查广告数据（展示、点击、对话数、CPL）
- [ ] 回复所有新对话（≤ 2 小时响应）
- [ ] 新线索录入表格/CRM，标记等级
- [ ] A 级线索当天发送报价或方案
- [ ] 跟进昨天的高意向线索

**每周：**

- [ ] 分析 CPL 和线索质量，调整出价/预算
- [ ] 替换表现最差的 1–2 套素材
- [ ] 测试新素材（至少 2 套）
- [ ] Review 无效线索来源，优化排除条件
- [ ] 更新线索管理表格状态
- [ ] 向 B 级以上未转 WhatsApp 的线索发送转接邀请

**每月：**

- [ ] 汇总各国家/机型的 CPL 和转化率
- [ ] 优化受众定向（扩展/收缩）
- [ ] 更新话术库（基于实际对话中的有效话术）
- [ ] 评估是否需要切换到 Leads 优化目标
- [ ] 建立 Lookalike 受众（基于已成交/高意向线索）

### Phase 4: 优化迭代

- [ ] **素材优化**：保留 CTR > 1.5% 的素材，淘汰 < 0.8% 的
- [ ] **受众优化**：关闭 CPL > 目标值 2 倍的 Ad Set，扩展 CPL 最低的
- [ ] **话术优化**：记录哪些话术最有效，持续更新话术库
- [ ] **转 WhatsApp 率优化**：目标转接率 ≥ 30%（待实测）
- [ ] **线索到报价转化率**：目标 ≥ 40%（待实测）
- [ ] **报价到成交转化率**：目标 ≥ 10%（待实测，B2B 行业基准）

---

## 附录：关键指标基准参考

| 指标 | 基准范围 | 数据来源/备注 |
|------|----------|---------------|
| Messenger 广告 CTR | 1.0%–3.0% | WordStream 2024 B2B 行业平均 CTR 约 1.15% |
| 对话发起成本（CPL） | $3–$15/对话 | 待实测，取决于国家和行业竞争度 |
| 自动回复覆盖率 | ≥ 80% | 内部目标 |
| 首次响应时间 | ≤ 2 小时 | 行业最佳实践 |
| Messenger → WhatsApp 转接率 | ≥ 30% | 待实测 |
| 线索 → 报价转化率 | ≥ 40% | 待实测 |
| 报价 → 成交转化率 | ≥ 10% | B2B 机械行业经验值 |
| 完整转化周期 | 2 周 – 3 个月 | B2B 决策周期，视设备单价而定 |

> **注意：** 以上数据为公开来源和行业经验的参考范围，具体数据需在投放后实测积累。持续记录并更新本表。

---

## 附录：常用工具清单

| 工具 | 用途 | 备注 |
|------|------|------|
| Facebook Ads Manager | 广告创建与管理 | 必用 |
| Facebook Business Suite | 管理 Messenger 对话 | 必用 |
| ManyChat | 自动回复流程搭建 | 可选，复杂流程推荐 |
| Google Sheets / 飞书表格 | 线索管理 | 轻量方案 |
| HubSpot / Zoho CRM | 专业 CRM | 规模扩大后推荐 |
| WhatsApp Business | 深度客户沟通 | 必用 |
| Canva | 素材制作 | 可选 |
| CapCut / 剪映 | 视频剪辑 | 可选 |
