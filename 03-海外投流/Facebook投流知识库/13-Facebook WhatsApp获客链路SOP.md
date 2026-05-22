---
title: "Facebook Click to WhatsApp 获客链路 SOP"
aliases:
  - "FB WhatsApp 广告获客SOP"
  - "B2B WhatsApp Lead Generation SOP"
  - "Click to WhatsApp 广告全流程指南"
tags:
  - facebook-ads
  - whatsapp
  - click-to-whatsapp
  - b2b-lead-gen
  - food-machinery
  - export
  - sop
  - 投流SOP
type: sop
module: facebook-ads
platform: facebook
routing_target:
  - whatsapp_leads
  - click_to_whatsapp_ads
  - whatsapp_sales_followup
  - facebook_b2b_ads
quality_level: A
summary_cn: "Facebook Click to WhatsApp 广告全链路 SOP，覆盖账号准备、广告搭建、国家地域拆分、首句消息设计、自动回复、客服跟进、线索标签体系、报价流程、样品发送节奏、常见坑及可复制 Checklist，专为 B2B 食品加工机械出口设计。"
summary_en: "End-to-end SOP for Facebook Click-to-WhatsApp ads, covering account setup, ad creation, geo targeting, first-message design, auto-reply, sales follow-up, lead tagging, quoting, sample cadence, common pitfalls, and a reproducible checklist — tailored for B2B food processing machinery export."
related:
  - "[[10-Facebook投流路由入口]]"
  - "[[15-Facebook客服营销SOP]]"
  - "[[12-Facebook Messenger获客链路SOP]]"
retrieval_keywords:
  - "WhatsApp广告怎么投"
  - "WhatsApp询盘怎么跟进"
  - "Click to WhatsApp 广告教程"
  - "Facebook WhatsApp 获客"
  - "WhatsApp B2B 询盘跟进话术"
  - "食品机械 WhatsApp 开发客户"
  - "WhatsApp Business API 配置"
  - "WhatsApp 标签体系怎么建"
decision_value: "B2B 高客单价设备出口首选获客链路，WhatsApp 询盘转化率高，决策周期 2周-3个月需标准化跟进节奏"
created: 2026-05-22
updated: 2026-05-22
---

# Facebook Click to WhatsApp 获客链路 SOP

> **适用行业：** 食品加工机械出口（坚果烘烤线、油炸线、果蔬清洗线、肉类加工设备、包装线等）
> **目标客户：** 工厂老板、采购经理、经销商、中央厨房/食品厂决策人
> **有效客户特征：** 有明确产线需求 / 扩建 / 替换旧设备 / 寻找性价比替代方案

---

## 1. Click to WhatsApp 广告适合什么业务

| 维度 | 适合 | 不适合 |
|------|------|--------|
| 客单价 | ≥ ¥20,000，需要沟通确认配置 | < ¥5,000，可以直接下单的标品 |
| 决策链 | 需要技术沟通、定制方案、报价谈判 | 冲动消费、即时决策 |
| 客户类型 | B2B 工厂、经销商、工程商 | C 端个人消费者 |
| 销售周期 | 2 周 - 3 个月，多轮沟通 | 当天决策 |
| 沟通复杂度 | 需要确认产量、原料、厂房、电压、认证 | 标准品，参数固定 |
| 行业示例 | 食品加工线、包装机、干燥设备、清洗线 | 手机壳、服饰、日用品 |

**Click to WhatsApp 广告的核心价值：**

- 降低沟通门槛：客户无需填表单，直接 WhatsApp 对话
- 即时响应：客户点击即进入 WhatsApp 聊天，首响时间 < 5 分钟
- 信任建立：WhatsApp 是 B2B 海外客户最常用的即时通讯工具（中东、东南亚、非洲尤其普遍）
- 线索质量高于表单：愿意主动发起 WhatsApp 对话的客户，意向更强

---

## 2. WhatsApp Business 准备

### 2.1 账号选择：App vs API

