---
title: WhatsApp获客链路
aliases:
  - WhatsApp获客链路
tags:
  - 内容素材库/获客文案
  - 文案诊断/咨询转化
  - B2B获客/外贸询盘
type: content-card
source: /Users/mac/ai-workspaces/AI-Workspace-Obsidian/09-销售过程复盘/01-投流策略与复盘/转化链路/WhatsApp获客链路.md
related:
  - "[[01-文案诊断调用入口]]"
  - "[[00-获客文案方法论总索引]]"
summary_cn: 获客文案方法论资料，供文案诊断、询盘转化和私信引流调用。
summary_en: Routing-ready content note for An先生 content operations.
retrieval_keywords:
  - 获客文案
  - 咨询转化
  - 询盘
  - 私信
  - WhatsApp
decision_value: 用于判断文案是否能带来咨询、私信、询盘、加微信或WhatsApp动作。
quality_level: imported
created: 2026-05-26
updated: 2026-05-26
---

# WhatsApp 获客链路

## 一句话总结
WhatsApp获客链路

## 核心结论
- 待补充

## 适用场景
- 适合平台：全平台
- 适合行业：全行业
- 适合场景：私域转化

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
## 广告到 WhatsApp 点击设计

**案例: Dairy Machinery Meta Ads (India) - Lead Gen + WhatsApp**

### 转化链路
Reels曝光(awareness) → Meta Instant Form(lead capture) → WhatsApp follow-ups + brochures/demo videos(retargeting)

### 关键设计
- **流量来源**: Meta Reels短视频 (品牌认知阶段)
- **转化入口**: Meta Instant Form (原生 lead gen form)
- **WhatsApp跳转**: 表单提交后触发 WhatsApp Business API 自动跳转
- **点击优化**: CTA按钮使用 "Query Price / Get Catalog" 而非直接购买

### 字段设计 (确认)
- Name
- WhatsApp Number (必填,带国家区号)
- Country
- Equipment Type (下拉选择)

### 指标 (确认)
- 202 leads (表单提交)
- 144 WhatsApp conversations (71.3% form→WhatsApp转化率)
- ₹42 implied CPL (印度卢比)

---

## 自动回复与欢迎语设置

### Case 1 实操配置
**触发条件**: 新建 WhatsApp 会话 (form submit后自动创建)

**自动回复内容**:
```
Hi [Name], thanks for your interest in [Company] dairy machinery!

📋 Your inquiry: [Equipment Type]
🌍 Country: [Country]

I've attached our product catalog. Which items are you most interested in?

Reply with:
1 - Get a demo video
2 - Download full brochure
3 - Talk to sales rep
```

** Brochure/Video 发送**:
- 收到 "1" → 自动回复 demo video link (WeTransfer/Google Drive)
- 收到 "2" → 自动回复 PDF brochure
- 收到 "3" → 标记为 hot lead, 通知 sales team

### 黄金响应时间
- 自动回复: <30秒
- 人工接手: 15分钟内 (上班时间)

---

## 客服分流与标签管理

### WhatsApp 标签体系 (Case 1)
| 标签 | 触发条件 | 后续动作 |
|------|----------|----------|
| #new_inquiry | 新会话创建 | 自动欢迎语 |
| #equipment_[type] | 表单Equipment Type字段 | 分流到对应产品线客服 |
| #demo_requested | 回复"1" | 发送demo video |
| #brochure_sent | 回复"2" | 已发送资料 |
| #hot_lead | 回复"3"或高互动 | 立即转sales |
| #follow_up_needed | 24h无回复 | 自动提醒 |

### 客服分流规则
- 按 Equipment Type 分组: Milk Processing / Ice Cream / Cheese / Packaging
- 非工作时间: 触发 off-hours 自动回复

---

## 意向判断与跟进策略

### 转化窗口 (确认)
- **4-7天** 完成主要转化路径

### 意向分层
| 层级 | 指标 | 跟进策略 |
|------|------|----------|
| Hot | 回复"3"或立即视频请求 | sales直接电话/whatsapp call |
| Warm | 看了demo video或 brochure | 2次follow-up, 提供case study |
| Cool | 只加了WhatsApp | 1周后推送promotion |

### Case 1 转化漏斗
1. Reels曝光 → 点击 → Instant Form (漏斗率待补充)
2. Form提交 → WhatsApp会话 (71.3%)
3. WhatsApp → 有效对话 (144/202 = 71.3%)
4. 有效对话 → 询价/报价 (转化率待确认)

---

## 转化追踪与归因

### 追踪配置 (确认)
- **Meta Pixel**: 表单提交事件
- **WhatsApp Business API**: 会话创建事件
- **UTM参数**: 区分 Reels / Story / Feed 流量

### 关键事件追踪
| 事件 | 触发点 | 工具 |
|------|--------|------|
| Lead | 表单提交 | Meta Pixel + Instant Form |
| WhatsApp_Init | 会话创建 | WhatsApp Business API |
| Content_View | 查看brochure/video | UTM + Click ID |
| Reply | 用户回复 | WhatsApp Webhook |

### 归因窗口
- View-through: 1天
- Click-through: 7天 (匹配转化窗口)

---

## 数据复盘模型

### Case 1 核心指标 (确认数据)
| 指标 | 数值 | 备注 |
|------|------|------|
| 总线索数 | 202 | Meta Instant Form |
| WhatsApp会话数 | 144 | 71.3%转化 |
| 有效对话(预估) | 80-100 | 待确认 |
|  implied CPL | ₹42 | India INR |
| 转化周期 | 4-7天 | 核心转化窗口 |

### 周维度复盘
- **曝光-点击率**: Reels完播率 → CTA点击率
- **表单-WhatsApp转化率**: 目标 >65%
- **响应率**: 自动回复后用户主动回复比例
- **对话-成交**: 7天后统计成交单数

### 优化方向
1. 测试不同 Reels 内容类型 (机器运行 vs 成品展示)
2. 优化 Equipment Type 下拉选项 (精简到5个以内)
3. 调整欢迎语: 加入限时优惠促hot lead


## 相关知识点
- [[私域跟进]]
