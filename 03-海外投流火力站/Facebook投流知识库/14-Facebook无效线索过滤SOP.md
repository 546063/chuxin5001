---
title: Facebook无效线索过滤SOP
aliases:
  - 无效线索过滤指南
  - Facebook Leads Filtering SOP
  - B2B Lead Qualification Checklist
tags:
  - facebook-ads
  - lead-qualification
  - b2b-filtering
  - food-machinery
  - sop
  - lead-scoring
  - 无效线索
  - 线索评分
  - 客服跟进
type: SOP
module: facebook-lead-filtering
platform: facebook
routing_target:
  - invalid_lead_filtering
  - facebook_lead_ads
  - facebook_sales_followup
  - b2b_lead_generation
quality_level: A
summary_cn: B2B食品加工机械出海Facebook广告无效线索过滤全流程SOP，覆盖无效线索分类、国家/地区排除、预算不匹配识别、采购身份甄别、机器人/同行识别、表单字段设计、客服二次筛选话术、A/B/C/D四级线索评分模型、分层跟进策略，含可复制的step-by-step checklist。
summary_en: Comprehensive SOP for filtering invalid Facebook Ads leads for B2B food processing machinery export. Covers lead classification, geo-exclusion, budget mismatch detection, identity verification, bot/competitor filtering, form design, follow-up scripts, A/B/C/D lead scoring model, and tiered follow-up strategies with a ready-to-use checklist.
related:
  - "[[03-海外投流火力站/Facebook投流知识库/10-Facebook投流路由入口]]"
  - "[[06-Facebook线索广告与落地页]]"
  - "[[15-Facebook客服营销SOP]]"
  - "[[03-海外投流火力站/Facebook投流知识库/17-Facebook投流复盘指标体系]]"
retrieval_keywords:
  - 无效线索怎么过滤
  - 线索质量差怎么办
  - 垃圾询盘怎么处理
  - 线索评分模型
  - B2B线索甄别
  - Facebook lead qualification
  - 食品机械无效询盘
  - how to filter invalid leads facebook
decision_value: 过滤无效线索可直接降低 30-50% 无效跟进时间，A/B/C/D 四级评分模型确保高价值线索优先处理
created: 2026-05-22
updated: 2026-05-22
---

# Facebook无效线索过滤SOP — B2B食品加工机械出海

## 一、适用场景

- **行业**：食品加工机械（杀菌釜、烟熏炉、真空包装机、斩拌机、绞肉机、连续油炸机、蒸煮线、清洗线等）
- **客单价**：单台设备 ¥15,000 ~ ¥500,000+，整线方案 ¥500,000 ~ ¥3,000,000+
- **广告平台**：Facebook / Instagram Leads Ads + Messenger / WhatsApp 引流
- **目标客户**：食品工厂老板、采购经理、经销商/代理商、中央厨房负责人、餐饮集团采购

---

## 二、无效线索类型（完整分类）

| 编号 | 类型 | 典型特征 | 占比预估 | 处理方式 |
|------|------|----------|----------|----------|
| T01 | 国家/地区不匹配 | 来自非目标市场或低购买力国家 | 15-30% | 广告层排除 + 表单层拦截 |
| T02 | 预算严重不匹配 | 客户预算远低于设备底价（如预算 $500 想买 $20,000 设备） | 10-20% | 表单前置预算字段 + 话术筛除 |
| T03 | 采购身份不清 | 个人用户/家庭用户，非 B2B 决策者 | 10-25% | 表单字段过滤 + 客服二次确认 |
| T04 | 只问价格不回复 | 提交"price?"后不再回应任何跟进 | 5-15% | 自动报价 + 定时放弃 |
| T05 | 同行/竞争对手 | 同行套取价格、产品参数、客户案例 | 3-8% | 话术试探 + 行为模式识别 |
| T06 | 学生/调研/论文 | 明确说明用于学术研究或学校项目 | 2-5% | 快速确认后归档，不浪费销售精力 |
| T07 | 机器人/垃圾询盘 | 内容为乱码、纯链接、重复提交 | 5-10% | 表单验证 + 自动拦截 |
| T08 | 虚假联系信息 | 邮箱格式错误、电话打不通、WhatsApp 空号 | 5-15% | 表单验证 + 首次触达测试 |
| T09 | 需求不匹配 | 需要的设备类型我们不做，或需要二手/翻新设备 | 5-10% | 快速确认后转介绍或归档 |
| T10 | 时间线过长 | 明确说"1-2年后再采购"或"还在规划阶段" | 5-10% | 进入培育池，降低跟进优先级 |