| 维度 | WhatsApp Business App（免费版） | WhatsApp Business API（付费版） |
|------|-------------------------------|-------------------------------|
| 适用规模 | 日询盘 ≤ 50 条 | 日询盘 > 50 条，多客服协作 |
| 设备 | 1 部手机 + 最多 4 台关联电脑 | 不限设备，通过 BSP（如 Twilio、WATI、360dialog）接入 |
| 自动回复 | 简单的 away message、greeting | 支持复杂流程、变量替换、多语言 |
| 标签 | 最多 20 个标签 | 无限制，可通过 API 管理 |
| 群发 | 广播列表（需客户已存号码） | 模板消息（需审批），支持大规模 |
| 数据分析 | 无 | 有送达率、打开率、回复率 |
| 成本 | 免费 | 月费 $50-$500 + 会话费（按 BSP 不同） |
| 推荐场景 | 刚起步、日询盘少、1-2 个客服 | 团队作战、多语言、需要 CRM 对接 |

**建议：** 起步阶段用 App 即可，日询盘稳定超过 30 条后再升级到 API。

### 2.2 账号基础设置

```
✅ 企业名称：使用公司品牌名（与广告账户一致）
✅ 企业头像：Logo 或品牌图（400x400px，清晰无水印）
✅ 企业简介：一句话 + 关键词
   示例：Professional food processing machinery manufacturer since 2008. 
   Nut roasting · Frying · Drying · Packaging lines. Factory direct.
✅ 企业地址：实际工厂地址（增强信任）
✅ 营业时间：标注清楚时区（如 GMT+8 9:00-18:00）
✅ 企业邮箱：用公司域名邮箱，不用 Gmail/QQ
✅ 网站链接：独立站或阿里国际站
✅ 产品目录：上传 5-10 个核心产品线，含图片+简短描述
✅ 快捷回复：预设 10-15 条（见下方）
✅ 自动回复：设置 Greeting Message + Away Message
✅ 标签体系：建好预设标签（见第 8 节）
```

### 2.3 快捷回复（Quick Replies）预设清单

| 快捷回复关键词 | 内容（英文示例） | 使用场景 |
|----------------|-----------------|----------|
| `/catalog` | Hi! Here's our full product catalog. Please let me know which machine interests you, and I'll send detailed specs & pricing. 📎[附目录链接] | 客户询问产品 |
| `/video` | Here's a short video showing the [machine name] in action at our factory. Let me know if you'd like to see more! 🎥[附视频链接] | 客户想看设备运行 |
| `/quote` | To give you an accurate quote, I need a few details:\n1. What product are you processing?\n2. Required capacity (kg/h)?\n3. Any specific requirements?\nI'll prepare a quotation within 2 hours. | 客户询价 |
| `/cert` | We hold CE, ISO9001, and SGS certifications. Here are the certificates for your reference. 📎[附证书] | 客户问认证 |
| `/warranty` | All our machines come with a 12-month warranty plus lifetime technical support. We also provide spare parts at cost price. | 客户问质保 |
| `/shipping` | We ship via sea freight (FCL/LCL). Typical delivery: 15-25 days after deposit. We handle export customs. Which port is nearest to you? | 客户问物流 |
| `/factory` | Welcome to visit our factory! Here's a virtual tour: [链接]. We've been manufacturing food processing equipment since 2008. | 客户想了解工厂 |
| `/payment` | Our standard payment terms: 30% T/T deposit, 70% balance before shipment. We also accept L/C at sight for orders above $50,000. | 客户问付款方式 |
| `/case` | Here are some successful projects we've delivered in [country]: [案例链接]. Similar capacity to what you need. | 客户要看案例 |
| `/meeting` | Would you like to schedule a video call to discuss your project? I can arrange a technical meeting with our engineer. What time works for you? (GMT+8) | 需要深入沟通 |

### 2.4 自动回复设置

**Greeting Message（新客户首次联系时自动发送）：**

> 🇬🇧 英文：
> ```
> Hi! Thanks for reaching out to [Company Name]. 👋
> I'm [Name], your dedicated sales consultant.
> 
> To serve you better, could you please share:
> 1️⃣ What product are you processing?
> 2️⃣ What capacity do you need? (kg/hour)
> 3️⃣ Which country are you located in?
> 
> I'll prepare a customized solution for you within 2 hours! ⏰
> ```

> 🇸🇦 阿拉伯语：
> ```
> مرحباً! شكراً لتواصلك مع [اسم الشركة]. 👋
> أنا [الاسم]، مستشار المبيعات الخاص بك.
> 
>为了更好地为您服务، يرجى مشاركة:
> 1️⃣ ما المنتج الذي تقوم بمعالجته؟
> 2️⃣ ما السعة التي تحتاجها؟ (كجم/ساعة)
> 3️⃣ في أي دولة تقع؟
> 
> سأقوم بإعداد حل مخصص لك خلال ساعتين! ⏰
> ```

