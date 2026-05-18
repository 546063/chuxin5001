---
title: Skill工程-跨境选品6维框架
aliases:
  - - - - - Skill工程-跨境选品6维框架
  - - - - - 跨境选品6维评分框架
type: 选品框架
status: active
category: 跨境选品
platform: multi-platform
industry: 综合
scenario: 选品决策/市场调研
tags:
  - - - - - '#选品研究/产品筛选'
  - - - - - '#选品研究/利润判断'
  - - - - - '#选品研究/市场需求'
  - - - - - '#选品研究/B2B产品'
  - - - - - '#选品研究/食品机械机会'
related: 
source: AI整理-2026-05-11
created: '2026-05-03'
updated: '2026-05-04'
summary_cn: 跨境选品与产品研究笔记，涵盖市场调研、选品方法论、产品分析、供应链研究，为跨境社媒成交提供决策支撑。
quality_level: S
decision_value: 极高
retrieval_keywords:
  - - - - - 选品6维框架
  - - - - - 跨境选品评分
  - - - - - 选品决策框架
  - - - - - 需求侧信号
  - - - - - 供给侧壁垒
  - - - - - 代运营适配
  - - - - - 利润健康度
  - - - - - 产业带契合
  - - - - - 选品数据分析
summary_en: Cross-border product selection and research note covering market analysis, methodology and supply chain considerations.
one_sentence_summary: Skill工程-跨境选品6维框架是跨境选品领域的核心方法。
routing_target:
  - "[[11-选品产品研究MOC]]"
---


## 二、评分公式

**综合得分** = 0.25×需求信号 + 0.15×供给壁垒 + 0.15×合规可行性 + 0.20×代运营适配 + 0.15×利润健康度 + 0.10×产业带契合

**一票否决项（任一触发则总分×0）：**
- 目标国明确禁运
- 平台广告完全禁止+私域也无支付通道
- 客单价<2000元且无打包可能
- 毛利率<25%

**分级：**
- ≥75分：立即重仓（深度调研+建客户池）
- 60-75分：关注并做小样测试
- 45-60分：观望+季度复盘
- <45分：放弃

---

## 三、Skill目录结构

```
cross-border-selection/
├── SKILL.md                           # 主入口，触发词+workflow
├── references/
│   ├── scoring_framework.md           # 6维度评分公式+权重表
│   ├── data_sources.md                # 20+数据源的API/爬取说明
│   ├── country_profiles/              # 西语11国国家档案
│   │   ├── mexico.md
│   │   ├── spain.md
│   │   ├── colombia.md
│   │   └── ...
│   ├── compliance_matrix.md          # 各国×各品类合规速查
│   └── hebei_industry_map.md          # 河北产业带×能做的出海品类
├── scripts/
│   ├── fetch_google_trends.py        # pytrends库
│   ├── fetch_tiktok_ads.py            # TikTok Creative Center
│   ├── fetch_amazon_bsr.py            # Jungle Scout/Helium10 / Keepa
│   ├── fetch_1688.py                  # 询盘价+SKU数
│   ├── fetch_customs_hs.py            # 海关HS编码月度数据
│   ├── fetch_patents.py               # Google Patents API
│   ├── fetch_reddit_signals.py        # PRAW
│   ├── fetch_meta_ads.py              # Meta Ads Library
│   └── scoring_engine.py              # 综合评分计算
├── templates/
│   ├── product_report.md              # 产品分析报告模板
│   ├── country_match.md               # 国家匹配报告模板
│   └── weekly_radar.md               # 每周趋势雷达扫描报告
└── examples/
    ├── case_ai_doll.md
    └── case_portable_power.md
```

---

## 四、12个必爬数据源

