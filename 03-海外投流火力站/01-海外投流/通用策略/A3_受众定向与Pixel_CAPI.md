---
title: A3 受众定向与Pixel_CAPI
topic: ''
created: '2026-04-28'
updated: '2026-05-17'
type: methodology
status: active
quality_level: B
summary_cn: 详解 iOS 14.5+ 后 IDFA 获取率降至 10-25% 对定向精度的影响，Broad 定向 + 好素材在 70%+ 场景优于兴趣定向。提供定向阶梯法（新账户兴趣
  3-5 个→成长期加 LAL→成熟期切 Broad），以及 Event Match Quality 从 3 分提升到 8 分的参数传递 SOP（email+phone+fbc+fbp+IP+UA+地址）。受众重叠率
  >30% 会互相抬 CPM，必须用排除或合并处理。
summary_en: Document regarding A3_受众定向与Pixel_CAPI. Reference for business decisions.
one_sentence_summary: B2B受众定向策略：客户类型×平台匹配，精准触达决策层
decision_value: Ad targeting and creative reference
review_note: 受众定向追踪参考
category: 海外投流
platform: Facebook/Meta
industry: 多行业
scenario: 定向策略
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[05-广告投流增长MOC]]
retrieval_keywords:
- Facebook B2B获客
- Facebook素材测试
- Facebook再营销受众
- 广告预算分配
- 广告素材疲劳诊断
routing_target:
  - "[[05-广告投流增长MOC]]"
---

# A3 受众定向与Pixel_CAPI

## 一句话总结
iOS 14.5+后定向范式变化、Broad定向/Advantage+ Audience/Lookalike策略、Pixel+CAPI双轨追踪SOP、Event Match Quality优化

## 核心结论
- iOS 14.5 ATT 后 IDFA 获取率降至 10-25%，传统兴趣定向和 Lookalike 精度显著下降，**Broad 定向 + 好素材**成为 2025-2026 年最佳实践
- **素材即定向**——广告内容本身决定谁停下来看，算法通过互动信号自动找到对的人，宽受众+好素材 > 精准定向+差素材
- Pixel+CAPI 双端部署将数据覆盖率从 ~55% 提升到 ~95%+，Event Match Quality ≥ 6 是 CPA 优化的前置条件
- 受众重叠 > 30% 是"隐形预算杀手"，多个 Ad Set 对同一批人出价会互相抬高 CPM，必须用排除或合并解决
- 账户成熟度决定定向策略：新账户用兴趣定向 3-5 个起步，成熟账户（>1000 转化）用 Broad + Advantage+ Audience

## 适用场景
- 适合平台：Facebook/Meta Ads Manager（Instagram/Audience Network 同理）
- 适合行业：DTC 电商（Broad 首选）、B2B/ SaaS（兴趣+Job Title）、高客单价服务（内容培育漏斗）、本地服务（Geo 限定）
- 适合场景：新账户定向搭建、定向策略迁移（兴趣→Broad）、Pixel/CAPI 部署、再营销 Campaign 搭建、受众重叠诊断

## 投流要素拆解
- 平台：Facebook/Meta
- 定向类型：Broad（广泛）/ Advantage+ Audience / Interest / Lookalike / Custom Audience
- 2026 年效果排名：Broad ⭐⭐⭐⭐⭐ > Advantage+ Audience ⭐⭐⭐⭐ > Interest ⭐⭐⭐ > LAL ⭐⭐
- 数据追踪：Pixel（浏览器）+ CAPI（服务器）双端回传，自动去重
- 关键指标：Event Match Quality ≥ 6.0、受众规模 > 100 万、重叠率 < 25%
- 可复用策略：按行业选定向（电商 Broad、B2B Interest+LAL、高客单价内容漏斗）
- 风险点：受众重叠抬 CPM、LAL 种子太小导致不稳定、再营销没排除购买者浪费预算
- 适合复用：[[食品加工机械]]B2B Interest 定向、DTC 电商 Broad 定向、高客单价培育漏斗

