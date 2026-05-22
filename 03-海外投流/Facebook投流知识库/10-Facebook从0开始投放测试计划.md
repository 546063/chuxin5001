---
title: "Facebook从0开始投放测试计划"
aliases:
  - "Facebook Cold Start Plan"
  - "Facebook冷启动"
tags:
  - facebook-ads
  - cold-start
  - test-plan
type: "测试计划"
module: "海外投流"
platform: "Facebook"
routing_target:
  - simulated_campaign_plan
  - facebook_ads
  - paid_ads_strategy
quality_level: "A"
summary_cn: "Facebook 从 0 开始投放的 30 天测试计划，覆盖冷启动、素材测试、受众测试、预算规划和前置信号观察。"
summary_en: "30-day cold start test plan for Facebook Ads from scratch, covering cold start, creative testing, audience testing, budget planning, and leading indicator observation."
related:
  - "[[10-Facebook投流路由入口]]"
  - "[[09-Facebook投流前准备清单]]"
  - "[[17-Facebook投流复盘指标体系]]"
retrieval_keywords:
  - "Facebook冷启动怎么投"
  - "Facebook测试计划"
  - "Facebook没有历史数据怎么投"
  - "Facebook先测什么"
decision_value: "没有历史数据时的 30 天测试路线图。"
created: "2026-05-22"
updated: "2026-05-22"
---

# Facebook从0开始投放测试计划

> **当前状态**：模拟测试方案，非真实投放计划。
> **参考来源**：Meta for Business 官方文档（https://www.facebook.com/business/learn）、Meta Blueprint 培训资料
> **适用场景**：B2B 食品加工机械出海，首次 Facebook 投放，无历史数据。

---

## 前置条件

- [ ] 完成 [[09-Facebook投流前准备清单]] 所有项目
- [ ] BM/广告账户/Pixel/WhatsApp 全部就绪
- [ ] 素材准备 5+ 张图 + 3+ 条视频
- [ ] 客服话术模板就绪

---

## 第 1 周：冷启动

### 目标
建立账户初始数据积累，让算法开始学习。

### 设置

| 项目 | 设置 |
|------|------|
| Campaign 目标 | Engagement（WhatsApp 消息）或 Leads（Lead Form） |
| 预算 | $30-50/日 |
| 受众 | Interest-based：Food processing, Manufacturing, Restaurant equipment |
| 地域 | 首选 1-2 个市场（如 Saudi Arabia + UAE） |
| 素材 | 3 条不同方向：工厂实力 / 产品运转 / 客户案例 |
| 版位 | Advantage+ Placements（自动优化） |

### 观察指标

| 指标 | 参考范围（参考级，待验证） | 说明 |
|------|--------------------------|------|
| CPM | $3-15（中东）/ $5-20（欧美） | Meta 官方数据 + 行业报告 |
| CTR（All） | 1-3% | 低于 1% 说明素材不够吸引 |
| CPC | $0.50-2.00 | 与受众和素材相关 |
| 每日 WhatsApp 点击 | 2-10 | 取决于 CTR 和预算 |

### 判断标准

| 信号 | 判断 |
|------|------|
| CTR > 2% | 素材有吸引力，继续 |
| CTR < 1% | 素材需要调整 |
| CPM > $20 | 受众可能太窄，放宽定向 |
| 无 WhatsApp 点击 | 检查 CTA 和承接链路 |

### 动作
- 每日检查数据，不调整
- 第 4-5 天观察是否有学习期完成信号
- 第 7 天做第一次复盘

---

## 第 2 周：素材测试

### 目标
找到最优素材方向。

### 设置

| 项目 | 设置 |
|------|------|
| Campaign | 保持第 1 周 |
| 新增素材 | 追加 2-3 条新素材 |
| 素材方向 | 对比测试：ASMR / Before-After / 客户证言 |
| 受众 | 保持第 1 周不变 |

### 观察指标

| 指标 | 关注点 |
|------|--------|
| 各素材 CTR | 找出最高 CTR 的素材 |
| 各素材 CPL | 找出最低 CPL 的素材 |
| 各素材 WhatsApp 消息数 | 找出转化最好的素材 |

### 判断标准

| 信号 | 判断 |
|------|------|
| 某素材 CTR 是其他 2x | 加大该素材预算 |
| 所有素材 CTR < 1% | 重新制作素材 |
| 视频素材 vs 图片素材 | 视频完播率 > 25% 为合格 |

### 动作
- 淘汰 CPL 最高的 1 条素材
- 复制表现最好的素材，微调文案测试
- 第 14 天做第二次复盘

---

## 第 3 周：受众测试

### 目标
找到最优受众。

### 设置

| 项目 | 设置 |
|------|------|
| Campaign | 保持 |
| 素材 | 固定为第 2 周最优 2 条 |
| Ad Set A | Interest-based（保持） |
| Ad Set B | Lookalike 1%（基于网站访客/WA 列表/主页粉丝） |
| Ad Set C | Retargeting（30 天内看过视频/访问主页） |

### 观察指标