### 免费/低成本（优先接入）
1. Google Trends（pytrends库）——5年斜率+多国对比
2. [[02-海外投流/MOC]] Creative Center（web抓取）——Top Products/Ads/Hashtags by Country
3. Meta Ads Library（官方API）——谁在烧钱投这个品类
4. 1688阿里国际站（爬询盘价+新品数）
5. Google Patents（免费）——专利增速
6. Reddit PRAW（免费）——早期KOC讨论
7. MercadoLibre Trends（公开页）——西语市场风向标
8. 海关总署 HS编码查询（免费）——出口同比

### 付费/权威（预算允许再接）
9. Panjiva / ImportGenius——海外采购商名录+交易记录
10. Jungle Scout / Helium10 / Keepa——亚马逊销量估算
11. Crunchbase——融资信号
12. Statista——行业规模基准

---

## 五、关键设计原则

1. **数据源要可降级**：付费API挂了能退到免费源，skill不能因单一API失效崩掉
2. **评分透明可追溯**：每个分数来源都要写到报告里，客户谈判要用
3. **国家×产品是矩阵关系**：同一产品在墨西哥75分、在智利60分是常态，输出Top3国家排序
4. **输出要落到决策**：每份报告末尾必须给"立即重仓/关注/放弃"三选一
5. **搭配[[10-AI工具与自动化/MOC]]定时任务**：每周一早上跑"西语市场趋势雷达"，推送到[[10-AI工具与自动化/MOC]]
6. **先MVP后完善**：第一版只做Google Trends + [[02-海外投流/MOC]] Creative Center + 1688三个源

---

## 六、客单价6000元+候选品类清单

满足客单价门槛且已过滤河北无产业带的候选池：

- 康复辅具/电动轮椅（河北保定有产业带✓）
- 医疗器械/家用检测设备（石家庄生物医药✓）
- 新能源汽车改装配件/车载冰箱（河北汽车零配件✓）
- 高端户外储能1500Wh+（非河北，需跨省）
- AI娃娃（非河北，单价适配）
- 商用小型设备（热水系统、冷链厨房）
- 宠物智能设备套装（自动喂食+饮水+监控打包）
- 园艺/家居工程套装（如光伏庭院灯+储能+控制系统）
- 电动自行车/滑板车（欧洲市场）
- 智能家居整装套件

---

## 七、后续行动选项

1. **轻量版**：只出SKILL.md + references（一小时能上手）
2. **重量版**：全套带Python爬虫（需要配API Key）

## 相关
- [[04-跨境选品与产品/MOC]]
- [[cross-border-selection-skill-design]]
- [[选品数据分析]]

## 相关知识点
- [[跨境选品]]
- [[市场调研]]
- [[供应链]]
- [[B2B外贸]]
- [[产品分析]]

## 合并补充（来自 Skill工程-跨境选品6维框架）
## 适用场景
- 适合平台：multi-platform
- 适合行业：综合
- 适合场景：选品研究


## 对我的业务有什么价值
- 对跨境贸易的价值：待补充
- 对 Facebook 投流的价值：待补充
- 对巨量本地推的价值：待补充
- 对客户开发的价值：待补充
- 对知识库沉淀的价值：待补充


## 一句话总结
> [在此填入一句话总结]


## 核心结论
> [根据内容提炼3-5条核心结论]


## 具体内容

# 跨境选品 Skill 工程——6维评分框架

> 来源：[[00-索引与导航/CLAUDE]] Share 对话 | 2026-04-20


## 一、6大维度评分框架

### 维度1：需求侧信号（权重25%）

领先指标 > 同期指标 > 滞后指标，不要只看海关数据。

| 数据层 | 具体指标 | 数据源 |
|--------|----------|--------|
| 领先（超前6-18月） | 专利申请趋势、早期融资、小KOC视频播放增速、Reddit讨论增速 | Google Patents、Crunchbase、TikTok创作者中心、Reddit API |
| 同期（当下热度） | Google Trends 5年斜率、TikTok热门商品/话题、亚马逊BSR月变化 | Google Trends、TikTok Creative Center、Helium10 API |
| 滞后（验证用） | 海关HS编码同比、平台月销 | 海关总署、Panjiva、Jungle Scout |