## 可复用方法
1. **定向阶梯法**：新账户兴趣定向 3-5 个 → 50-200 转化加 LAL 1-2% → >1000 转化切 Broad
2. **Event Match Quality 提升 SOP**：传 email + phone + fbc + fbp + IP + UA + 地址，3 周内可从 3 分提到 8 分
3. **受众重叠诊断流程**：选 2 个以上受众 → 点击 Overlap → >25% 用排除或合并
4. **再营销分层策略**：7 天加购未购买（热）/ 30 天访客（温）/ 180 天购买者（老客），不同频次不同素材
5. **受众命名规范**：`[类型]_[来源]_[天数]_[日期]`，例：CA_Website_Visitors_30d_202605

## 对我的业务有什么价值
- 对跨境贸易的价值：B2B 食品机械用 Interest（行业标签）+ LAL（客户列表种子）精准获客，避开 Broad 量太大的问题
- 对 Facebook 投流的价值：Broad 定向 + 好素材可降 CPM 40%，减少手动调优时间
- 对巨量本地推的价值：巨量的定向逻辑（兴趣+地域）与 Meta 有差异但受众重叠诊断方法通用
- 对客户开发的价值：再营销受众分层（热/温/老客）对应不同跟进话术，提高线索→成交转化率
- 对知识库沉淀的价值：定向策略是投流体系的关键组件，与账户结构、素材优化形成闭环

## 相关案例
- [[案例-食品加工机械-Facebook-再营销线索]] — B2B Interest 定向 + LAL 种子获客
- [[案例-美妆-Meta-ASC-护肤品DTC]] — Broad 定向 + ASC 全自动投放
- [[案例-发电机-Google-Facebook组合]] — 多平台受众协同策略
- [[案例-教育培训-Facebook-在线课程获客]] — Broad + Advantage+ Audience 获客

## 后续可提问的问题
- 我的行业适合用 Broad 定向还是兴趣定向？
- Pixel 事件匹配质量只有 3 分，怎么提升到 6 分以上？
- 受众重叠率 40% 了怎么办？
- LAL 种子需要多少人才能保证质量？
- 再营销受众多久更新一次？
- Shopify 商店如何一键开启 CAPI？
- Audience Network 要不要开启？
- iOS 14.5 后归因窗口缩短对长周期产品影响多大？
- CAPI 部署后数据还是不准怎么排查？
- Broad 定向下素材怎么设计才能起到"筛选"作用？

## 待补充
- 需要补充：2026 年各行业 Broad vs Interest 实测 CPA 对比数据
- 需要补充：Advantage+ Audience 最新功能变化
- 需要后续搜索：Meta 是否在 2026 年进一步合并定向选项

## 1. iOS 14.5+ 后的定向范式变化

### 核心影响
2021 年 iOS 14.5 推出 ATT（App Tracking Transparency）框架，用户需要主动授权才能被追踪。结果：
- **IDFA 获取率仅 10-25%**：大部分用户选择"不追踪"
- **Lookalike 质量下降**：基于 IDFA 的 LAL 失去信号源
- **兴趣定向精度降低**：跨 App 行为数据减少
- **Meta 的应对**：转向 Advantage+ AI 定向 + 素材即定向

### 新时代的"定向"逻辑
**素材 = 定向**。你的广告内容决定了谁会停下来看、谁会点击。算法通过互动信号（停留、点击、转化）自动找到对的人。

### 四种定向层级效果对比

| 层级 | 说明 | 2026 年效果 |
|------|------|-----------|
| Broad（广泛） | 仅设地区+年龄+性别 | ⭐⭐⭐⭐⭐ 最佳 |
| Advantage+ Audience | AI 在你的设定基础上扩展 | ⭐⭐⭐⭐ 推荐 |
| Interest（兴趣） | 选定兴趣标签 | ⭐⭐⭐ 可用但非最优 |
| Lookalike（类似受众） | 基于种子用户扩展 | ⭐⭐ 效果下降 |
| Custom Audience（自定义） | 再营销（网站访客、客户列表） | ⭐⭐⭐⭐ 再营销必备 |

### iOS 14.5+ 不损失量的定向策略
1. **Broad + 好素材**：让素材本身筛选用户
2. **First-party data**：积累自己的客户列表（email/phone），做 Custom Audience
3. **Engagement 漏斗**：先用 Engagement 目标收集互动用户 → 再对这些人跑 Conversion
4. **Advantage+ Shopping**：电商全自动，不依赖人工定向

---

