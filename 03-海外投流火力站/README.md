---
topic: ''
created: unknown
updated: '2026-05-17'
type: research_note
status: active
quality_level: B
summary_cn: README是关于''的核心文档，涵盖关键方法和实战经验。
summary_en: Document regarding README. Reference for business decisions.
one_sentence_summary: '- Facebook 投流 - LinkedIn 投流 - 广告账户与 BM 管理 - 受众与定向 - 广告优...'
decision_value: Advertising and traffic documentation
review_note: 目录说明文件
category: ''
platform: []
industry: []
scenario: []
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
  - --
routing_target:
  - "[[05-广告投流增长MOC]]"
---

# 03-海外投流

## 这个目录放什么

- Facebook 投流
- LinkedIn 投流
- 广告账户与 BM 管理
- 受众与定向
- 广告优化
- 数据诊断
- 低预算测试
- 再营销
- 广告政策与风控

## 不放什么

- 社媒账号运营（02-跨境社媒获客）
- 素材创意（04-内容素材与创意）
- 客户跟进（05-客户开发与成交）

## 适合什么时候查

- 投放 Facebook/LinkedIn 广告
- 诊断广告效果
- 优化受众定向
- 低预算测试
- 再营销策略

## 与其他目录的关系

- 与02-跨境社媒获客互补（付费 vs 免费）
- 与04-内容素材与创意提供素材
- 与08-投流数据与复盘提供分析

## 未来迁移来源

- 当前 Vault 的 `02-海外投流`
- 当前 Vault 的 `08-投流策略与复盘`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "~/ai-workspaces/AI-Workspace-Obsidian/03-海外投流"
WHERE !contains(file.name, "README")
SORT file.name
```