### 维度2：供给侧壁垒（权重15%）

红海要远离，蓝海有壁垒才赚钱。
- 1688/阿里国际站SKU数量、询盘价区间（越多越红海）
- 头部集中度CR5（超过60%是寡头，小玩家进不去）
- 专利数（壁垒越高溢价空间越大）
- 新品牌上架频率（过快=低门槛）

### 维度3：监管与合规（权重15%）

这是决定"能不能做"的一票否决项。
- 目标国海关准入（部分类目禁运/限运）
- 强制认证：CE/FCC/UL/PSE/CCC/FDA/NOM（墨西哥）/INMETRO（巴西）
- 平台广告政策：Meta/[[02-海外投流/MOC]]/Google是否允许投放（成人、医疗、金融被禁）
- 支付通道：PayPal/Stripe是否支持（成人、药品、武器禁用）
- 召回/预警频率：CPSC、RAPEX、FDA警告

### 维度4：代运营适配度（权重20%·核心约束）

这是别人没有你独有的维度，决定你接不接得了这个工厂。

| 子指标 | 打分口径 |
|--------|----------|
| 客单价≥6000元 | 单品≥6000 / 可打包组合≥6000 / 配套服务凑到6000 |
| 视觉冲击力 | 能否1-3秒短视频讲清价值 |
| 使用场景丰富度 | 场景数量<3个的难种草 |
| 决策链路 | 冲动消费>轻决策>重决策（选品偏前两者） |
| 耗材/复购属性 | 有耗材的LTV高3-5倍 |
| UGC易生成度 | 买家是否愿意晒单 |
| 私域转化适配 | 是否需要长链路教育 |

### 维度5：利润与现金流健康度（权重15%）

代运营吃的是工厂利润溢出部分，毛利<40%的品类别碰。
- 出厂毛利率（1688询盘价 vs 目标国零售价）
- 退货率（服装40%+、3C 10-15%、家居5-10%）
- 物流成本占比（DG锂电池、液体、尖锐物品额外成本）
- 账期（B2C款到发货 vs B2B 30-60天账期）

### 维度6：产业带契合度（权重10%·河北专属）

能不能1小时车程内落地客户。
- 河北重点8大产业匹配：钢铁/化工/生物医药/电子信息/新能源车/机器人/空天/数字
- 替代选项：汽车零配件、康复辅具、宠物用品、家电、医疗器械
- 若全国范围，加权降低到5%

---


## 二、评分公式

**综合得分** = 0.25×需求信号 + 0.15×供给壁垒 + 0.15×合规可行性 + 0.20×代运营适配 + 0.15×利润健康度 + 0.10×产业带契合

**一票否决项（任一触发则总分×0）：**
- 目标国明确禁运
- 平台广告完全禁止+私域也无支付通道
- 客单价<2000元且无打包可能
- 毛利率<25%

**分级：**
- ≥75分：立即重仓（深度调研+建客户池）
- 60-75分：关注并做小样测试
- 45-60分：观望+季度复盘
- <45分：放弃

---


## 三、Skill目录结构