> **核心认知**：B2B食品机械的无效线索率通常在 **40-70%** 之间，这是正常范围。关键不是消灭所有无效线索，而是用系统化的方式 **快速识别 + 低成本筛除 + 聚焦优质线索**。

---

## 三、国家/地区无效线索识别与排除策略

### 3.1 高质量国家/地区（保留并加大投放）

| 优先级 | 国家/地区 | 说明 |
|--------|-----------|------|
| Tier 1 | 美国、加拿大、澳大利亚、新西兰、英国、德国、法国 | 购买力强、食品工业成熟、对新供应商接受度高 |
| Tier 2 | 东南亚（泰国、越南、印尼、马来西亚、菲律宾）、中东（沙特、阿联酋）、日韩 | 食品加工业快速增长、中国设备性价比高 |
| Tier 3 | 俄罗斯、巴西、墨西哥、南非、埃及、尼日利亚 | 市场大但支付/物流有挑战，需单独评估 |

### 3.2 低质量国家/地区（建议排除）

| 排除等级 | 国家/地区 | 排除原因 |
|----------|-----------|----------|
| 必排除 | 印度、巴基斯坦、孟加拉国 | 询价量大但成单率极低（价格极度敏感，偏好印度本土/超低价供应商） |
| 必排除 | 非洲大部分国家（除南非、埃及、尼日利亚外） | 购买力不足、外汇管制、物流成本过高 |
| 必排除 | 阿根廷、委内瑞拉、土耳其 | 汇率波动大、外汇管制严格 |
| 建议排除 | 尼泊尔、斯里兰卡、柬埔寨、老挝、缅甸 | 市场规模太小、成单周期极长 |
| 建议排除 | 中国 | 国内市场竞争逻辑不同，非出海目标市场 |

### 3.3 广告层排除操作

1. 进入 Facebook Ads Manager → 广告组设置
2. **Locations（位置）** → 选择 "Include" 添加目标国家
3. 或使用 "Exclude" 排除上述低质量国家
4. 建议采用 **白名单策略**（只投放目标国家）而非黑名单策略

### 3.4 表单层二次过滤

即使广告层已排除，仍可能通过 Messenger/WhatsApp 自然流量进入，需在表单或自动回复中加入：
- "Which country is your business located in?"（下拉选择国家）
- 如果选择非目标国家，自动回复引导至分销商页面或友好拒绝

---

## 四、预算不匹配识别

### 4.1 典型预算不匹配场景

| 场景 | 客户表述 | 实际情况 | 判断依据 |
|------|----------|----------|----------|
| 远低于底价 | "I need a full processing line, budget $2,000" | 整线至少 $50,000+ | 设备底价差距 > 10 倍 |
| 混淆设备概念 | "How much for a sausage machine?" | 实际是家庭用迷你灌肠机 vs 工业级连续灌肠线 | 需求描述模糊 |
| 只关心单价 | "What is the cheapest machine you have?" | 通常不需要工业级设备 | 关注点仅为最低价格 |
| 预算完全缺失 | 问 "price?" 但拒绝提供任何预算范围 | 可能没有实际采购计划 | 无法进入报价流程 |

### 4.2 表单前置预算字段设计

在表单中加入 **"What is your estimated budget for this equipment?"** 字段：

| 选项 | 含义 |
|------|------|
| Under $5,000 | 几乎确定是个人用户或小型设备，归档处理 |
| $5,000 - $15,000 | 可能为小型单机设备，C级线索 |
| $15,000 - $50,000 | 标准单机或小产线，B级线索 |
| $50,000 - $150,000 | 中型产线/多台设备，A级线索 |
| $150,000+ | 大型整线方案，A+级线索 |
| Not sure / Need consultation | 需要进一步沟通，暂归为C级 |

### 4.3 客服二次确认话术

当客户预算明显不匹配时：

```
Hi [Name], thank you for your interest in our [equipment name].

Based on your requirements, I'd like to let you know that our industrial-grade
[equipment] starts from [price range]. This is designed for commercial/industrial
production with capacity of [X kg/hour].

Could you share more about your production needs? This will help me recommend
the most suitable solution for your budget.
```

---

## 五、采购身份不清识别（个人 vs 经销商 vs 工厂）

### 5.1 身份分类与价值判断

