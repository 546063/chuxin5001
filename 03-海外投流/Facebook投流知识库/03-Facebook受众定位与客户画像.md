---
title: "Facebook受众定位与客户画像"
aliases:
  - "FB受众定向"
  - "Facebook Ads Targeting"
  - "Broad定向"
  - "Lookalike受众"
tags:
  - Facebook投流
  - 受众定向
  - Broad定向
  - Lookalike
  - 自定义受众
type: "note"
quality_level: "A"
summary_cn: "2026年Facebook定向策略：Broad定向在70%+场景下优于兴趣定向。按账户成熟度选择定向策略（全新→兴趣、成长期→LAL、成熟期→Broad）。Pixel+CAPI双轨并行，数据覆盖率~95%+。受众重叠率>30%是预算杀手。"
summary_en: "Facebook targeting strategy 2026: Broad targeting outperforms interest targeting in 70%+ scenarios. Account maturity-based targeting progression."
related:
  - "[[00-Facebook投流知识库总索引]]"
  - "[[03-海外投流]]"
  - "[[05-客户开发与成交]]"
  - "[[02-跨境社媒获客]]"
  - "[[02-Facebook广告账户与配置SOP]]"
  - "[[01-Facebook投流基础认知]]"
retrieval_keywords:
  - Facebook受众定向
  - Broad定向
  - Lookalike
  - 自定义受众
  - 再营销受众
  - Advantage+ Audience
decision_value: "正确的定向策略可显著降低CPM（案例：从$12降到$7.2，转化量+55%）"
created: "2026-05-21"
updated: "2026-05-21"
---

# Facebook受众定位与客户画像

## 一句话总结

2026 年 Meta 定向趋势是 **Broad + 好素材**，素材即定向，算法通过互动信号自动找人。

## 核心结论

- Broad 定向在 70%+ 场景下优于兴趣定向
- 素材 = 定向：广告内容决定谁会停下来看、谁会点击
- Pixel + CAPI 双轨并行，数据覆盖率从 ~55% 提升到 ~95%+
- LAL 受众效果通常在 60-90 天后开始下降，需每 60 天用最新种子重建
- 受众重叠率 > 30% 是预算杀手

## iOS 14.5+ 后的定向范式变化

- **IDFA 获取率仅 10-25%**：大部分用户选择"不追踪"
- **Lookalike 质量下降**：基于 IDFA 的 LAL 失去信号源
- **兴趣定向精度降低**：跨 App 行为数据减少
- **Meta 的应对**：转向 Advantage+ AI 定向 + 素材即定向

## 五种定向层级效果对比

| 层级 | 说明 | 2026 年效果 |
|------|------|-----------|
| **Broad（广泛）** | 仅设地区+年龄+性别 | **最佳** |
| **Advantage+ Audience** | AI 在设定基础上扩展 | **推荐** |
| **Interest（兴趣）** | 选定兴趣标签 | 可用但非最优 |
| **Lookalike（类似受众）** | 基于种子用户扩展 | 效果下降 |
| **Custom Audience（自定义）** | 再营销 | 再营销必备 |

## 定向策略决策框架

| 阶段 | 推荐定向 | 原因 |
|------|---------|------|
| 冷启动 | Broad + Advantage+ | 最大化学习空间 |
| 有种子用户 | Broad + LAL 1-3% 对比测试 | 验证 LAL 是否仍有优势 |
| 再营销 | Custom Audience（网站访客+客户列表） | 高意向用户 |
| 电商多产品 | Broad + 素材区分产品 | 用素材筛选受众 |
| B2B / 窄受众 | Interest + Broad 对比 | 窄市场 Broad 可能找不到人 |

## 账户成熟度 → 定向策略映射

| 账户阶段 | Pixel 转化数据 | 推荐定向 |
|---------|---------------|---------|
| 全新账户 | 0 | 兴趣定向 3-5 个 |
| 冷启动期 | 50-200 | 兴趣 + 1-2% LAL |
| 成长期 | 200-1000 | 2-5% LAL + 自定义受众 |
| 成熟期 | >1000 | Broad + Advantage+ Audience |

## 再营销策略矩阵

| 受众类型 | 热度 | 推荐出价 | 内容方向 |
|---------|------|---------|---------|
| 7 天加购未购买 | 热 | Lowest Cost 或略高 | 紧迫感（限时优惠/库存紧张） |
| 30 天网站访客 | 温 | 正常 | 社会证明 + 产品优势 |
| 90 天视频观看 50%+ | 温 | 正常 | 教育内容 + 信任建立 |
| 180 天购买者 | 老客 | 低出价 | 复购推荐 / VIP 专属 |

## 不同行业的定向策略差异

- **电商（DTC）**：Broad + Advantage+ Audience，素材充当筛选器
- **B2B / SaaS**：Interest + Job Title + LAL，受众窄 Broad 效果通常不好
- **高客单价（>$500）**：Broad + 内容培育漏斗，先用 Engagement/Video View 收集暖受众
- **本地服务**：Geo 限定 + Broad，限定半径，不设兴趣定向

## 受众重叠诊断

| 重叠率 | 判断 | 动作 |
|--------|------|------|
| < 10% | 正常 | 无需操作 |
| 10-25% | 轻度 | 关注 |
| 25-40% | 中度 | 考虑合并受众 |
| > 40% | 严重 | **必须处理**：合并或用排除 |

## LAL 种子质量评分

| 种子类型 | 质量分 | 适合 LAL |
|---------|--------|---------|
| 90 天购买客户（> $100） | 95/100 | LAL 1% |
| 180 天购买客户 | 80/100 | LAL 1-3% |
| 30 天加购未购 | 65/100 | LAL 1-3% |
| 视频观看 > 75% | 45/100 | LAL 1-5% |
| IG/Page 互动 | 30/100 | LAL 2-5% |

## 受众定期清理 SOP（每月一次）

1. 检查所有 Custom Audience 的规模变化
2. 删除规模 < 100 人的受众
3. 合并功能重复的受众
4. 更新种子受众做 LAL（用最新购买数据替换旧种子）

## 命名规范

```
自定义受众: [类型]_[来源]_[天数/参数]_[日期]
示例：CA_Website_Visitors_30d_202605

LAL: LAL_[种子类型]_[%]_[市场]_[日期]
示例：LAL_Purchasers_1pct_US_202605
```

## 相关知识点

- [[00-Facebook投流知识库总索引]] — 知识库导航
- [[01-Facebook投流基础认知]] — 算法底层逻辑
- [[02-Facebook广告账户与配置SOP]] — 账户搭建
- [[05-Facebook投放结构与预算模型]] — 预算管理
- [[07-Facebook再营销与转化追踪]] — 再营销实操