```
cross-border-selection/
├── SKILL.md                           # 主入口，触发词+workflow
├── references/
│   ├── scoring_framework.md           # 6维度评分公式+权重表
│   ├── data_sources.md                # 20+数据源的API/爬取说明
│   ├── country_profiles/              # 西语11国国家档案
│   │   ├── mexico.md
│   │   ├── spain.md
│   │   ├── colombia.md
│   │   └── ...
│   ├── compliance_matrix.md          # 各国×各品类合规速查
│   └── hebei_industry_map.md          # 河北产业带×能做的出海品类
├── scripts/
│   ├── fetch_google_trends.py        # pytrends库
│   ├── fetch_tiktok_ads.py            # TikTok Creative Center
│   ├── fetch_amazon_bsr.py            # Jungle Scout/Helium10 / Keepa
│   ├── fetch_1688.py                  # 询盘价+SKU数
│   ├── fetch_customs_hs.py            # 海关HS编码月度数据
│   ├── fetch_patents.py               # Google Patents API
│   ├── fetch_reddit_signals.py        # PRAW
│   ├── fetch_meta_ads.py              # Meta Ads Library
│   └── scoring_engine.py              # 综合评分计算
├── templates/
│   ├── product_report.md              # 产品分析报告模板
│   ├── country_match.md               # 国家匹配报告模板
│   └── weekly_radar.md               # 每周趋势雷达扫描报告
└── examples/
    ├── case_ai_doll.md
    └── case_portable_power.md
```

---


## 四、12个必爬数据源

### 免费/低成本（优先接入）
1. Google Trends（pytrends库）——5年斜率+多国对比
2. [[02-海外投流/MOC]] Creative Center（web抓取）——Top Products/Ads/Hashtags by Country
3. Meta Ads Library（官方API）——谁在烧钱投这个品类
4. 1688阿里国际站（爬询盘价+新品数）
5. Google Patents（免费）——专利增速
6. Reddit PRAW（免费）——早期KOC讨论
7. MercadoLibre Trends（公开页）——西语市场风向标
8. 海关总署 HS编码查询（免费）——出口同比

### 付费/权威（预算允许再接）
9. Panjiva / ImportGenius——海外采购商名录+交易记录
10. Jungle Scout / Helium10 / Keepa——亚马逊销量估算
11. Crunchbase——融资信号
12. Statista——行业规模基准

---


## 五、关键设计原则

1. **数据源要可降级**：付费API挂了能退到免费源，skill不能因单一API失效崩掉
2. **评分透明可追溯**：每个分数来源都要写到报告里，客户谈判要用
3. **国家×产品是矩阵关系**：同一产品在墨西哥75分、在智利60分是常态，输出Top3国家排序
4. **输出要落到决策**：每份报告末尾必须给"立即重仓/关注/放弃"三选一
5. **搭配[[10-AI工具与自动化/MOC]]定时任务**：每周一早上跑"西语市场趋势雷达"，推送到[[10-AI工具与自动化/MOC]]
6. **先MVP后完善**：第一版只做Google Trends + [[02-海外投流/MOC]] Creative Center + 1688三个源

---


## 六、客单价6000元+候选品类清单

满足客单价门槛且已过滤河北无产业带的候选池：

- 康复辅具/电动轮椅（河北保定有产业带✓）
- 医疗器械/家用检测设备（石家庄生物医药✓）
- 新能源汽车改装配件/车载冰箱（河北汽车零配件✓）
- 高端户外储能1500Wh+（非河北，需跨省）
- AI娃娃（非河北，单价适配）
- 商用小型设备（热水系统、冷链厨房）
- 宠物智能设备套装（自动喂食+饮水+监控打包）
- 园艺/家居工程套装（如光伏庭院灯+储能+控制系统）
- 电动自行车/滑板车（欧洲市场）
- 智能家居整装套件

---


## 七、后续行动选项

1. **轻量版**：只出SKILL.md + references（一小时能上手）
2. **重量版**：全套带Python爬虫（需要配API Key）


## 相关
- [[04-跨境选品与产品/MOC]]
- [[cross-border-selection-skill-design]]
- [[选品数据分析]]


## 可复用方法
> [从内容中提取可复用的方法、框架、模板]


## 对我业务的价值
> [分析该研究对食品机械出口/跨境社媒获客的具体价值]


## 相关知识点
> [补充更多关联wikilink]


## 后续可提问的问题
1. [基于本文内容，第一个可深入探讨的问题]
2. [第二个问题]
3. [第三个问题]
4. [第四个问题]
5. [第五个问题]


## 待补充
- [ ] [需要补充的数据或信息]