| 身份 | 特征 | 成单概率 | 客单价 | 跟进优先级 |
|------|------|----------|--------|------------|
| 食品工厂老板/决策者 | 有明确产线需求、了解工艺、有预算 | 高 | 高 | P0 - 最高 |
| 工厂采购经理 | 有明确需求但需内部审批，流程较长 | 中高 | 高 | P1 |
| 经销商/代理商 | 关注利润空间、区域保护、售后支持 | 高（可重复采购） | 中高 | P0 - P1 |
| 中央厨房/餐饮集团 | 标准化需求、关注效率和合规 | 中 | 中 | P1 |
| 个人用户/家庭 | 需求为家用小型设备，无 B2B 采购特征 | 极低 | 极低 | 放弃或转电商 |
| 初创/规划中 | 有想法但无工厂/场地/资金 | 低（周期极长） | 不确定 | 培育池 |

### 5.2 表单身份识别字段

在表单中加入 **"What best describes your business?"** 字段：

```
[ ] Food processing factory / manufacturer
[ ] Trading company / Distributor / Agent
[ ] Restaurant / Central kitchen / Catering
[ ] Startup / Planning stage
[ ] Personal / Home use
[ ] Research / Education
[ ] Other (please specify)
```

### 5.3 客服身份确认话术

```
Hi [Name], to better serve you, may I ask a few quick questions?

1. What type of products do you plan to produce?
2. What is your expected daily/hourly production capacity?
3. Do you already have a production facility, or are you planning to build one?
```

根据回复判断：
- 能清晰回答以上3个问题 → **工厂/真实需求**
- 回答模糊或说"还在考虑" → **规划中/培育池**
- 说"给家里买"或"自己做小生意" → **个人用户，转介绍或放弃**

---

## 六、只问价格不回复的线索处理

### 6.1 识别特征

- 表单只填了基本信息，附加信息仅写 "price" 或 "how much"
- Messenger/WhatsApp 发来 "price?" 后不再回复任何消息
- 对 "What capacity do you need?" "What product are you processing?" 等问题无回应

### 6.2 处理流程

```
Day 0（收到询盘）→ 自动回复：发送产品目录 + 价格区间 + 询问需求
Day 1 → 人工跟进：发送具体设备推荐 + 邀请视频通话/WhatsApp语音
Day 3 → 第二次跟进：分享客户案例/视频，再次询问具体需求
Day 7 → 第三次跟进：限时优惠/样品政策（如有），制造紧迫感
Day 14 → 标记为 "价格敏感-未回复"，移入培育池，每月发送一次产品更新
Day 30 → 如仍无回复，标记为 "冷线索"，停止主动跟进
```

### 6.3 自动回复模板（应对只问价格）

```
Hi [Name], thanks for reaching out!

Our [Equipment Name] price range is $[X] - $[Y] depending on:
- Production capacity (kg/hour)
- Material grade (SS304 / SS316)
- Customization requirements

To give you an accurate quote, could you tell me:
1. What product are you processing?
2. What output capacity do you need per hour/day?
3. What is your target budget range?

I'll prepare a detailed quotation within 24 hours once I have this info.

Here's our product catalog for reference: [link]
```

---

## 七、同行/竞争对手/学生/个人用户识别

### 7.1 同行/竞争对手识别

| 信号 | 说明 |
|------|------|
| 索要详细技术参数图纸 | 正常客户一般不会在第一轮就要CAD图纸或详细结构图 |
| 询问供应商/原材料来源 | 问"你们用的压缩机是什么牌子""电机哪家供的" |
| 要求看工厂内部照片/视频 | 对生产线细节表现出异常兴趣 |
| 使用行业内部术语 | 使用非终端用户常用的专业术语 |
| 邮箱域名异常 | 使用其他机械公司域名的邮箱 |
| WhatsApp 头像为公司Logo | 头像是同行公司Logo或机械产品图 |

**应对话术**：
```
Hi [Name], we'd be happy to share detailed specifications.
Could you tell me about your company and the project this is for?
This helps us prepare the most relevant proposal for your needs.
```

### 7.2 学生/学术调研识别

| 信号 | 说明 |
|------|------|
| 使用学校邮箱 | @edu 或大学域名邮箱 |
| 说明用途为论文/报告 | 明确说 "for my research" "for my thesis" |
| 问题偏理论/宏观 | 问行业发展趋势、市场规模，而非具体设备参数 |
| 没有公司信息 | 无法提供公司名称、网站、地址 |

**处理方式**：友好回复，提供公开资料，但不占用销售资源。可引导关注公众号/网站博客。

### 7.3 个人用户/家庭用户识别

