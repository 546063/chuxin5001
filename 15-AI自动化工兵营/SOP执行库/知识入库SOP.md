---
title: "知识入库SOP"
tags: "[AI工作流, 自动化SOP, 知识库治理]"
topic: ""
created: "2026-05-12"
updated: "2026-05-17"
type: "sop"
status: "active"
quality_level: "A"
summary_cn: "判断内容是否值得入库以及如何入库的标准流程。值得入库的内容包括可复用判断方法、文案结构、真实项目经验、SOP等。不值得入库的包括一次性聊天记录、未验证观点等。"
summary_en: "Document regarding 知识入库SOP. Reference for business decisions."
one_sentence_summary: "知识入库SOP": ""核心方法和实战经验。
decision_value: "Build AI automation workflows and scripts"
review_note: "Core AI automation playbook"
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
retrieval_keywords:
  - - - 知识入库
  - - - SOP
  - - - 知识库
  - - - 筛选标准
  - - - 内容治理
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# 知识入库SOP

## 目的

什么内容值得入库，什么不值得，以及怎么入库。

## 值得入库的内容

- 以后会重复使用的判断方法
- 以后会重复使用的文案结构
- 真实项目中的成功经验
- 真实项目中的失败教训
- 可复用的客户话术
- 可复用的投流判断规则
- 可复用的行业资料
- 可复用的SOP

## 不值得入库的内容

- 一次性聊天记录
- 没验证过的观点
- 大段复制粘贴的文章
- 没有应用场景的金句
- 没有来源的数据
- 过期的平台规则

## 入库步骤

### 1. 判断归属
- 属于哪个业务文件夹
- 是否需要新建文件夹

### 2. 统一格式
- 必须有 YAML Frontmatter
- 必须符合对应类型的模板格式
- 标签体系：类型标签、业务标签、行业标签、场景标签、状态标签

### 3. 建立关联
- 相关模型链接
- 相关SOP链接
- 相关案例链接

### 4. 状态标注
- `#status/待验证` — 新入库，还没验证过
- `#status/已验证` — 实际项目中验证过
- `#status/归档` — 过时或暂时不用

## 建议

- 每周让AI帮忙整理一次未归档文件
- 每月清理一次 `#status/归档` 的内容