## 2. 受众类型详解

### Broad 定向（推荐首选）
- **设置**：仅选地区、年龄范围、性别
- **不设**：兴趣、行为、Lookalike
- **原理**：让 Meta 算法根据广告内容和转化信号自动找人
- **适用**：日预算 > $50，有明确优化事件
- **数据**：2025 年测试显示 Broad 在 70%+ 场景下优于兴趣定向

### Advantage+ Audience
- Meta 把你的兴趣/年龄/性别设定作为"建议"，但会探索超出范围的用户
- **比纯 Broad 多一层引导**，适合刚开始用 Broad 的广告主
- 如果你的兴趣设定很准，Advantage+ 会在此基础上扩展

### Lookalike（效果已显著下降）
- 1% LAL 最精准但量小；5% LAL 量大但精准度下降
- **2026 年现状**：Broad + AI 在大多数场景下已超过 LAL
- **仍可用的场景**：B2B 窄受众、高客单价产品、种子用户质量极高

### Custom Audience（再营销核心）

| 受众类型 | 保留天数 | 用途 |
|---------|---------|------|
| 网站访客 30 天 | 30 天 | 放弃购物车挽回 |
| 网站访客 180 天 | 180 天 | 品牌再营销 |
| 视频观看 50%+ | 365 天 | 内容再营销 |
| 客户列表 | 永久 | 交叉销售/复购 |
| 互动用户（IG/FB） | 365 天 | 社交再营销 |

### 自定义受众类型与用法

| 受众类型 | 数据来源 | 适用场景 | 衰减期 |
|---|---|---|---|
| 网站访客 | Pixel 数据 | Retargeting | 最多 180 天 |
| 客户文件 | CRM 导出（邮箱/手机） | LAL 种子 / 直投 | 永久 |
| 互动受众 | Page/IG 互动 | 品牌认知受众 | 365 天 |
| 视频观看 | 3s/10s/ThruPlay | 中下漏斗 | 365 天 |
| App 活动 | App 安装/事件 | App 推广 | 180 天 |

---

## 3. 定向策略决策框架

### 何时用什么定向？

| 阶段 | 推荐定向 | 原因 |
|------|---------|------|
| 冷启动 | Broad + Advantage+ | 最大化学习空间 |
| 有种子用户 | Broad + LAL 1-3% 对比测试 | 验证 LAL 是否仍有优势 |
| 再营销 | Custom Audience（网站访客+客户列表） | 高意向用户 |
| 电商多产品 | Broad + 素材区分产品 | 用素材筛选受众 |
| B2B / 窄受众 | Interest（精准行业标签）+ Broad 对比 | 窄市场 Broad 可能找不到人 |

### 账户成熟度 → 定向策略映射

| 账户阶段 | Pixel 转化数据 | 推荐定向 | 说明 |
|---|---|---|---|
| **全新账户** | 0 | 兴趣定向 3-5 个 | 给系统一个起点 |
| **冷启动期** | 50-200 | 兴趣 + 1-2% LAL | 逐步收窄 |
| **成长期** | 200-1000 | 2-5% LAL + 自定义受众 | AI 开始发挥作用 |
| **成熟期** | >1000 | Broad + Advantage+ Audience | 完全信任 AI |

### 再营销策略矩阵

| 受众类型 | 热度 | 推荐出价 | 广告频次上限 | 内容方向 |
|---|---|---|---|---|
| **7 天加购未购买** | 🔥 热 | Lowest Cost 或略高 | 3-5 次/周 | 紧迫感（限时优惠/库存紧张） |
| **30 天网站访客** | 🟡 温 | 正常 | 2-3 次/周 | 社会证明 + 产品优势 |
| **90 天视频观看 50%+** | 🟡 温 | 正常 | 1-2 次/周 | 教育内容 + 信任建立 |
| **180 天购买者** | 🔵 老客 | 低出价 | 1 次/周 | 复购推荐 / VIP 专属 |

---

## 4. Pixel + CAPI 双端数据回传

### 4.1 为什么需要双轨追踪？