| 信号 | 说明 |
|------|------|
| 需求量极小 | "I need to make 50 sausages a day" |
| 提及家庭用途 | "for home use" "for my small shop" |
| 对电压/尺寸有特殊要求 | 要家用 110V 或特别小的尺寸 |
| 预算极低 | 预算 <$2,000 |

**处理方式**：如有电商渠道（Amazon/AliExpress/独立站），可引导至电商链接；否则礼貌告知最小起订量和设备适用范围。

---

## 八、机器人/垃圾询盘识别

### 8.1 典型垃圾询盘特征

| 类型 | 特征 | 示例 |
|------|------|------|
| 纯关键词 | 只写 "price", "catalog", "info" 等单一词汇 | "price" |
| 乱码/无意义内容 | 随机字符、重复字母、表情符号 | "asdfghjkl" "priceeeeeee" |
| 包含链接/推广 | 消息中包含推广链接或广告内容 | "Check out our website: [link]" |
| 重复提交 | 同一联系人在短时间内多次提交相同表单 | 同一个人一天提交5次 |
| 虚假邮箱 | 邮箱格式不存在或明显为测试邮箱 | "test@test.com" "a@a.com" |
| 虚假电话 | 电话号码位数不对或明显无效 | "123456" "00000000" |

### 8.2 表单层防垃圾设计

- **开启 Facebook 表单的 "Higher Intent"（更高意向）表单类型**：提交前增加审核步骤，用户需确认信息
- **添加自定义问题**：机器人通常无法回答需要理解上下文的问题
- **使用条件逻辑**：根据上一题的回答显示不同问题，增加机器人填写难度
- **验证字段格式**：邮箱使用正则验证、电话要求国家代码+号码

### 8.3 自动化拦截规则

```
IF email == "test@test.com" OR email contains "temp" OR email contains "fake"
  → Mark as SPAM, auto-archive

IF message contains ONLY one word AND word in ["price", "cost", "how much", "info", "catalog"]
  → Mark as LOW_PRIORITY, send auto-reply with catalog link, set follow-up in 3 days

IF phone number length < 7 OR phone contains "000" OR "123"
  → Flag for manual review
```

---

## 九、表单字段过滤设计（从源头减少无效线索）

### 9.1 表单设计原则

> **表单的核心目的不是收集更多线索，而是筛掉更多无效线索。**

好的表单设计可以将无效线索率从 **60%+ 降低到 25-35%**，虽然总线索量会下降 20-40%，但 **有效线索数量和成单率会显著提升**。

### 9.2 推荐表单字段（按优先级排序）

| 顺序 | 字段 | 类型 | 必填 | 目的 |
|------|------|------|------|------|
| 1 | Full Name | 文本 | 是 | 基本信息 |
| 2 | Business Email | 邮箱 | 是 | 基本信息（拒绝个人邮箱如 Gmail/Yahoo 可提高质量，但也会减少线索量，视策略而定） |
| 3 | WhatsApp / Phone | 电话 | 是 | 触达渠道 |
| 4 | Country | 下拉选择 | 是 | 地理过滤（只列目标国家） |
| 5 | Company Name | 文本 | 是 | 身份验证（可快速判断是否为企业） |
| 6 | Business Type | 单选 | 是 | 身份分类（工厂/经销商/个人等） |
| 7 | Product Interest | 多选 | 是 | 需求匹配（列出主要产品类别） |
| 8 | Production Capacity | 单选 | 否 | 需求量化（如 "Under 100kg/day", "100-500kg/day", "500kg+/day"） |
| 9 | Estimated Budget | 单选 | 否 | 预算过滤 |
| 10 | Project Timeline | 单选 | 否 | 采购紧迫度（"Within 1 month", "1-3 months", "3-6 months", "6+ months"） |
| 11 | Additional Details | 文本（长） | 否 | 让客户自由描述需求 |

### 9.3 高意向表单 vs 更多线索量表单对比

| 策略 | 表单类型 | 字段数 | 预估线索量变化 | 预估有效率变化 | 适用场景 |
|------|----------|--------|----------------|----------------|----------|
| 更多线索 | 更多线索量（More Volume） | 4-6个 | 基准（100%） | 30-40% | 市场测试期、预算充足 |
| 更高意向 | 更高意向（Higher Intent） | 8-11个 | 下降 30-50% | 55-75% | 成熟市场、销售人力有限 |