> 🇨🇳 中文（针对东南亚华人客户）：
> ```
> 您好！感谢联系 [公司名称]。👋
> 我是 [姓名]，您的专属销售顾问。
> 
> 为了给您提供准确方案，请告诉我：
> 1️⃣ 您加工什么产品？
> 2️⃣ 需要的产能是多少？（公斤/小时）
> 3️⃣ 您所在的国家？
> 
> 我会在 2 小时内为您准备定制方案！⏰
> ```

**Away Message（非工作时间自动回复）：**

> ```
> Thanks for your message! Our team is currently offline (working hours: 9:00-18:00 GMT+8).
> We'll get back to you within 1 hour when we're back online.
> 
> In the meantime, feel free to browse our catalog: [链接]
> Or watch our factory tour video: [链接]
> ```

---

## 3. 广告目标选择

在 Facebook Ads Manager 中创建广告时：

| 设置项 | 推荐选择 | 说明 |
|--------|---------|------|
| Campaign Objective | **Engagement** | Engagement 目标下有 "Messaging apps" 子选项 |
| Messaging App | **WhatsApp** | 选择 WhatsApp 作为转化目的地 |
| Conversion Location | **Messaging apps** | 不要选 Landing Page |
| Optimization | **Conversations** | 优化目标是"对话开始数" |
| Bid Strategy | **Lowest cost**（自动出价） | 初期不要手动设出价上限 |
| Budget | **日预算 $30-$100/广告组** | B2B 机械类 CPC 约 $0.5-$2，每条对话成本 $3-$15 |
| Campaign Structure | **CBO（广告系列预算优化）** | 让 Facebook 自动分配预算到表现最好的广告组 |

**注意：** 不要选择 "Traffic" 目标 — Traffic 优化的是链接点击，不优化对话转化。必须用 **Engagement → Messaging apps**。

---

## 4. 国家 / 语言 / 地域拆分策略

### 4.1 核心市场分级

| 级别 | 国家/地区 | 特点 | 预算占比 | 广告语言 |
|------|----------|------|---------|---------|
| Tier 1 | 🇸🇦 沙特、🇦🇪 阿联酋、🇰🇼 科威特、🇶🇦 卡塔尔 | 高购买力，中东食品加工业旺盛 | 40% | 英文 + 阿拉伯语 |
| Tier 2 | 🇮🇩 印尼、🇻🇳 越南、🇹🇭 泰国、🇲🇾 马来西亚 | 制造业增长快，性价比敏感 | 25% | 英文 |
| Tier 3 | 🇳🇬 尼日利亚、🇰🇪 肯尼亚、🇬🇭 加纳、🇪🇬 埃及 | 新兴市场，价格敏感但量大 | 15% | 英文 |
| Tier 4 | 🇲🇽 墨西哥、🇧🇷 巴西、🇨🇴 哥伦比亚 | 拉美食品加工需求增长 | 15% | 英文 + 西班牙语 |
| 测试 | 🇦🇺 澳洲、🇿🇦 南非、🇵🇰 巴基斯坦 | 测试市场反应 | 5% | 英文 |

### 4.2 广告组拆分建议

每个广告系列下，按以下维度拆分广告组（Ad Set）：

```
Campaign: Food Machinery - CTWA - Q2 2026
├── Ad Set 1: Middle East - Arabic Creative - $40/day
│   └── Ads: Arabic video + Arabic carousel
├── Ad Set 2: Middle East - English Creative - $20/day
│   └── Ads: English video + English image
├── Ad Set 3: Southeast Asia - $30/day
│   └── Ads: English video + factory tour image
├── Ad Set 4: Africa - $20/day
│   └── Ads: Price-focused video + case study image
├── Ad Set 5: Latin America - $20/day
│   └── Ads: Spanish/English video
└── Ad Set 6: Testing - $10/day
    └── Ads: New creative tests
```

### 4.3 地域排除规则

- 排除战乱 / 高风险地区（叙利亚、也门、利比亚等）
- 排除物流难以覆盖的国家（根据货代实际能力）
- 对高诈骗风险国家单独设广告组，密切监控线索质量