| 数据源 | 工作原理 | 数据丢失率 | 优势 |
|---|---|---|---|
| **Pixel（浏览器端）** | 通过浏览器 JavaScript 发送事件，受 ITP、广告拦截器、iOS 14.5+ ATT 框架影响 | 丢失 15-30% | 实时、含用户行为数据 |
| **CAPI（服务端）** | 通过服务器直接发送事件到 Meta，不受浏览器限制影响 | 丢失 < 5% | 不受 ITP/ATT 影响 |
| **双轨并行** | Pixel + CAPI 同时运行 → Meta 自动去重 → 获得最完整的转化数据 | 数据覆盖率从 ~55% 提升到 ~95%+ | 最佳方案 |

### 4.2 Event Match Quality（事件匹配质量）
- Meta 用 0-10 分评估事件匹配用户的准确度
- **关键参数**：email、phone、client_user_agent、fbc、fbp、client_ip_address、first_name、last_name、city、state、zip、country
- **目标分数**：≥ 6.0 为良好，≥ 8.0 为优秀
- **影响**：匹配质量越高 → 算法越精准 → CPA 越低

### 4.3 Pixel 安装方式

| 方式 | 适合 | 难度 |
|------|------|------|
| 合作伙伴集成（Shopify/WooCommerce） | 电商平台 | 简单 |
| Google Tag Manager | 自定义网站 | 中等 |
| 手动代码 | 定制开发网站 | 高 |

### 4.4 CAPI 设置方式

| 方式 | 适合 | 说明 |
|------|------|------|
| 合作伙伴集成 | Shopify/WooCommerce 等 | 一键开启，最简单 |
| Google Tag Manager (Server-Side) | 自定义网站 | 最灵活，需服务器 |
| Conversions API Gateway | 无服务器方案 | Meta 提供的中间层 |
| 直接 API 调用 | 开发团队 | 完全控制 |

### 4.5 必须追踪的事件（按优先级）
1. **Purchase** — 购买（电商核心事件）
2. **Lead** — 留资/表单提交
3. **AddToCart** — 加入购物车
4. **InitiateCheckout** — 发起结账
5. **ViewContent** — 浏览商品/页面
6. **CompleteRegistration** — 注册完成
7. **Subscribe** — 订阅

---

## 5. Pixel + CAPI 双轨设置 SOP

### 5.1 操作步骤
1. **创建 Pixel**：Events Manager → 创建新 Pixel
2. **安装 Pixel 基础代码**：放到网站所有页面的 `<head>` 中
3. **配置标准事件**：
   - Purchase 事件：放在 Thank You 页面，传 value + currency
   - Lead 事件：放在表单提交成功页
   - AddToCart：用 GTM 监听 addToCart 事件
4. **设置 CAPI**：
   - 电商平台：Settings → Integrations → Meta Conversions API → 连接
   - GTM Server-Side：配置 Server Container → 设置 Meta CAPI Tag
5. **配置去重**：
   - 每个事件必须传 `event_id`
   - Pixel 和 CAPI 用相同的 `event_id` → Meta 自动去重
6. **验证**：
   - Events Manager → Test Events → 模拟用户行为
   - 检查每个事件是否同时收到 Browser 和 Server 信号

### 5.2 Event Match Quality 优化
```
传递越多用户信息 → 匹配质量越高：
1. email（SHA-256 加密）
2. phone（SHA-256 加密）
3. fbc（Facebook Click ID，从 URL _fbc cookie）
4. fbp（Facebook Browser ID，从 _fbp cookie）
5. client_user_agent（浏览器 User Agent）
6. client_ip_address
7. first_name, last_name
8. city, state, zip, country
```

---

## 6. 定向执行 SOP

### 6.1 新账户定向设置
1. 创建 Campaign → 选 Conversion 目标
2. Ad Set 定向：
   - 地区：目标市场
   - 年龄：产品适合的范围（不要设太窄）
   - 性别：All（除非产品明确分性别）
   - **不设兴趣、不设 LAL**
3. 开启 Advantage+ Placements
4. 优化事件：选最深的可用事件（Purchase/Lead）
5. 投放 3-5 条不同角度的广告

### 6.2 再营销 Campaign 搭建
1. 创建 Campaign → Conversion 目标
2. Ad Set 定向：
   - Custom Audience：网站访客 30 天 / 放弃购物车 / IG 互动
   - 排除：已购买用户
3. 素材：强调社会证明（评价/案例）+ 紧迫感（限时优惠）
4. 预算：总预算的 10-20%

