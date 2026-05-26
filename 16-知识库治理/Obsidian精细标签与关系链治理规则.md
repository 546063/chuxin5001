# Obsidian 精细标签与关系链治理规则

> 版本：v1.0
> 创建日期：2026-05-23
> 适用范围：/Users/mac/ai-workspaces/AI-Workspace-Obsidian

---

## 1. 标签规则

### 1.1 禁止过泛标签

以下标签**禁止使用**，太泛，不利于检索：

| 禁止标签 | 替代方向 |
|---------|---------|
| `#Facebook` | `#facebook广告/素材测试` 等细分 |
| `#投流` | `#facebook广告/...`、`#tiktok广告/...` 等 |
| `#AI` | `#ai工作流/...`、`#ai模型路由/...` 等 |
| `#视频` | `#视频工厂/脚本结构` 等 |
| `#客户` | `#客户开发/WhatsApp承接` 等 |
| `#营销` | 按具体渠道和动作细分 |
| `#案例` | 用 `#客户开发/成交复盘` 或具体行业标签 |
| `#知识库` | `#知识库治理/...` 细分 |

### 1.2 精细标签体系

#### Facebook 投流类

```
#facebook广告/素材测试
#facebook广告/受众分层
#facebook广告/再营销
#facebook广告/线索表单
#facebook广告/主页私信
#facebook广告/落地页转化
#facebook广告/B2B获客
#facebook广告/短视频素材
#facebook广告/素材疲劳
#facebook广告/询盘承接
```

#### TikTok 投流类

```
#tiktok广告/素材策略
#tiktok广告/受众定向
#tiktok广告/再营销
#tiktok广告/表单广告
#tiktok广告/电商带货
#tiktok广告/B2B获客
#tiktok自然流量/内容策略
#tiktok自然流量/合规边界
```

#### LinkedIn 类

```
#linkedin获客/内容冷启动
#linkedin获客/决策人开发
#linkedin获客/私信话术
#linkedin广告/B2B线索
#linkedin广告/职位定向
```

#### 国内投流类

```
#巨量引擎/账户策略
#巨量引擎/素材优化
#巨量引擎/线索承接
#本地推/行业打法
#本地推/案例拆解
```

#### 食品机械类

```
#食品机械/切肉机
#食品机械/切菜机
#食品机械/清洗机
#食品机械/饺子机
#食品机械/包子机
#食品机械/中东市场
#食品机械/东南亚市场
#食品机械/工厂筛选
#食品机械/客户询盘
#食品机械/视频素材
```

#### 视频工厂类

```
#视频工厂/脚本结构
#视频工厂/开头钩子
#视频工厂/B-roll
#视频工厂/口播剪辑
#视频工厂/素材库
#视频工厂/案例拆解
#视频工厂/投流素材复用
```

#### 客户开发类

```
#客户开发/WhatsApp承接
#客户开发/私信开场
#客户开发/报价跟进
#客户开发/异议处理
#客户开发/成交复盘
#客户开发/B2B长周期成交
```

#### 选品类

```
#选品/市场调研
#选品/竞品分析
#选品/供应链
#选品/风险评估
#选品/定价策略
```

#### AI 工作流类

```
#ai工作流/模型路由
#ai工作流/知识蒸馏
#ai工作流/自动化脚本
#ai工作流/Obsidian治理
#ai工作流/ClaudeCode
```

#### 知识库治理类

```
#知识库治理/frontmatter
#知识库治理/wikilink
#知识库治理/MOC
#知识库治理/断链修复
#知识库治理/标签规范
#知识库治理/关系链
```

#### 个人成长类

```
#个人成长/书籍蒸馏
#个人成长/思维模型
#个人成长/课程笔记
#个人成长/商业人物
#个人成长/播客笔记
```

### 1.3 标签数量规则

| 规则 | 要求 |
|------|------|
| 每篇文章标签数 | **3-6 个**，不超过 8 个 |
| 领域标签 | 至少 **1 个**（如 `#facebook广告/素材测试`） |
| 动作标签 | 至少 **1 个**（如 `#客户开发/WhatsApp承接`） |
| 场景标签 | 至少 **1 个**（如 `#食品机械/中东市场`） |
| 禁止只有平台标签 | 不能只有 `#facebook广告/` 没有细分 |

---

## 2. 关系链规则

### 2.1 链接数量

每篇文章只链接真正相关的 **3-8 篇**文章。

### 2.2 关系链类型

#### 上游关系

内容生产前的依赖文档。

> 例：广告素材测试文章 → 视频脚本结构、素材库、客户画像

#### 下游关系

内容生产后的承接文档。

> 例：Facebook 线索广告文章 → WhatsApp 承接话术、报价跟进、成交复盘

#### 横向关系

同级别、同阶段的不同平台/方法对比。

> 例：Facebook B2B 获客 ↔ LinkedIn B2B 获客