### 4.4 语言与素材匹配

| 目标市场 | 广告素材语言 | WhatsApp 首句语言 | 快捷回复语言 |
|---------|------------|-----------------|-------------|
| 中东 | 阿拉伯语为主 + 英文副标题 | 阿拉伯语 | 阿拉伯语 + 英文 |
| 东南亚 | 英文 | 英文 | 英文 + 中文（华人客户） |
| 非洲 | 英文 | 英文 | 英文 |
| 拉美 | 西班牙语 / 英文 | 西班牙语 / 英文 | 西班牙语 + 英文 |

---

## 5. WhatsApp 首句消息设计

### 5.1 客户点击广告后看到的预填消息（Pre-filled Message）

在广告设置中，可以自定义客户点击后 WhatsApp 中预填的消息。这是**引导客户开口**的关键。

| 场景 | 预填消息（英文） | 设计逻辑 |
|------|----------------|---------|
| 通用 | `Hi, I'm interested in your food processing machines. Can you send me a catalog and pricing?` | 低门槛，引导客户直接要目录 |
| 坚果烘烤线 | `Hi, I need a nut roasting machine. Capacity: about 100kg/h. Can you quote me?` | 带具体参数，方便销售直接报价 |
| 油炸线 | `Hello, we're looking for a continuous frying line for potato chips. What's your lead time?` | 带产品类型，筛选精准客户 |
| 定制需求 | `Hi, I have a custom food processing project. Can we discuss the details?` | 适合整线定制需求 |

### 5.2 销售回复的第一条消息（人工或自动）

> 🇬🇧 英文：
> ```
> Hi [Name]! Great to hear from you. 😊
> 
> I see you're interested in our [machine type]. We've helped 200+ factories in [client's region] set up their production lines.
> 
> Quick question — what's your target daily output? This helps me recommend the right model for you.
> ```

> 🇸🇦 阿拉伯语：
> ```
> مرحباً [الاسم]! سعداء بتواصلكم معنا. 😊
> 
> أرى أنكم مهتمون بـ [نوع الآلة]. لقد ساعدنا أكثر من 200 مصنع في [منطقة العميل] في إعداد خطوط الإنتاج.
> 
> سؤال سريع — ما هو إنتاجكم اليومي المستهدف؟ هذا يساعدني في التوصية بالطراز المناسب لكم.
> ```

> 🇨🇳 中文：
> ```
> [姓名] 您好！很高兴收到您的咨询。😊
> 
> 看到您对我们的 [设备类型] 感兴趣。我们已帮助 200 多家 [客户地区] 的工厂建立了产线。
> 
> 请问您期望的日产量是多少？这样我可以为您推荐最合适的型号。
> ```

### 5.3 首句消息设计原则

1. **3 秒原则**：客户打开 WhatsApp 后 3 秒内必须看到消息（用自动回复保证）
2. **提问引导**：用 1-2 个具体问题引导客户回复，不要只说"你好"
3. **社会证明**：一句话建立信任（"服务过 200+ 工厂" / "在沙特有 15 个案例"）
4. **不要一上来就报价**：先了解需求，再报价
5. **控制长度**：首条消息不超过 5 行，手机一屏能看完

---

## 6. 自动回复设置

### 6.1 完整自动回复流程图

```
客户点击广告 → WhatsApp 打开（带预填消息）
                    ↓
        客户点击"发送"（或修改后发送）
                    ↓
    ┌─── 工作时间内 ───┐    ┌─── 非工作时间 ───┐
    │  Greeting Message  │    │   Away Message    │
    │  (自动发送，<5秒)   │    │  (自动发送)        │
    └────────┬─────────┘    └────────┬──────────┘
             │                       │
    销售在 5 分钟内人工回复      客户看到 Away Message
             │              + 目录链接 + 视频链接
    询问需求 → 发送资料 → 跟进
```

### 6.2 关键词自动回复（App 限制，API 可实现）

使用 API 时可以设置关键词触发自动回复：

| 客户发送关键词 | 自动回复内容 |
|---------------|-------------|
| price / 价格 / سعر | 发送 `/quote` 快捷回复 |
| video / 视频 / فيديو | 发送工厂视频链接 |
| catalog / 目录 / كتالوج | 发送产品目录 PDF 链接 |
| certificate / CE / شهادة | 发送 CE/ISO 证书 |
| shipping / 运费 | 发送物流说明 |