---

## 7. 数据指标体系

### 定向相关指标

| 指标 | 说明 | 基准 |
|------|------|------|
| 受众规模 | Ad Set 预估可触达人数 | Broad 通常 > 10M |
| 实际触达率 | Reach / 预估受众 | > 5% 为正常 |
| CPM | 千次展示成本 | Broad 通常低于 Interest |
| Frequency | 人均看到广告次数 | 再营销 3-5 次，冷受众 < 2 次 |
| 受众重叠率 | 多个 Ad Set 间的重叠 | > 30% 需合并 |

### Pixel/CAPI 相关指标

| 指标 | 说明 | 基准 |
|------|------|------|
| 事件匹配质量 | 0-10 分 | ≥ 6.0 良好 |
| 数据匹配率 | Server 事件 / 总事件 | > 80% |
| 去重率 | 重复事件占比 | < 10% |
| 信号丢失率 | 未匹配到的事件 | < 20% |
| 转化数（Pixel vs CAPI） | 对比差异 | CAPI 应比 Pixel 多 20-40% |

---

## 8. 诊断排查手册

### 定向相关

| 症状 | 原因 | 解法 |
|------|------|------|
| 受众太小（< 100万） | 兴趣/LAL 叠加太多条件 | 去掉限制条件，用 Broad |
| CPM 异常高 | 受众竞争激烈或太小 | 切换 Broad + 自动版位 |
| 频率 > 5 且 CTR 下降 | 受众饱和 | 扩展受众 / 换新素材 |
| LAL 效果差 | 种子用户质量低或太少 | 换高质量种子（购买用户 > 网站访客） |
| 再营销不转化 | 受众太小 / 素材没有新意 | 增加受众来源 / 换再营销专属素材 |

### Pixel/CAPI 相关

| 症状 | 原因 | 解法 |
|------|------|------|
| 转化数比实际少很多 | 浏览器追踪被拦截 | 开启 CAPI，建立服务端追踪 |
| 事件匹配质量 < 4 | 用户信息传得不够 | 增加 email、phone、fbc 等参数 |
| CAPI 数据量远超 Pixel | 去重没配置 | 检查 event_id 是否一致 |
| GTM Server-Side 不发送 | 容器配置错误 | 检查 Trigger 和 Tag 配置 |
| iOS 用户转化丢失 | ATT 框架限制 | CAPI 弥补 + Aggregated Event Measurement |

---

## 9. 实战案例

### 案例 1：兴趣定向 → Broad，CPM 降 40%
- 原设置：兴趣 "Fitness" + "Yoga" + "Wellness"，受众 2M
- 改 Broad（仅地区+年龄），受众 50M+
- 结果：CPM $12 → $7.2，转化量 +55%，CPA -30%

### 案例 2：LAL 失效，Broad 反超
- LAL 1% 基于 500 个网站访客，跑了 14 天
- 同时测试 Broad
- 结果：LAL CPA $38，Broad CPA $26，Broad 胜出

### 案例 3：Shopify 商店 CAPI 恢复 35% 丢失转化
- 只用了 Pixel，发现转化数比 Shopify 后台少 35%
- 开启 CAPI 集成，配置去重
- 结果：转化数恢复 98%，CPA 从 $32 降到 $24（算法数据更准了）

### 案例 4：事件匹配质量从 3.1 到 8.5
- 原配置：只传了 email
- 优化后：传 email + phone + fbc + fbp + IP + UA + 地址信息
- 结果：3 周内 CPA 降低 22%，ROAS 从 2.1 → 2.8

### 案例 5：再营销 + 冷受众双轨
- 冷受众 Campaign（Broad，80% 预算）
- 再营销 Campaign（网站访客 30 天，20% 预算）
- 结果：再营销 ROAS 5.2x，整体 ROAS 3.1x

## 心智模型
- [[A3_受众定向与Pixel_CAPI|Broad定向]]
- [[A3_受众定向与Pixel_CAPI|Lookalike]]
- [[A2_账户结构与出价策略|再营销分离]]
- [[A3_受众定向与Pixel_CAPI|Custom Audience]]
- [[A3_受众定向与Pixel_CAPI|iOS14.5定向]]
- [[A3_受众定向与Pixel_CAPI|Pixel+CAPI]]
- [[A3_受众定向与Pixel_CAPI|event_id去重]]
- [[A3_受众定向与Pixel_CAPI|Event Match Quality]]
- [[A3_受众定向与Pixel_CAPI|Shopify CAPI]]
- [[B1_学习期与归因机制|数据丢失]]

