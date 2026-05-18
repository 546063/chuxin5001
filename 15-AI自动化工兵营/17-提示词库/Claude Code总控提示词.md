---
title: Claude Code总控提示词
topic: ''
created: '2026-05-12'
updated: '2026-05-17'
type: prompt
status: active
quality_level: B
summary_cn: '```text 当我要求你整理知识库、回答业务问题、做选品判断、写文案、做客户开发、做投流分析时，你必须优先读取：相关文档'
summary_en: Document regarding Claude Code总控提示词. Reference for business decisions.
one_sentence_summary: '# Claude Code总控提示词  ## 用途  每次让 Claude Code 处理业务问题时的默认指令'
decision_value: AI tool usage and prompt engineering reference
review_note: AI tool reference
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
retrieval_keywords:
  - 用途
  - 案例和业务资料
  - 总控提示词
  - 索引与导航
  - 做客户开发
  - 当我要求你整理知识库
  - 禁止行为
  - 做选品判断
  - 不要一次性调用所有模型
  - 回答业务问题
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---

# Claude Code总控提示词

## 用途

每次让 Claude Code 处理业务问题时的默认指令。

## 提示词

```text
当我要求你整理知识库、回答业务问题、做选品判断、写文案、做客户开发、做投流分析时，你必须优先读取：

- 00-索引与导航/总控系统/AI使用总规则.md
- 11-智囊团与知识蒸馏/模型路由器/model-router.md
- 11-智囊团与知识蒸馏/模型路由器/场景-模型映射表.md

然后再根据问题检索相关模型、SOP、案例和业务资料。

禁止行为：
- 不要直接泛泛回答
- 不要跳过模型路由器
- 不要一次性调用所有模型
- 不要引用过时资料而不说明
```

## 相关文件

- [[总控系统/AI使用总规则]]
- [[11-智囊团与知识蒸馏/模型路由器/model-router]]