**WhatsApp Business App 的限制：** App 版不支持关键词自动回复，只能用 Greeting / Away Message。如需关键词触发，必须用 API + BSP（如 WATI、Twilio、360dialog）。

---

## 7. 客服跟进流程

### 7.1 跟进时间线

| 阶段 | 时间点 | 动作 | 目标 |
|------|--------|------|------|
| 首响 | 客户发消息后 < 5 分钟 | 人工回复 Greeting + 询问需求 | 建立连接，防止客户流失 |
| 需求确认 | 首响后 10-30 分钟 | 追问 3-5 个关键问题（产品、产能、预算、时间） | 判断意向级别 |
| 资料发送 | 需求确认后 1-2 小时 | 发送匹配的机型资料、视频、案例 | 建立专业形象 |
| 首次报价 | 需求确认后 2-4 小时 | 发送初步报价（含 FOB 价格） | 推进决策 |
| 第 1 次跟进 | 报价后 24 小时 | "Have you had a chance to review the quotation? Any questions?" | 确认是否收到 |
| 第 2 次跟进 | 报价后 3 天 | 发送相关案例 / 视频 / 客户评价 | 增强信任 |
| 第 3 次跟进 | 报价后 7 天 | 发送限时优惠 / 库存提醒 / 新方案 | 制造紧迫感 |
| 第 4 次跟进 | 报价后 14 天 | 提供替代方案（降级机型 / 分期付款） | 降低决策门槛 |
| 长期培育 | 报价后 30 天+ | 每月发送 1 次行业资讯 / 新品 / 案例 | 保持联系，等待需求激活 |

### 7.2 需求确认问卷（复制即用）

```
To prepare an accurate quotation, please confirm:

1. What product are you processing? (e.g., peanuts, cashews, potato chips)
2. Required capacity? (___ kg/hour or ___ tons/day)
3. Raw material form? (raw / pre-roasted / frozen / etc.)
4. Final product requirements? (packaged / bulk / specific moisture level)
5. Factory space available? (length × width × height, if possible)
6. Voltage & frequency? (e.g., 380V/50Hz / 220V/60Hz)
7. Target budget range? (optional, helps me recommend the right model)
8. When do you plan to start production?
```

### 7.3 意向级别判定

| 级别 | 特征 | 跟进频率 | 优先级 |
|------|------|---------|--------|
| 🔴 Hot | 回复快、问具体参数、问交期、问付款方式 | 每天跟进 | 最高 |
| 🟡 Warm | 回复慢但认真、要了目录和报价、在比较供应商 | 每 2-3 天 | 中 |
| 🟢 Cold | 只发了预填消息、没回复后续问题、已读不回 | 每周 1 次 | 低 |
| ⚪ Nurture | 暂时无需求但收藏了资料、加了联系方式 | 每月 1 次 | 培育 |

---

## 8. 线索标签体系

### 8.1 标签分类

在 WhatsApp Business 中为每个联系人打标签，建议最多分 4 层：

| 标签前缀 | 含义 | 示例标签 |
|---------|------|---------|
| `A-` | 意向级别 | `A-Hot`、`A-Warm`、`A-Cold`、`A-Nurture` |
| `C-` | 国家/地区 | `C-Saudi`、`C-Indonesia`、`C-Nigeria` |
| `P-` | 产品兴趣 | `P-Roasting`、`P-Frying`、`P-Drying`、`P-Packaging` |
| `S-` | 跟进阶段 | `S-Quoted`、`S-Negotiating`、`S-Sample`、`S-Closed`、`S-Lost` |
| `T-` | 时间标记 | `T-May2026`（便于按月份筛选） |
| `Src-` | 线索来源 | `Src-FB-Ad`、`Src-Referral`、`Src-Website` |

### 8.2 标签组合示例

```
客户 Ahmed（沙特，询价坚果烘烤线，已报价，Hot）：
→ A-Hot / C-Saudi / P-Roasting / S-Quoted / T-May2026 / Src-FB-Ad

客户 Budi（印尼，要了目录但没回复，Cold）：
→ A-Cold / C-Indonesia / P-General / S-Nurture / T-May2026 / Src-FB-Ad

客户 Maria（墨西哥，在谈判价格，Warm）：
→ A-Warm / C-Mexico / P-Frying / S-Negotiating / T-May2026 / Src-FB-Ad
```

