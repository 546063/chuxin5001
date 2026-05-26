---
title: "Obsidian跨境 知识库整理"
topic: ""
created: "unknown"
updated: "2026-05-17"
type: "research_note"
status: "active"
quality_level: "C"
summary_cn: "对，你说得对。   **应该拆成 6 段执行**，每一段都要:**先检查上一段 → 再执行本段 → 再生成报告**。这样不会一口气跑歪。⚙️相关文档"
summary_en: "Document regarding Obsidian跨境 知识库整理. Reference for business decisions."
one_sentence_summary: "六段式执行流程设计:将知识库治理分为只读审计、MOC草案等六个阶段，每阶段检查后再执行，避免一次性跑偏。"
decision_value: "Reference clipping, not actionable"
review_note: "Clipping, low decision value"
category: ""
platform: []
industry: []
scenario: []
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
  - [[00-目录总览MOC]]
retrieval_keywords:
  - AI读取入口
  - 知识库总索引
  - Obsidian治理
  - Claude Code规则
routing_target:
  - "[[00-目录总览MOC]]"
---
对，你说得对。  
**应该拆成 6 段执行**，每一段都要：**先检查上一段 → 再执行本段 → 再生成报告**。这样不会一口气跑歪。⚙️

下面你直接按顺序投给 Claude Code。

---

# 第 1 段：全库只读审计，不写入

```text
你现在是 Obsidian Vault 知识库治理工程师。

Vault 路径：
/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/

本阶段只读，不允许写入、不允许移动、不允许重命名、不允许删除。

任务：
1. 扫描全库一级/二级/三级目录
2. 统计每个目录 md 文件数量
3. 找出重复目录、语义相近目录、孤立目录、超大目录
4. 找出食品加工机械、跨境B2B、海外投流、Facebook、LinkedIn、出口贸易、客户开发、供应链相关内容
5. 判断现有内容应该挂在哪些目录下

输出到：
~/ai-workspaces/obsidian-audit/phase-1-vault-audit/

生成：
- 00-summary.md
- 01-folder-map.md
- 02-duplicate-directories.md
- 03-food-machinery-related-files.md
- 04-crossborder-b2b-related-files.md
- 05-next-phase-checklist.md

禁止：
- 修改 Vault
- 新建文件到 Vault
- 修复 wikilink
- 改 frontmatter

最后输出：
是否建议进入第 2 段。
```

---

# 第 2 段：检查第 1 段，再建立“总控 MOC 草案”

```text
你现在继续执行 Obsidian 知识库治理。

先检查：
~/ai-workspaces/obsidian-audit/phase-1-vault-audit/

必须读取：
- 00-summary.md
- 03-food-machinery-related-files.md
- 04-crossborder-b2b-related-files.md
- 05-next-phase-checklist.md

如果第 1 段报告缺失或不完整，立即停止并说明原因。

本阶段目标：
建立“食品加工机械海外增长总控台”的草案，不直接写入 Vault。

要求：
1. 不新增一级目录
2. 只设计二级/三级目录挂载方案
3. 明确哪些内容放到：
   - 00-索引与导航
   - 01-跨境社媒与获客
   - 02-海外投流
   - 04-跨境选品与产品
   - 05-跨境运营与客户开发
   - 06-行业案例库
   - 07-广告素材与创意
   - 10-AI工具与自动化
4. 生成总控 MOC 草案
5. 生成 AI 读取入口草案
6. 生成 Dataview 索引草案

输出到：
~/ai-workspaces/obsidian-audit/phase-2-moc-design/

生成：
- 00-phase-1-check.md
- 01-food-machinery-growth-moc-draft.md
- 02-folder-placement-plan.md
- 03-ai-entry-draft.md
- 04-dataview-index-draft.md
- 05-next-phase-checklist.md

禁止写入 Vault。

最后输出：
是否建议进入第 3 段。
```

---

# 第 3 段：建立行业基础知识模型