**建议**：B2B食品机械出口，默认使用 **更高意向表单**，因为：
- 销售跟进成本高（需要时差沟通、技术支持、报价制作）
- 单个客户生命周期价值高（$10,000-$500,000+）
- 无效线索的隐性成本远高于线索数量减少的损失

### 9.4 表单自定义问题示例

**问题1（用于过滤个人用户）**：
```
"What is your estimated annual production volume?"
Options:
- Less than 1 ton
- 1-10 tons
- 10-100 tons
- 100+ tons
- I'm not sure yet
```

**问题2（用于判断采购紧迫度）**：
```
"When do you plan to purchase this equipment?"
Options:
- Within 1 month (urgent)
- 1-3 months
- 3-6 months
- 6-12 months
- Just researching / No specific timeline
```

---

## 十、Messenger / WhatsApp 客服二次筛选

### 10.1 筛选流程

```
客户进入 Messenger/WhatsApp
        ↓
第1步：自动欢迎语 + 需求收集（3个核心问题）
        ↓
第2步：根据回复判断线索等级（A/B/C/D）
        ↓
第3步：分配不同跟进策略
        ↓
第4步：持续跟踪 + 状态更新
```

### 10.2 自动欢迎语模板

```
Welcome to [Company Name]! We specialize in food processing machinery.

To serve you better, please reply with:
1. Your company name and country
2. What product you want to process (e.g., sausages, snacks, frozen food)
3. Your expected production capacity per day

Our sales engineer will respond within 24 hours with a tailored solution.
```

### 10.3 客服二次筛选话术模板

#### 场景A：确认工厂身份

```
Hi [Name], thanks for the details!

Could you share a bit more about your current production setup?
- Do you already have a factory, or is this a new project?
- What equipment are you currently using (if any)?

This helps us understand how our solution fits into your operation.
```

#### 场景B：确认预算范围

```
Hi [Name], based on your requirements, our solutions range from $[X] to $[Y].

Could you share your budget range? This way I can recommend the most
cost-effective configuration that meets your production needs.
```

#### 场景C：确认采购决策权

```
Hi [Name], just to make sure I'm addressing the right person --
are you the decision-maker for this equipment purchase, or should I
also loop in other team members in our discussion?
```

#### 场景D：友好拒绝低质量线索

```
Hi [Name], thank you for your interest!

Based on what you've shared, it sounds like you may need a smaller/different
type of equipment than what we specialize in. We focus on industrial-grade
food processing lines starting from $[X].

For your needs, I'd suggest checking out [alternative recommendation].
Wishing you all the best with your project!
```

### 10.4 WhatsApp Business 快捷回复设置

建议在 WhatsApp Business 中预设以下快捷回复（Quick Replies）：

| 快捷码 | 内容 | 使用场景 |
|--------|------|----------|
| /intro | 公司介绍 + 产品线概述 | 首次接触 |
| /catalog | 产品目录链接 | 客户索要资料 |
| /budget | 询问预算话术 | 预算不明确 |
| /factory | 询问工厂信息话术 | 身份不明确 |
| /timeline | 询问采购时间线 | 判断紧迫度 |
| /quote | 报价流程说明 | 进入报价阶段 |
| /case | 客户案例链接 | 建立信任 |
| /followup | 跟进话术 | 定期跟进 |

---

## 十一、线索评分模型（A/B/C/D 四级评分）

### 11.1 评分维度与权重

| 维度 | 权重 | 说明 |
|------|------|------|
| 地理位置（Country） | 20分 | 是否为目标市场，购买力如何 |
| 采购身份（Identity） | 25分 | 是否为决策者/有采购权的角色 |
| 预算匹配度（Budget） | 20分 | 预算与设备价格是否匹配 |
| 采购紧迫度（Timeline） | 15分 | 采购时间线是否明确且紧迫 |
| 需求明确度（Need） | 10分 | 产品需求是否清晰具体 |
| 沟通质量（Engagement） | 10分 | 回复速度、沟通深度、配合度 |

### 11.2 A/B/C/D 四级评分规则表