#### 案例关系

案例与策略/行业的关联。

> 例：某投流案例 → 对应行业策略、素材策略、复盘文档

#### SOP 关系

方法与执行的关联。

> 例：短视频脚本文章 → 视频剪辑 SOP、投流素材测试 SOP

#### 业务闭环关系

完整业务链路。

> 例：食品机械选品 → 工厂筛选 → 视频素材 → Facebook 投流 → WhatsApp 承接 → 成交复盘

### 2.3 禁止行为

- 一篇文章链接几十篇无关文章
- 所有 Facebook 文章都互链
- 所有食品机械文章都互链
- 只因为同属一个大类就互链
- 使用 `[[Facebook]]`、`[[投流]]`、`[[AI]]` 等空泛链接
- 用模板批量生成关系链，不看实际内容

---

## 3. frontmatter 规则

### 3.1 标准模板

重点文档应包含：

```yaml
---
title: "文档标题"
aliases:
  - "别名1"
  - "Alias 2"
tags:
  - "#领域/细分"
  - "#动作/细分"
  - "#场景/细分"
type: article | sop | case_study | reference | config | template
domain: overseas_marketing | food_machinery | video_factory | client_development | ai_workflow | knowledge_governance | personal_growth | personal_finance | personal_life
scenario: ad_testing | lead_generation | whatsapp_followup | content_production | case_review | factory_research | market_research | knowledge_cleanup
platform: facebook | tiktok | linkedin | ocean_engine | douyin | wechat | youtube | instagram
product_line: food_machinery | smart_lock | generator | adult_product | other
funnel_stage: awareness | lead_capture | qualification | follow_up | closing | retention
related:
  - "相关文件1"
  - "相关文件2"
summary_cn: "中文摘要，1-2句话概括核心价值"
summary_en: "English summary, 1-2 sentences"
retrieval_keywords:
  - "关键词1"
  - "关键词2"
decision_value: "什么场景下应该读这篇：解决了什么问题、避免了什么坑"
quality_level: S | A | B | C | D
updated: "2026-05-23"
---
```

### 3.2 字段说明

#### domain（领域）

| 值 | 说明 |
|----|------|
| `overseas_marketing` | 海外投流、社媒获客 |
| `food_machinery` | 食品加工机械 |
| `video_factory` | 视频内容生产 |
| `client_development` | 客户开发、成交 |
| `ai_workflow` | AI 工具、工作流 |
| `knowledge_governance` | 知识库治理 |
| `personal_growth` | 学习成长、书籍蒸馏 |
| `personal_finance` | 财务账单 |
| `personal_life` | 生活兴趣项目 |

#### scenario（场景）

| 值 | 说明 |
|----|------|
| `ad_testing` | 广告素材测试 |
| `lead_generation` | 线索获取 |
| `whatsapp_followup` | WhatsApp 跟进 |
| `content_production` | 内容生产 |
| `case_review` | 案例复盘 |
| `factory_research` | 工厂调研 |
| `market_research` | 市场调研 |
| `knowledge_cleanup` | 知识库治理 |

#### funnel_stage（漏斗阶段）

| 值 | 说明 |
|----|------|
| `awareness` | 认知/曝光 |
| `lead_capture` | 线索捕获 |
| `qualification` | 线索筛选 |
| `follow_up` | 跟进 |
| `closing` | 成交 |
| `retention` | 留存/复购 |

#### quality_level（质量等级）

| 等级 | 标准 |
|------|------|
| **S** | 实战验证、可直接复用 |
| **A** | 高价值参考 |
| **B** | 一般资料 |
| **C** | 低价值，待合并 |
| **D** | 建议归档或删除 |

### 3.3 related 填写规则

- `related` 中的每一项必须是**当前主库中真实存在的文件**
- 用文件名（不含 .md）或完整路径
- 不要填不存在的链接
- 每条 related 应有明确关系理由

### 3.4 retrieval_keywords 填写规则

- 3-8 个关键词/短语
- 包含：核心概念、别名、业务术语
- 用于 AI 检索时的模糊匹配

### 3.5 decision_value 填写规则

- 一句话说明：什么场景下该读这篇文章
- 解决什么问题、避免什么坑、提供什么决策依据
- 不是摘要，是"为什么要读"的理由

---

## 4. 治理执行原则

### 4.1 安全操作

- 只修改 frontmatter，不修改正文
- 不重写文档内容
- 不删除任何内容
- 不移动任何文件

### 4.2 渐进式治理

- 先规则，后执行
- 先 dry-run，后写入
- 先重点目录，后全库
- 先样本修复，后批量修复

### 4.3 防泛滥

- 不批量生成无意义互链
- 不使用泛泛标签
- 不为每篇文章都补满 8 个标签
- 不链接不相关的文档

---

*规则文档版本 v1.0，2026-05-23 创建。*