```text
你现在继续执行第 3 段。

先检查：
~/ai-workspaces/obsidian-audit/phase-2-moc-design/

必须读取：
- 00-phase-1-check.md
- 01-food-machinery-growth-moc-draft.md
- 02-folder-placement-plan.md
- 05-next-phase-checklist.md

如果第 2 段不完整，立即停止。

本阶段目标：
为“食品加工机械行业”建立基础知识模型，先输出草案，不写入 Vault。

需要覆盖：
1. 行业基础
   - 食品加工机械是什么
   - 上下游产业链
   - 工厂、经销商、进口商、终端客户关系
2. 产品分类
   - 切菜机
   - 洗菜机
   - 去皮机
   - 去骨机
   - 绞肉机
   - 锯骨机
   - 中央厨房设备
   - 净菜加工生产线
3. 客户类型
   - 食品厂
   - 中央厨房
   - 连锁餐饮
   - 超市
   - 肉类加工厂
   - 经销商
4. 采购决策模型
   - 价格
   - 产能
   - 稳定性
   - 售后
   - 认证
   - 交期
5. 内容营销模型
   - 工厂实力
   - 自动化效率
   - before/after
   - 人工替代
   - 食品安全

输出到：
~/ai-workspaces/obsidian-audit/phase-3-industry-model/

生成：
- 00-phase-2-check.md
- 01-industry-overview.md
- 02-product-category-map.md
- 03-customer-type-map.md
- 04-b2b-buying-model.md
- 05-content-angle-map.md
- 06-next-phase-checklist.md

禁止写入 Vault。

最后输出：
是否建议进入第 4 段。
```

---

# 第 4 段：产品数据库模板 + 3 个样例

```text
你现在继续执行第 4 段。

先检查：
~/ai-workspaces/obsidian-audit/phase-3-industry-model/

必须读取：
- 01-industry-overview.md
- 02-product-category-map.md
- 03-customer-type-map.md
- 04-b2b-buying-model.md
- 06-next-phase-checklist.md

如果第 3 段不完整，立即停止。

本阶段目标：
设计食品加工机械产品数据库。

拟放置位置：
04-跨境选品与产品/食品加工机械/

注意：
本阶段仍然先不写入 Vault，只输出模板和样例。

每个产品文件必须包含：
- 产品名称
- 英文名
- 产品功能
- 适用场景
- 目标客户
- 产品参数
- 核心卖点
- 海外客户痛点
- 认证要求
- 常见问题 FAQ
- 售后问题
- Facebook 内容角度
- LinkedIn 内容角度
- TikTok 内容角度
- SEO 关键词
- 相关产品
- 相关行业
- 相关客户类型

生成 3 个样例：
1. 自动切菜机
2. 蔬菜清洗机
3. 锯骨机/排骨处理设备

输出到：
~/ai-workspaces/obsidian-audit/phase-4-product-database/

生成：
- 00-phase-3-check.md
- 01-product-template.md
- 02-auto-vegetable-cutter-sample.md
- 03-vegetable-washing-machine-sample.md
- 04-bone-saw-rib-processing-sample.md
- 05-product-database-dataview.md
- 06-next-phase-checklist.md

禁止写入 Vault。

最后输出：
是否建议进入第 5 段。
```

---

# 第 5 段：出口贸易 + 认证 + 供应链知识框架