| 等级 | 分数范围 | 定义 | 特征 | 成单概率 | 跟进优先级 |
|------|----------|------|------|----------|------------|
| **A级（Hot Lead）** | 80-100分 | 高价值+高意向 | 目标国家 + 工厂决策者 + 预算匹配 + 1-3个月内采购 + 需求明确 + 积极沟通 | 40-60% | **最高优先级**，24小时内报价，每周至少2次跟进 |
| **B级（Warm Lead）** | 60-79分 | 有价值+中意向 | 目标国家 + 采购经理/经销商 + 预算大致匹配 + 3-6个月采购 + 需求较明确 | 20-35% | **高优先级**，48小时内回复，每周1次跟进 |
| **C级（Cool Lead）** | 40-59分 | 有潜力+低意向 | 非核心国家 + 身份待确认 + 预算偏低/不确定 + 6个月以上采购 + 需求模糊 | 5-15% | **中优先级**，每周或每两周1次跟进，放入培育池 |
| **D级（Cold Lead）** | 0-39分 | 低价值/无效 | 非目标国家 + 个人用户 + 预算严重不匹配 + 无时间线 + 不回复 | 0-3% | **最低优先级**，月度培育邮件或停止跟进 |

### 11.3 详细评分细则表

| 维度 | 满分 | 20分 | 15分 | 10分 | 5分 | 0分 |
|------|------|------|------|------|------|------|
| **Country** | 20 | Tier 1国家（美/加/澳/英/德/法等） | Tier 2国家（东南亚/中东/日韩） | Tier 3国家（俄罗斯/巴西/墨西哥等） | 其他发展中国家 | 必排除国家（印度/巴基斯坦等） |
| **Identity** | 25 | 工厂老板/CEO/决策者 | 工厂采购经理/技术总监 | 经销商/代理商 | 餐饮/中央厨房采购 | 个人用户/学生/无公司 |
| **Budget** | 20 | $50,000+（大型产线） | $15,000-$50,000（中型设备） | $5,000-$15,000（小型单机） | $1,000-$5,000（微型设备） | <$1,000或未提供 |
| **Timeline** | 15 | 1个月内（紧急采购） | 1-3个月 | 3-6个月 | 6-12个月 | 1年以上或不确定 |
| **Need** | 10 | 明确产品+产能+工艺要求 | 明确产品和产能 | 只明确产品类型 | 模糊描述（"food machine"） | 未提供或无关 |
| **Engagement** | 10 | 24小时内回复，主动提问 | 1-3天内回复 | 3-7天内回复 | 7天后才回复 | 不回复 |

### 11.4 评分快速判断速查表

| 如果线索符合以下条件 | 直接定级 |
|----------------------|----------|
| 工厂决策者 + Tier 1国家 + 预算$15,000+ + 3个月内采购 | **A级** |
| 经销商 + Tier 2国家 + 预算$5,000+ + 6个月内采购 | **B级** |
| 身份不明 + Tier 3国家 + 预算不确定 + 6个月后采购 | **C级** |
| 个人用户 + 必排除国家 + 预算<$1,000 + 不回复 | **D级** |

### 11.5 CRM 中的线索状态管理

```
New Lead → Scored (A/B/C/D) → Assigned to Sales
A: Active → Quotation → Negotiation → Closed Won / Closed Lost
B: Nurture → Engagement ↑ → Move to Active → Quotation → ...
C: Nurture Pool → Monthly Touch → Score Change → B or D
D: Archive / Monthly Newsletter → Delete after 90 days
```

---

## 十二、后续跟进策略（分层跟进）

### 12.1 各等级线索跟进频率与方式

| 等级 | 跟进频率 | 跟进方式 | 跟进内容 | 升级条件 | 降级条件 |
|------|----------|----------|----------|----------|----------|
| **A级** | 每2-3天 | WhatsApp + 邮件 + 视频通话 | 报价方案、技术答疑、客户案例、工厂视频 | 确认订单 → 转入合同流程 | 7天无回复 → 降为B级 |
| **B级** | 每周1次 | WhatsApp + 邮件 | 产品推荐、行业方案、邀请看厂（线上） | 回复积极+时间提前 → 升为A级 | 3周无回复 → 降为C级 |
| **C级** | 每2周1次 | 邮件为主 + WhatsApp偶尔 | 行业新闻、产品更新、促销信息 | 明确采购计划 → 升为B级 | 连续3次无回复 → 降为D级 |
| **D级** | 每月1次或停止 | 邮件（Newsletter） | 公司新闻、产品更新 | 主动联系我们 → 重新评估等级 | 90天无互动 → 归档删除 |

### 12.2 A级线索标准跟进时间线

```
Day 0: 收到线索 → 15分钟内发送欢迎消息（自动）
Day 0: 销售在2小时内人工跟进，确认需求
Day 1: 发送初步方案/报价
Day 2: WhatsApp跟进，确认是否收到报价
Day 4: 邀请视频通话/线上会议，演示产品
Day 7: 发送客户案例/工厂视频，增强信任
Day 10: 询问是否有技术问题需要工程师解答
Day 14: 确认决策时间线，是否需要样品/测试
Day 21: 如果仍未成交，探讨付款方案/优惠政策
Day 30: 评估是否降为B级
```