| 指标 | 关注点 |
|------|--------|
| 各 Ad Set CPL | Interest vs LAL vs RTG |
| 各 Ad Set 线索质量 | 有效询盘率 |
| 各 Ad Set 覆盖人数 | 受众池大小 |

### 判断标准

| 信号 | 判断 |
|------|------|
| LAL CPL 低于 Interest | LAL 数据积累后通常更优 |
| RTG 转化率最高 | 再营销ROI最高，但覆盖有限 |
| Interest 覆盖不足 | 放宽兴趣标签或加地域 |

### 动作
- 淘汰 CPL 最高的 Ad Set
- 保留 1-2 个最优 Ad Set
- 第 21 天做第三次复盘

---

## 第 4 周：优化与放量

### 目标
基于前 3 周数据优化，决定是否放量。

### 优化方向

| 方向 | 操作 |
|------|------|
| 素材 | 加大最优素材预算 |
| 受众 | 保留最优 1-2 个 Ad Set |
| 预算 | 如果 CPL 可接受，日预算提升 20-50% |
| 承接 | 优化 WhatsApp 回复话术 |

### 放量信号（需同时满足 3 个以上）

| 信号 | 阈值 |
|------|------|
| CTR | > 2% |
| CPL | 在可接受范围内（参考级，待验证） |
| 有效询盘率 | > 20% |
| WhatsApp 回复率 | > 50% |
| 报价率 | > 10% |
| 学习期 | 已完成（50+ 优化事件） |

### 动作
- 如果放量信号满足 → 提升预算 20-50%
- 如果放量信号不足 → 回到素材/受众测试
- 第 30 天做全面复盘

---

## 无历史数据时的冷启动策略

### 为什么冷启动难

新账户没有数据积累，算法不知道你的目标受众是谁。

### 应对策略

| 策略 | 操作 |
|------|------|
| 宽定向 | 兴趣标签选 3-5 个，不要只选 1 个 |
| 多素材 | 至少 3 条素材并行，让算法测试 |
| 低预算 | 先用 $30-50/日跑 14 天，不要一上来就大预算 |
| 看前置信号 | 没有 ROAS 数据时，先看 CTR/CPC/CPL |
| 利用现有数据 | 上传已有客户列表做 Custom Audience |
| 利用 WhatsApp | Click to WhatsApp 广告比 Lead Form 互动门槛低 |

---

## 无真实 ROAS 时先看前置信号

### 前置信号优先级

| 优先级 | 信号 | 说明 |
|--------|------|------|
| P0 | CTR | 素材是否有吸引力 |
| P0 | CPC | 竞争程度和定向是否合理 |
| P1 | CPL | 线索成本是否可接受 |
| P1 | Valid Lead Rate | 线索中有效询盘的比例 |
| P2 | WhatsApp 回复率 | 客户是否愿意沟通 |
| P2 | 报价率 | 有多少线索进入了报价阶段 |
| P3 | ROAS | 最终回报率（需要成交数据才能计算） |

### 阶段判断

| 阶段 | 看什么 |
|------|--------|
| 第 1-7 天 | CTR + CPC（素材和定向是否OK） |
| 第 7-14 天 | CPL + Valid Lead Rate（线索质量和成本） |
| 第 14-21 天 | WhatsApp 回复率 + 报价率（承接能力） |
| 第 21-30 天 | 成交数 + ROAS（最终效果） |

> B2B 设备决策周期 30-90 天，前 30 天可能看不到成交。
> 前置信号合格即可继续测试，不必等 ROAS。

---

## 风险点

| 风险 | 应对 |
|------|------|
| 广告被拒 | 检查素材是否违反广告政策 |
| CPM 飙升 | 竞争加剧，检查广告频次 |
| CPL 持续偏高 | 调整受众定向或素材方向 |
| 线索质量差 | Lead Form 加过滤问题，或用 WhatsApp 承接 |
| 学习期卡住 | 不要频繁调整，给算法 48-72 小时 |
| 预算花不出去 | 放宽受众或提高出价 |

---

## 什么时候可以转真实投放

| 条件 | 说明 |
|------|------|
| ✅ Pixel 正常触发 | 事件数据准确 |
| ✅ CTR > 2% | 素材有吸引力 |
| ✅ CPL 在可接受范围 | 参考同行或行业基准 |
| ✅ 有效询盘率 > 20% | 线索质量合格 |
| ✅ 客服话术就位 | 能承接线索 |
| ✅ 复盘表就位 | 能追踪数据 |

满足以上 4 个条件以上，即可认为"转真实投放"就绪。

---

## 需要回填的真实数据

投流开始后，需要回填以下数据：

| 数据项 | 来源 |
|--------|------|
| 实际 CPM | Ads Manager |
| 实际 CTR | Ads Manager |
| 实际 CPC | Ads Manager |
| 实际 CPL | Ads Manager + 线索统计 |
| 实际线索质量 | WhatsApp/CRM 记录 |
| 实际 WhatsApp 回复率 | 客服记录 |
| 实际报价率 | 客服记录 |
| 实际成交数 | 销售记录 |
| 实际 ROAS | 成交金额 / 广告花费 |

> 回填数据进入：[[03-海外投流/投流证据层/投流真实数据记录表]]