```text
你现在继续执行第 5 段。

先检查：
~/ai-workspaces/obsidian-audit/phase-4-product-database/

必须读取：
- 01-product-template.md
- 02-auto-vegetable-cutter-sample.md
- 03-vegetable-washing-machine-sample.md
- 04-bone-saw-rib-processing-sample.md
- 06-next-phase-checklist.md

如果第 4 段不完整，立即停止。

本阶段目标：
建立食品加工机械出口贸易、认证、供应链知识框架。

拟放置位置：
05-跨境运营与客户开发/出口贸易基础/
05-跨境运营与客户开发/食品机械认证与合规/
05-跨境运营与客户开发/供应链与交付/

需要覆盖：
1. 出口贸易基础
   - FOB
   - CIF
   - EXW
   - DDP
   - 报关
   - 清关
   - HS CODE
   - 海运
   - 集装箱
   - 国际支付
2. 食品机械认证
   - CE
   - FDA
   - HACCP
   - ISO22000
   - NSF
   - SGS
3. 国家市场
   - 美国
   - 欧盟
   - 东南亚
   - 中东
4. 供应链与交付
   - 工厂生产
   - 包装
   - 木箱
   - 交期
   - 售后配件
   - 英文说明书
   - 安装视频

输出到：
~/ai-workspaces/obsidian-audit/phase-5-export-compliance-supplychain/

生成：
- 00-phase-4-check.md
- 01-export-trade-map.md
- 02-certification-map.md
- 03-country-market-map.md
- 04-supplychain-delivery-map.md
- 05-factory-visit-question-list.md
- 06-next-phase-checklist.md

特别要求：
05-factory-visit-question-list.md 要生成我明天去工厂能直接问的问题清单。

禁止写入 Vault。

最后输出：
是否建议进入第 6 段。
```

---

# 第 6 段：海外获客闭环 + 最终写入建议

```text
你现在继续执行第 6 段。

先检查：
~/ai-workspaces/obsidian-audit/phase-5-export-compliance-supplychain/

必须读取：
- 01-export-trade-map.md
- 02-certification-map.md
- 03-country-market-map.md
- 04-supplychain-delivery-map.md
- 05-factory-visit-question-list.md
- 06-next-phase-checklist.md

如果第 5 段不完整，立即停止。

本阶段目标：
建立食品加工机械海外 B2B 获客闭环知识框架，并输出最终写入 Vault 的安全方案。

需要覆盖：
1. Facebook 获客
   - 内容方向
   - 广告方向
   - 表单广告
   - WhatsApp 转化
2. LinkedIn 获客
   - 采购商画像
   - 经销商开发
   - 工厂 IP
   - 私信开发
3. TikTok / Instagram
   - 工业视觉内容
   - 自动化演示
   - before/after
4. 客户开发
   - 邮件开发信
   - WhatsApp SOP
   - 报价前问题
   - 客户意向评分
5. 行业案例
   - 海外竞品
   - 海外经销商
   - 海外广告素材
   - 海外网站结构
6. AI 自动化
   - AI 找客户
   - AI 内容生成
   - AI 回复
   - AI CRM
   - Claude Code / Codex 工作流

输出到：
~/ai-workspaces/obsidian-audit/phase-6-growth-system-final-plan/

生成：
- 00-phase-5-check.md
- 01-facebook-growth-map.md
- 02-linkedin-growth-map.md
- 03-tiktok-instagram-content-map.md
- 04-whatsapp-sales-sop.md
- 05-competitor-case-research-plan.md
- 06-ai-automation-workflow.md
- 07-final-vault-write-plan.md
- 08-risk-and-rollback-plan.md

最后必须输出：
1. 是否可以写入 Vault
2. 建议写入哪些文件
3. 每个文件写到哪个目录
4. 哪些必须人工确认
5. 哪些可以自动创建
6. rollback 方案
7. 下一轮提示词

禁止直接写入 Vault。
```

---

# 你回去后怎么跑？

就按这个顺序：

```text
第1段 → 看报告
第2段 → 检查第1段再继续
第3段 → 检查第2段再继续
第4段 → 检查第3段再继续
第5段 → 检查第4段再继续
第6段 → 检查第5段再生成最终写入方案
```

# 关键原则

**前 6 段全部不要写入 Vault。**

先把：

- 目录
    
- 行业模型
    
- 产品模板
    
- 出口知识
    
- 获客闭环
    
- AI自动化
    

全部梳理出来。

明天你把第 6 段的：

```text
07-final-vault-write-plan.md
08-risk-and-rollback-plan.md
```

发我，我再帮你判断能不能正式写入 Obsidian。