### 12.3 B级线索标准跟进时间线

```
Day 0: 收到线索 → 2小时内发送欢迎消息
Day 1: 发送产品目录和价格区间
Day 7: 第一次跟进：分享相关产品案例
Day 14: 第二次跟进：询问是否有具体问题
Day 21: 第三次跟进：发送行业方案/应用案例
Day 30: 评估线索状态：升级/维持/降级
```

### 12.4 C级线索培育池策略

```
周 1: 发送欢迎邮件 + 产品目录
周 3: 发送行业报告/趋势文章
周 5: 发送产品应用视频
周 7: 发送客户案例/推荐
周 9: 发送限时优惠/活动信息
周 11: 发送"我们最近的产品更新"
每 3 个月: 重新评估一次线索状态
```

### 12.5 跟进话术模板（跨等级通用）

#### 第一次跟进（Day 1）

```
Hi [Name],

Following up on your inquiry about [Equipment Name]. I've reviewed your
requirements and prepared some initial recommendations.

Here are a few key details:
- [Key spec 1]
- [Key spec 2]
- Estimated investment: $[Range]

Would you be available for a quick call this week to discuss in more detail?
I can also arrange a live video tour of our factory if you'd like.

Best regards,
[Sales Name]
```

#### 沉默线索激活（7天未回复）

```
Hi [Name],

I haven't heard back from you since my last message. I understand you might
be busy -- just wanted to check if:

1. The project is still moving forward?
2. You need any additional information from our side?
3. The timing has changed?

No pressure at all -- just want to make sure I'm supporting you at the
right pace. Looking forward to hearing from you.
```

---

## 十三、可复制 SOP Checklist（Step-by-Step）

### Phase 1：广告层设置（投放前）

- [ ] **设置国家/地区白名单**：只投放 Tier 1 + Tier 2 目标国家
- [ ] **排除低质量国家**：在广告组中排除印度、巴基斯坦、孟加拉等
- [ ] **定位 B2B 人群**：使用 Interests 定位（Food Processing, Manufacturing, Industrial Equipment 等）
- [ ] **排除无关人群**：Exclude 学生、家用设备相关兴趣
- [ ] **设置最低年龄**：25岁以上（过滤学生群体）
- [ ] **选择 "Higher Intent" 表单类型**：增加审核步骤
- [ ] **配置表单字段**：包含公司名、国家、业务类型、预算、时间线
- [ ] **设置自动回复**：Messenger/WhatsApp 欢迎语 + 需求收集问题

### Phase 2：线索接收与初筛（收到线索后2小时内）

- [ ] **Step 1：检查基本信息完整性**
  - [ ] 邮箱格式是否正确
  - [ ] 电话号码是否有效
  - [ ] 公司名称是否填写

- [ ] **Step 2：国家/地区判断**
  - [ ] 是否在目标国家列表内
  - [ ] 不在 → 标记D级，进入培育池

- [ ] **Step 3：身份判断**
  - [ ] 业务类型是否为工厂/经销商
  - [ ] 公司名称能否在 Google 上查到
  - [ ] 个人用户 → 标记D级，转介绍或放弃

- [ ] **Step 4：预算判断**
  - [ ] 预算是否与设备价格匹配（不低于底价的30%）
  - [ ] 严重不匹配 → 标记C级或D级

- [ ] **Step 5：时间线判断**
  - [ ] 采购时间是否在6个月内
  - [ ] 超过6个月 → 标记C级

- [ ] **Step 6：线索评分（A/B/C/D）**
  - [ ] 使用评分表计算总分
  - [ ] 录入 CRM 系统
  - [ ] 分配对应等级的跟进策略

### Phase 3：首次跟进（2-24小时内）

- [ ] **A级线索**：
  - [ ] 2小时内人工回复
  - [ ] 确认需求细节
  - [ ] 承诺24小时内发送报价方案

- [ ] **B级线索**：
  - [ ] 4小时内人工回复
  - [ ] 发送产品目录 + 价格区间
  - [ ] 预约进一步沟通时间

- [ ] **C级线索**：
  - [ ] 24小时内回复
  - [ ] 发送通用产品资料
  - [ ] 标记为培育池

- [ ] **D级线索**：
  - [ ] 自动回复产品目录
  - [ ] 不安排人工跟进
  - [ ] 进入月度培育邮件列表