### 8.3 标签管理规则

1. **每次对话后更新**：跟进完一个客户，立即更新标签
2. **不要超过 6 个标签/人**：保持精简，4 层前缀标签通常够用
3. **定期清理**：每月底清理 `S-Lost` 超过 60 天的标签
4. **颜色编码**：Hot=红色、Warm=黄色、Cold=绿色、Nurture=灰色
5. **每周导出**：从 WhatsApp 导出台账，同步到 CRM 或 Excel

---

## 9. 报价流程

### 9.1 报价步骤

```
Step 1: 收集需求（第 7.2 节问卷）
    ↓
Step 2: 匹配机型（销售 + 技术确认）
    ↓
Step 3: 准备报价单（PDF 格式，含以下内容）
    ├── 公司抬头 + Logo
    ├── 客户信息
    ├── 设备型号 + 技术参数
    ├── FOB / CIF 价格（明确贸易术语）
    ├── 交货期（Lead Time）
    ├── 付款方式
    ├── 质保条款
    ├── 包含 / 不包含的项目
    └── 报价有效期（通常 15-30 天）
    ↓
Step 4: WhatsApp 发送报价 PDF + 文字摘要
    ↓
Step 5: 24 小时内跟进确认
```

### 9.2 WhatsApp 发送报价的话术

> ```
> Hi [Name], here's your customized quotation for the [Machine Model]:
> 
> 📄 Quotation: [PDF 附件]
> 
> Key highlights:
> ✅ Price: $XX,XXX FOB [Port]
> ✅ Capacity: XXX kg/h
> ✅ Lead time: XX days after deposit
> ✅ Warranty: 12 months + lifetime support
> 
> This quotation is valid for 15 days. If you have any questions, I'm here to help! 😊
> ```

### 9.3 报价注意事项

| 事项 | 说明 |
|------|------|
| 贸易术语 | 优先报 FOB 价格，CIF 需额外确认目的港 |
| 价格区间 | 给 1-2 个配置选项（标准版 / 高配版），不要只给一个价格 |
| 货币 | 统一用 USD，避免汇率争议 |
| 有效期 | 明确标注报价有效期（15-30 天），制造紧迫感 |
| 不含项 | 明确列出不包含的项目（安装指导另算、当地清关关税等） |
| 安装 | 注明是否包含安装指导（远程视频 / 现场工程师） |

---

## 10. 样品 / 目录 / 视频发送节奏

> **注意：** 食品机械通常不发实体样品（设备太大），但可以发"样品级"的验证资料。

### 10.1 资料发送节奏表

| 阶段 | 时间点 | 发送内容 | 格式 | 目的 |
|------|--------|---------|------|------|
| 首次接触 | 需求确认后 1 小时内 | 产品目录（精简版） | PDF（< 10MB） | 建立产品认知 |
| 深度沟通 | 需求确认后 2 小时内 | 匹配机型的技术参数表 | PDF + 文字摘要 | 专业度展示 |
| 报价前 | 报价同时 | 工厂实拍视频 / 设备运行视频 | YouTube 链接或 < 16MB 视频 | 真实感建立信任 |
| 报价后 3 天 | 第 2 次跟进时 | 同类客户案例（Before/After） | 图片 + 文字 | 社会证明 |
| 谈判阶段 | 价格谈判时 | 生产线布局图 / 3D 效果图 | PDF / 图片 | 定制化服务展示 |
| 成交前 | 付款前 | 出厂检验视频 / 装箱视频 | 短视频 | 消除最后疑虑 |
| 成交后 | 发货后 | 物流跟踪 + 安装指导视频 | 链接 + PDF | 售后体验 |

### 10.2 实体样品替代方案

对于无法发实物的食品机械，可用以下方式替代：

| 替代方式 | 适用场景 | 成本 |
|---------|---------|------|
| 免费寄加工样品 | 客户提供原料，工厂加工后寄回成品 | 运费 $50-$200 |
| 视频验机 | 实时视频连线，展示设备运行 | 免费 |
| 工厂 VR 漫游 | 360° 工厂全景 | 一次性制作成本 ¥5,000-$10,000 |
| 零部件样品 | 发送关键零部件（如刀片、模具） | 运费 + 零件成本 $100-$500 |
| 客户参观工厂 | 邀请到厂实地考察 | 客户自理，我方接待 |

