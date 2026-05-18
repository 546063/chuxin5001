---
title: '"20-原始资料与下载暂存"'
topic: '"资料下载中转仓"'
created: '"unknown"'
updated: '2026-05-17'
type: '"research_note"'
status: '"active"'
quality_level: '"B"'
summary_cn: '"- Clippings - Raw - PDF 源文件 - 下载暂存 - 未整理素材 - 截图图片 - 临时备份相关文档"'
summary_en: '"Document regarding README. Provides reference for business decisions."'
one_sentence_summary: '"20-原始资料与下载暂存"'是'"资料下载中转仓"'领域的核心方法。
decision_value: '"低 - 原始资料库"'
review_note: '"下载暂存目录入口MOC，索引结构完整，子目录分类清晰"'
category: '"资料下载中转仓"'
platform: '[]'
industry: '[]'
scenario: '[]'
source_files: '[]'
merged_from: '[]'
old_versions: '[]'
archived_reason: '[]'
relations: '[]'
related:
  - [[01-全库工作总览MOC]]
retrieval_keywords:
  - 资料下载
  - 中转仓库
  - 下载管理
  - 文件归档
  - --
routing_target:
  - "[[17-资料下载归档MOC]]"

---

# 20-原始资料与下载暂存

## 这个目录放什么

- Clippings
- Raw
- PDF 源文件
- 下载暂存
- 未整理素材
- 截图图片
- 临时备份

## 不放什么

- 已整理的文档（应移到对应目录）
- 长期存档（99-Archive）

## 适合什么时候查

- 查找原始资料
- 查找下载文件
- 查找未整理素材

## 与其他目录的关系

- 原始资料库
- 临时存储
- 最终应整理或归档

## 未来迁移来源

- 当前 Vault 的 `Clippings`
- 当前 Vault 的 `raw`

---

## 子目录

```dataview
TABLE WITHOUT ID
file.link AS 目录,
decision_value AS 重要程度
FROM "20-原始资料与下载暂存"
WHERE !contains(file.name, "README")
SORT file.name
```