### Phase 4：持续跟进与状态管理

- [ ] **每日检查**：新线索分配 + 跟进任务
- [ ] **每周检查**：
  - [ ] A级线索是否按计划跟进
  - [ ] B/C级线索是否有状态变化
  - [ ] 沉默线索是否需要激活
- [ ] **每月检查**：
  - [ ] 线索转化率分析（按等级）
  - [ ] 各等级线索数量分布
  - [ ] 调整广告投放策略（根据线索质量反馈）
  - [ ] 清理D级线索（90天无互动）

### Phase 5：复盘与优化

- [ ] **每周复盘指标**：
  - [ ] 总线索数量
  - [ ] A级线索占比（目标 > 15%）
  - [ ] B级线索占比（目标 > 25%）
  - [ ] C+D级线索占比（目标 < 60%）
  - [ ] 线索→报价转化率
  - [ ] 报价→成交转化率
- [ ] **每月优化动作**：
  - [ ] 根据 A级线索来源调整广告定向
  - [ ] 根据 D级线索特征增加排除条件
  - [ ] 优化表单字段（增加/删除/调整问题）
  - [ ] 更新自动回复话术
  - [ ] 调整国家/地区白名单

---

## 十四、关键指标参考基准

| 指标 | 良好水平 | 优秀水平 | 说明 |
|------|----------|----------|------|
| 总线索中 A级占比 | > 15% | > 25% | A级越多，销售效率越高 |
| 总线索中 B级+占比 | > 40% | > 55% | B级以上合计占比 |
| 线索→报价转化率 | > 30% | > 45% | 有效线索进入报价流程的比例 |
| 报价→成交转化率 | > 10% | > 20% | 报价后最终成交的比例 |
| 平均线索响应时间 | < 4小时 | < 1小时 | 响应速度直接影响转化率 |
| A级线索跟进覆盖率 | 100% | 100% | 所有A级线索必须100%覆盖 |
| D级线索占比 | < 30% | < 20% | D级过多说明广告定向或表单有问题 |

---

## 十五、常见陷阱与应对

| 陷阱 | 表现 | 应对 |
|------|------|------|
| 追求线索数量 | 大量低质量线索淹没销售团队 | 转为追求线索质量，接受线索数量下降 |
| 表单过于简单 | 任何人都能提交，无效线索率高 | 增加2-3个筛选字段，使用 Higher Intent 表单 |
| 跟进不及时 | 线索冷掉，被竞争对手抢走 | 设置24小时内必须首次跟进的硬性规则 |
| 所有线索同等对待 | 销售精力分散，A级线索照顾不足 | 严格执行分级跟进策略 |
| 不做复盘 | 持续投放但线索质量不改善 | 建立每周/每月复盘机制，数据驱动优化 |
| 不更新排除列表 | 反复收到同样低质量国家的线索 | 每月更新国家排除列表和广告定向 |

---

## 十六、工具与自动化建议

### 16.1 推荐工具链

| 环节 | 工具 | 用途 |
|------|------|------|
| 广告管理 | Facebook Ads Manager | 广告定向、排除国家、表单设置 |
| 线索收集 | Facebook Lead Ads + Zapier/Make | 自动同步线索到CRM |
| CRM管理 | HubSpot / Pipedrive / 飞书多维表格 | 线索评分、状态管理、跟进提醒 |
| 即时通讯 | WhatsApp Business API + ManyChat | 自动回复、快捷回复、标签管理 |
| 邮件培育 | Mailchimp / Brevo / HubSpot | 培育邮件序列、Newsletter |
| 数据分析 | Google Sheets + Data Studio | 线索质量分析、转化率追踪 |

### 16.2 自动化流程示例

```
Facebook Lead Ad 提交
  → Zapier 触发
    → 写入 CRM（含初始评分）
      → 根据评分自动分配：
        A级 → Slack/飞书通知销售团队
        B级 → 进入标准跟进队列
        C级 → 进入培育邮件序列
        D级 → 自动发送产品目录，不通知销售
    → 发送 WhatsApp 欢迎消息（ManyChat）
    → 发送确认邮件
```

---

> **核心总结**：过滤无效线索不是"消灭"线索，而是用系统化的方法把有限的销售精力投入到最有价值的客户身上。B2B食品机械出海的线索过滤，本质是一个 **漏斗管理** 问题 -- 广告层排除 + 表单层筛选 + 客服层确认 + CRM层评分 + 跟进层分级，五层漏斗层层过滤，最终留下真正的优质线索。