### 10.3 文件发送规范

- PDF 文件控制在 **10MB 以内**（WhatsApp 限制文档 100MB，但大文件下载慢）
- 视频控制在 **16MB 以内**（直接发送），超过的用 YouTube/Google Drive 链接
- 图片用 **原图质量**，不要压缩到看不清细节
- 所有文件命名规范：`CompanyName_MachineName_Date.pdf`
- 目录/报价等正式文件用 **公司域名邮箱** 发送，WhatsApp 只发提醒

---

## 11. 常见坑

### 11.1 广告层面

| 坑 | 表现 | 解法 |
|----|------|------|
| 用 Traffic 目标而不是 Engagement | 点击多、对话少，线索极差 | 必须选 Engagement → Messaging apps |
| 受众太窄 | 日预算花不出去 | B2B 机械受众本来就窄，不要叠加过多兴趣词，用 Broad + 地域控制 |
| 受众太宽 | 来一堆 C 端咨询 | 用排除词排除"consumer"、"home use"、"small"等 |
| 素材太 C 端 | 吸引个人买家而非工厂老板 | 素材中突出"factory"、"production line"、"industrial grade" |
| 没有 A/B 测试 | 不知道哪个素材好 | 每个广告组至少 2 个素材，跑 3-5 天后关停差的 |
| 预算分配不均 | 好广告组钱不够，差的钱花不完 | 用 CBO，让系统自动分配 |

### 11.2 WhatsApp 层面

| 坑 | 表现 | 解法 |
|----|------|------|
| 首响时间 > 30 分钟 | 客户已找别的供应商 | 设自动回复 + 手机通知全开 + 排班表 |
| 不追问需求直接报价 | 报价后客户消失 | 先了解需求再报价 |
| 用个人 WhatsApp | 显得不专业，无法打标签 | 必须用 WhatsApp Business |
| 群发垃圾消息 | 账号被封 | 不要未经同意就群发，WhatsApp 对滥用行为处罚极严 |
| 不及时更新标签 | 线索混乱，无法跟进 | 每次对话后立即更新标签 |
| 不在 WhatsApp 发正式报价 | 客户不重视 | WhatsApp 发摘要，正式报价走邮件 |
| 用新号大量加人 | 被封号 | 新号先养号 2-4 周，每天主动联系不超过 20 人 |

### 11.3 销售层面

| 坑 | 表现 | 解法 |
|------|------|------|
| 只回英文，不学基础阿拉伯语 | 中东客户感受差 | 至少学会"你好"、"谢谢"等基础用语 |
| 报价后不跟进 | 客户以为你不重视 | 严格执行第 7.1 节跟进时间线 |
| 没有 CRM 记录 | 换人就丢失线索 | WhatsApp 标签 + Excel/CRM 双备份 |
| 不同时区意识 | 凌晨发消息客户看不到 | 注意客户时区，选择当地工作时间联系 |

---

## 12. 可复制 SOP（Step-by-Step Checklist）

### Phase 1: 广告上线前准备（Day -7 to Day 0）

- [ ] **注册/配置 WhatsApp Business 账号**
  - [ ] 企业名、头像、简介、地址、邮箱、网站
  - [ ] 设置营业时间（标注时区）
  - [ ] 上传产品目录（5-10 个核心产品）
  - [ ] 设置 Greeting Message（多语言版本）
  - [ ] 设置 Away Message
  - [ ] 预设 10-15 条快捷回复
  - [ ] 建立标签体系（至少 6 个预设标签）
  - [ ] 测试：用自己的另一个号码发消息，确认自动回复正常

- [ ] **准备广告素材**
  - [ ] 视频素材 2-3 条（工厂实拍 / 设备运行 / 案例展示）
  - [ ] 图片素材 3-5 张（设备特写 / 生产线全景 / 认证证书）
  - [ ] 文案 3-5 条（英文 + 阿拉伯语，视目标市场）
  - [ ] 确认预填消息（Pre-filled Message）