---

## 关联笔记
- 同系列：[[A1_底层逻辑与算法机制]]、[[A2_账户结构与出价策略]]、[[A4_策略决策框架]]、[[A5_执行SOP]]
- 数据优化：[[B1_学习期与归因机制]]
- 上游索引：[[Facebook投流索引]]、[[投流知识体系总览]]

## 标签
#Facebook投流 #海外投流 #定向策略 #Broad定向 #Lookalike #再营销 #Custom-Audience #iOS14.5 #Pixel #CAPI #EventMatchQuality #去重 #ops #海外投流-A系列

---

## 10. 受众重叠诊断与处理

> 受众重叠是"隐形预算杀手"。多个 Ad Set 对同一批人出价 = 自己抬自己的 CPM。

### 检测方法

1. Ads Manager → 受众（Audiences）
2. 选 2 个以上受众 → 点击"重叠"（Overlap）
3. 查看重叠百分比

### 重叠率判断标准

| 重叠率 | 判断 | 动作 |
|--------|------|------|
| < 10% | 正常 | 无需操作 |
| 10-25% | 轻度 | 关注，不影响当前投放 |
| 25-40% | 中度 | 考虑合并受众或分到不同 Campaign |
| > 40% | 严重 | 必须处理：合并受众或用排除 |

### 重叠处理策略

| 场景 | 策略 | 说明 |
|------|------|------|
| Broad + Interest | 不需要处理 | Broad 本身范围太大，少量重叠正常 |
| LAL 1% + LAL 3% | 用排除 | 在 LAL 3% 中排除 LAL 1% |
| Interest A + Interest B | 合并 | 合并成一个 Ad Set（AND/OR 逻辑） |
| Retargeting + Prospecting | 必须排除 | Prospecting 排除所有再营销受众 |
| 多 Campaign 同一产品 | 合并 | 合并到同一 Campaign，避免拍卖重叠 |

### 拍卖重叠（Auction Overlap）vs 受众重叠

| | 受众重叠 | 拍卖重叠 |
|--|---------|---------|
| 定义 | 两个受众的人群交集 | 同一账户的多个广告在同一拍卖中竞争 |
| 检测 | Audience Overlap 工具 | 在 Ads Manager 看不到，但 CPM 会异常高 |
| 后果 | 自己抬自己的 CPM | 内部竞争导致效率降低 |
| 解法 | 排除/合并受众 | 合并到同一 Campaign 或精简结构 |

---

## 11. Audience Network 深度解析

> 很多人不知道 Audience Network 是什么。它是 Meta 在第三方 App/网站上展示广告的网络。

### Audience Network 数据

| 指标 | 与 Facebook Feed 对比 |
|------|----------------------|
| CPM | 通常低 20-40% |
| CTR | 通常低 30-50% |
| CVR | 通常低 10-20% |
| 适用场景 | 游戏/娱乐类 App 用户 |

### 是否开启 Audience Network？

| 情况 | 建议 |
|------|------|
| 用 Advantage+ Placements（自动版位） | ✅ 开启，让系统自动决定 |
| 手动版位 + 品牌广告 | ✅ 可以开启 |
| 手动版位 + 电商转化广告 | 🟡 测试后决定 |
| 预算 < $50/天 | ❌ 关闭，集中火力在核心版位 |

---

## 12. 不同行业的定向策略差异

### 电商（DTC）

```
推荐策略：Broad + Advantage+ Audience
- 电商用户基数大，Broad 能找到足够多的人
- 素材本身充当"筛选器"
- 再营销用 Custom Audience（网站访客 + 加购未购买）
- LAL 仅作为辅助测试（种子 = 购买客户 > 1000 人）
```

### B2B / SaaS

```
推荐策略：Interest + Job Title + LAL
- 受众窄，Broad 效果通常不好
- 用 Job Title 定向（决策者）
- 用行业 Interest 缩小范围
- 用已有客户列表做 LAL 1-2%
- 再营销用 90 天网站访客 + 内容下载者
```

