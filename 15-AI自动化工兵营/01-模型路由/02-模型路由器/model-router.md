---
title: "模型路由器"
tags: "[AI工作流, 模型路由, 入口文档, 核心方法论]"
topic: ""
created: "2026-05-12"
updated: "2026-05-17"
type: "model_router"
status: "active"
quality_level: "B"
summary_cn: "知识库AI调用的大脑入口，实现问题分类、模型选择和资料检索的自动化路由。五段路由架构:L1免费层→L2日常主力→L3国产深度→L4全球尖刀→L5特殊备胎，覆盖85%国产流量+15%全球最强尖刀。"
summary_en: "Document regarding model-router. Reference for business decisions."
one_sentence_summary: "模型路由器": ""核心方法和实战经验。
decision_value: "AI automation documentation"
review_note: "General AI doc"
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
  - - - 模型路由
  - - - 五段路由
  - - - 场景映射
  - - - 调用规则
  - - - AI工作流
  - - - 入口
  - - - 问题分类
  - - - 模型选择
  - - --
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# 模型路由器

## 作用

知识库的大脑入口。任何问题先经过路由器，再分配到具体模型和资料。

## 核心规则

```text
先分类，后回答。
先调用模型，后查资料。
每次只调用 3-5 个模型。
简单问题只调用 1-2 个模型。
禁止一次性调用所有模型。
模型负责思考，业务资料负责事实，案例负责验证，SOP负责执行。
```

## 执行流程

1. **识别问题** → 理解用户在问什么
2. **分类场景** → 匹配 [[场景-模型映射表]] 中的场景
3. **选择模型** → 从 [[母模型库]] 中选 3-5 个对应模型
4. **检索资料** → 根据 [[模型调用优先级]] 检索SOP、案例、行业资料
5. **必要时搜索** → 按 [[总控系统/联网搜索规则]] 搜索最新信息
6. **综合输出** → 按 [[总控系统/输出格式总模板]] 格式输出

## 调用优先级

详见 [[模型调用优先级]]

## 场景映射

详见 [[场景-模型映射表]]

## 禁止行为

详见 [[禁止过度调用规则]]

## 默认调用链

详见 [[默认调用链]]

## 输出格式

详见 [[输出格式模板]]

## 相关文件

- [[场景-模型映射表]]
- [[模型调用优先级]]
- [[禁止过度调用规则]]
- [[默认调用链]]
- [[路由器测试案例]]
- [[总控系统/AI使用总规则]]