- [ ] **准备资料包**
  - [ ] 产品目录 PDF（精简版 < 10MB）
  - [ ] 技术参数表模板
  - [ ] 报价单模板（PDF，含公司抬头）
  - [ ] CE/ISO 证书
  - [ ] 工厂视频 / 设备运行视频（< 16MB 或 YouTube 链接）
  - [ ] 客户案例集（Before/After）

- [ ] **团队分工**
  - [ ] 确定客服人员（至少 1 人负责首响）
  - [ ] 确定报价人员（销售 + 技术配合）
  - [ ] 制定排班表（覆盖目标市场工作时间）
  - [ ] 建立 WhatsApp 群组用于内部同步

### Phase 2: 广告搭建与上线（Day 0）

- [ ] **创建广告系列**
  - [ ] Objective: Engagement
  - [ ] Messaging App: WhatsApp
  - [ ] 连接 WhatsApp Business 账号
  - [ ] 设置 CBO（广告系列预算优化）
  - [ ] 设置总日预算

- [ ] **创建广告组**
  - [ ] 按国家/地区拆分（至少 3 个广告组）
  - [ ] 设置年龄范围（建议 25-60，排除学生）
  - [ ] 设置语言（与素材匹配）
  - [ ] 排除高风险/无关地区
  - [ ] 设置受众兴趣（Broad 为主，不要过窄）
  - [ ] 设置各广告组日预算

- [ ] **创建广告**
  - [ ] 每个广告组至少 2 个素材
  - [ ] 设置预填消息（与广告素材主题匹配）
  - [ ] 检查所有链接是否正常
  - [ ] 提交审核

- [ ] **上线后监控设置**
  - [ ] 设置 Facebook 广告通知（每日预算消耗预警）
  - [ ] 设置 WhatsApp 通知（新消息即时推送）
  - [ ] 建立每日数据记录表

### Phase 3: 日常运营（Day 1+）

- [ ] **每日必做（客服人员）**
  - [ ] 09:00 GMT+8：检查夜间 WhatsApp 消息，30 分钟内回复
  - [ ] 跟进当日 Hot/Warm 线索
  - [ ] 更新所有活跃联系人的标签
  - [ ] 发送今日应发的报价 / 资料 / 跟进消息
  - [ ] 记录新线索数量、质量、回复率到数据表

- [ ] **每日必做（广告优化师）**
  - [ ] 检查广告消耗是否正常
  - [ ] 检查每条对话成本（CPM / CPC / Cost per Conversation）
  - [ ] 关停表现差的素材（跑满 3 天后决定）
  - [ ] 测试新素材（每 3-5 天上一组新素材）
  - [ ] 调整预算分配（向表现好的广告组倾斜）

- [ ] **每周必做（销售主管）**
  - [ ] 周一定价：审核本周报价单
  - [ ] 周三跟进：检查 Hot 线索是否按期跟进
  - [ ] 周五复盘：导出 WhatsApp 台账，分析线索转化漏斗
    - 广告点击 → WhatsApp 对话开始数 → 有效对话数 → 报价数 → 成交数
  - [ ] 更新素材计划（下周上什么新素材）

### Phase 4: 数据复盘与优化（每周 / 每月）

- [ ] **每周复盘指标**
  - 广告点击数 / 点击率
  - WhatsApp 对话开始数
  - 有效对话率（回复 ≥ 2 次的对话占比）
  - 报价数
  - 成交数 / 成交金额
  - 单条对话成本（Cost per Conversation）
  - 单条有效线索成本（Cost per Qualified Lead）
  - ROI = 成交额 / 广告花费

- [ ] **优化决策矩阵**

| 指标 | 健康范围 | 超出范围的行动 |
|------|---------|---------------|
| 单条对话成本 | $3-$15 | > $20：检查受众或素材 |
| 有效对话率 | > 40% | < 30%：优化预填消息或首响话术 |
| 报价转化率 | > 25%（对话→报价） | < 20%：加强需求确认流程 |
| 成交转化率 | > 5%（对话→成交） | < 3%：检查报价竞争力或跟进频率 |
| ROI | > 3x | < 2x：检查全链路，从素材到跟进 |

---

> **最后提醒：** Click to WhatsApp 广告只是获客入口。真正的成交取决于 **首响速度 × 需求理解深度 × 跟进执行力**。广告带来的是机会，WhatsApp 里聊出来的才是订单。