### 高客单价（>$500）

```
推荐策略：Broad（大受众）+ 内容培育漏斗
- 高客单价需要长培育周期
- 先用 Engagement/Video View 收集暖受众
- 再对暖受众跑 Conversion
- 再营销窗口拉长到 180 天
```

### 本地服务

```
推荐策略：Geo 限定 + Broad
- 限定半径（如门店 20 公里内）
- 不设兴趣定向
- 用本地化素材
- 再营销用门店访客 + Google Maps 搜索者
```

---

## 13. 受众创建与管理的最佳实践

### 自定义受众命名规范

```
格式：[类型]_[来源]_[天数/参数]_[日期]

示例：
- CA_Website_Visitors_30d_202605
- CA_ATC_NoPurchase_30d_202605
- CA_VideoView_50pct_365d_202605
- CA_EmailList_Customers_202605
- CA_IG_Engagement_90d_202605
```

### Lookalike 命名规范

```
格式：LAL_[种子类型]_[%]_[市场]_[日期]

示例：
- LAL_Purchasers_1pct_US_202605
- LAL_ATC_3pct_UK_202605
- LAL_EmailList_1pct_CA_202605
```

### 受众定期清理 SOP

**每月一次**：
1. 检查所有 Custom Audience 的规模变化
2. 删除规模 < 100 人的受众（数据不可用）
3. 合并功能重复的受众（如"7天访客"和"14天访客"保留一个）
4. 更新种子受众做 LAL（用最新购买数据替换旧种子）

### 受众健康度评分

| 指标 | 健康 | 警告 | 危险 |
|------|------|------|------|
| 受众规模 | > 100万 | 10万-100万 | < 10万 |
| 月活跃度（再营销受众） | > 30% 有新用户加入 | 10-30% | < 10% |
| LAL 种子大小 | > 1000人 | 100-1000人 | < 100人 |
| 与其他受众重叠 | < 25% | 25-40% | > 40% |

---

## 14. Pixel 事件追踪深度指南

### 电商标准事件追踪矩阵

| 事件 | 触发时机 | 必传参数 | 可选参数 |
|------|---------|---------|---------|
| ViewContent | 产品页加载 | content_name, content_category | value, currency |
| AddToCart | 点击"加入购物车" | content_name, value, currency | content_ids |
| InitiateCheckout | 进入结账页面 | value, currency, contents | payment_info_available |
| AddPaymentInfo | 添加支付信息 | value, currency | payment_type |
| Purchase | 支付成功页面 | value, currency, contents, order_id | discount, tax, shipping |
| Lead | 表单提交成功 | content_name | lead_type |

### Purchase 事件的标准参数

```javascript
fbq('track', 'Purchase', {
  value: 50.00,        // 订单金额
  currency: 'USD',     // 币种
  contents: [          // 购买的商品列表
    {id: 'SKU001', quantity: 1, item_price: 30},
    {id: 'SKU002', quantity: 2, item_price: 10}
  ],
  content_type: 'product',
  num_items: 3,        // 商品件数
  predicted_ltv: 150,  // 预测 LTV（可选）
  order_id: 'ORD-12345' // 订单号（去重用）
});
```

### 事件排错清单

| 症状 | 排查方法 | 解法 |
|------|---------|------|
| Purchase 不触发 | 用 Pixel Helper 看 Thank You 页面 | 检查代码是否在正确页面 |
| 转化数偏低 | 对比 Shopify 实际订单 | 检查 CAPI 是否已启用 |
| CAPI 不回传 | Test Events 看服务器信号 | 检查集成配置/API Token |
| 事件重复计数 | 检查 event_id 是否一致 | 确保 Pixel 和 CAPI 用相同 event_id |
| value 传了 0 | 代码中 value 参数为空 | 检查 Purchase 事件的 value 来源 |

## 相关知识点
- [[Facebook投流]]
- [[海外投流]]
- [[投流策略]]
- [[广告素材]]
- [[投流案例]]
- [[A1_底层逻辑与算法机制]]
- [[A2_账户结构与出价策略]]
- [[B1_学习期与归因机制]]
- [[Pixel追踪]]
- [[CAPI配置]]
