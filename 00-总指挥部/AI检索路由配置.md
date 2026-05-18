---
title: "AI检索路由配置"
aliases:
  - "AI Retrieval Routing Config"
  - "知识库路由配置"
  - "模型路由配置"
tags:
  - "AI检索"
  - "路由配置"
  - "模型路由"
  - "Obsidian治理"
topic: "AI检索、知识库路由、模型路由和项目专项路由配置"
created: "2026-05-17"
updated: "2026-05-17"
type: "tool_config"
status: "active"
quality_level: "S"
summary_cn: "本文是Obsidian知识库的AI检索路由配置文件，定义知识库检索、模型选择、项目专项路由、鱼缸路由、财务路由、食品机械路由和客户开发路由的配置标准。它适用于Claude Code、OpenClaw、Codex、ChatGPT等工具协同工作时的路由判断，能让AI根据问题类型自动选择MOC、目录、主文稿、模型和执行器。AI后续执行知识库查询、批量治理、鱼缸记录、财务分析和客户沟通任务时，应优先读取本文。"
summary_en: "This configuration file defines routing rules for knowledge retrieval, model selection, project routes, and execution tools in the Obsidian knowledge base."
one_sentence_summary: "这是一份让AI知道该查哪里、用什么模型、由谁执行的路由配置表。"
decision_value: "帮助AI在不同任务中选择正确MOC、文稿、模型、工具和执行机器。"
review_note: "该配置文件是AI检索执行协议的配套配置，应与AI总路由系统、AI知识库路由系统和AI模型路由系统联动使用。"
category: "AI自动化"
platform:
  - "Obsidian"
  - "Claude Code"
  - "OpenClaw"
  - "Codex"
  - "ChatGPT"
industry:
  - "知识库治理"
scenario:
  - "AI检索"
  - "模型路由"
  - "项目路由"
  - "多Agent协同"
source_files: []
merged_from: []
old_versions: []
archived_reason: ""
relations:
  - type: "supports"
    target: "[[AI检索执行协议]]"
    note: "本文为AI检索执行协议提供可执行配置表。"
  - type: "part_of"
    target: "[[AI总路由系统]]"
    note: "属于AI总路由系统的配置层。"
  - type: "supports"
    target: "[[AI模型路由系统]]"
    note: "定义模型和执行器选择规则。"
related:
  - "[[AI检索执行协议]]"
  - "[[AI总路由系统]]"
  - "[[AI知识库路由系统]]"
  - "[[AI模型路由系统]]"
  - "[[鱼缸项目路由（待创建）]]"
retrieval_keywords:
  - "AI检索路由配置"
  - "知识库MOC路由表"
  - "模型选择配置"
  - "Claude Code执行器路由"
  - "OpenClaw只读扫描配置"
  - "鱼缸项目检索配置"
  - "Obsidian routing_target配置"
  - "RAG Top K配置"
routing_target:
  - "[[AI总路由系统]]"
  - "[[AI模型路由系统]]"
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "chatgpt"
  - "codex"
  - "claude-code"
  - "openclaw"
project_route:
  - "knowledge_governance"
---

# AI检索路由配置

## 中文总结

本文是 AI 检索执行协议的配套配置文件。它把用户问题、工作类型 MOC、项目路由、模型路由、执行器和检索模式整理成可执行的配置表。AI 后续收到问题时，应先读取本文，根据问题类型选择 `routing_target`、`project_route`、`model_route` 和 `retrieval_mode`，再决定进入哪个 MOC、读取哪些主文稿、调用哪个模型和工具。本文适用于 Obsidian 主库检索、食品机械项目、投流项目、客户开发、财务分析、鱼缸项目和 AI 工具治理。

## English Summary

This file provides routing configuration for AI retrieval in the Obsidian knowledge base. It maps task types to MOCs, metadata filters, retrieval modes, model routes, and execution tools.

## 一句话结论

用户问题先匹配路由配置，再决定查哪个 MOC、读哪些文稿、用哪个模型和工具。

---

# 1. 配置总览

## 1.1 路由主文件

```yaml
main_routing_files:
  ai_total_route: "[[AI总路由系统]]"
  knowledge_route: "[[AI知识库路由系统]]"
  model_route: "[[AI模型路由系统]]"
  retrieval_protocol: "[[AI检索执行协议]]"
  fish_tank_route: "鱼缸项目路由文件暂时缺失，待补充"
```

## 1.2 默认检索流程

```yaml
default_retrieval_flow:
  - classify_intent
  - detect_project_route
  - select_work_type_moc
  - select_directory_moc
  - metadata_filter
  - keyword_search
  - semantic_search_if_needed
  - related_graph_expand
  - rerank_top_k
  - read_final_notes
  - answer_or_execute
```

## 1.3 默认 Top K

```yaml
top_k_policy:
  simple_question: 3
  normal_business_question: 5
  complex_analysis: 8
  high_risk_decision: 8
  governance_scan: "scan_only_then_report"
```

---

# 2. 工作类型 MOC 配置

```yaml
work_type_mocs:
  global_overview:
    file: "[[01-全库工作总览MOC]]"
    category: "全库总览"
    use_when:
      - "不知道问题属于哪个领域"
      - "需要总入口"
      - "需要检查全库结构"

  ai_reading:
    file: "[[02-AI读取入口MOC]]"
    category: "AI读取入口"
    use_when:
      - "AI需要理解主库结构"
      - "新Agent接入"
      - "Claude Code/OpenClaw/Codex读取规则"

  foreign_trade:
    file: "[[03-外贸市场情报MOC]]"
    category: "外贸市场情报"
    use_when:
      - "外贸认知"
      - "国家市场"
      - "B2B采购逻辑"
      - "物流清关认证"

  social_media:
    file: "[[04-跨境社媒获客MOC]]"
    category: "跨境社媒获客"
    use_when:
      - "Facebook主页"
      - "LinkedIn开发"
      - "TikTok内容"
      - "WhatsApp引流"

  ads_growth:
    file: "[[05-广告投流增长MOC]]"
    category: "广告投流增长"
    use_when:
      - "Facebook线索广告"
      - "TikTok广告"
      - "Google广告"
      - "LinkedIn Ads"
      - "巨量本地推"
      - "素材测试"
      - "无效线索过滤"

  content_creative:
    file: "[[06-内容素材创意MOC]]"
    category: "内容素材创意"
    use_when:
      - "短视频脚本"
      - "广告素材"
      - "产品卖点"
      - "图文文案"
      - "内容钩子"

  client_development:
    file: "[[07-客户开发成交MOC]]"
    category: "客户开发成交"
    use_when:
      - "客户开发"
      - "线索判断"
      - "客户画像"
      - "成交路径"

  communication_review:
    file: "[[08-客户沟通复盘MOC]]"
    category: "客户沟通复盘"
    use_when:
      - "WhatsApp话术"
      - "价格异议"
      - "交期异议"
      - "客户跟进"
      - "销售复盘"

  factory_evaluation:
    file: "[[09-工厂探访评估MOC]]"
    category: "工厂探访评估"
    use_when:
      - "探厂问题"
      - "工厂资质"
      - "供应链评估"
      - "合作风险"

  food_machine:
    file: "[[10-食品机械作战MOC]]"
    category: "食品加工机械"
    use_when:
      - "食品机械"
      - "清洗机"
      - "切菜机"
      - "肉类加工设备"
      - "食品机械海外获客"
      - "食品机械客户沟通"

  product_research:
    file: "[[11-选品产品研究MOC]]"
    category: "选品产品研究"
    use_when:
      - "选品"
      - "产品研究"
      - "市场容量"
      - "利润判断"
      - "产品合规"

  competitor_cases:
    file: "[[12-行业竞品案例MOC]]"
    category: "行业竞品案例"
    use_when:
      - "竞品"
      - "行业案例"
      - "标杆账号"
      - "广告案例"

  domestic_business:
    file: "[[13-国内业务代运营MOC]]"
    category: "国内业务代运营"
    use_when:
      - "国内代运营"
      - "国内投流"
      - "抖音本地推"
      - "国内项目复盘"

  ai_tools:
    file: "[[14-AI工具自动化MOC]]"
    category: "AI工具自动化"
    use_when:
      - "Claude Code"
      - "OpenClaw"
      - "Codex"
      - "多Agent"
      - "模型配置"
      - "Obsidian治理"

  finance:
    file: "[[15-财务账单分析MOC]]"
    category: "财务账单分析"
    use_when:
      - "支付宝账单"
      - "微信账单"
      - "银行流水"
      - "年度支出"
      - "季度分析"

  learning:
    file: "[[16-学习成长蒸馏MOC]]"
    category: "学习成长蒸馏"
    use_when:
      - "商业播客"
      - "大师蒸馏"
      - "创业认知"
      - "销售认知"
      - "内容创作学习"

  download_archive:
    file: "[[17-资料下载归档MOC]]"
    category: "资料下载归档"
    use_when:
      - "下载文件"
      - "待整理资料"
      - "原始素材"
      - "PDF"
      - "截图"

  case_review:
    file: "[[18-成交案例战报MOC]]"
    category: "成交案例战报"
    use_when:
      - "成交案例"
      - "失败案例"
      - "投流案例"
      - "行业案例"
      - "工厂合作案例"
```

---

# 3. 项目专项路由配置

```yaml
project_routes:
  fish_tank:
    name: "鱼缸项目"
    route_file: "鱼缸项目路由（待创建）"
    moc: "鱼缸项目MOC（待创建）"
    directory: "19-个人生活与兴趣项目"
    trigger_keywords:
      - "鱼缸"
      - "水质"
      - "换水"
      - "喂食"
      - "鱼病"
      - "过滤"
      - "硝化"
      - "水草"
      - "加热棒"
      - "鱼缸AI管家"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
    safety_rule:
      - "不编造水质数值"
      - "没有记录时要求补测"
      - "不替代兽医或专业水族诊断"

  finance:
    name: "财务项目"
    route_file: "[[15-财务账单分析MOC]]"
    directory: "17-个人财务与账单分析"
    trigger_keywords:
      - "账单"
      - "支出"
      - "银行流水"
      - "支付宝"
      - "微信支付"
      - "年度财务"
      - "季度分析"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "top_k_rerank"
    safety_rule:
      - "原始流水只读"
      - "不修改原始记录"
      - "高风险结论需用户确认"

  food_machine:
    name: "食品机械项目"
    route_file: "[[10-食品机械作战MOC]]"
    directory: "10-食品加工机械作战体系"
    trigger_keywords:
      - "食品机械"
      - "切菜机"
      - "清洗机"
      - "肉类加工"
      - "中央厨房"
      - "食品机械获客"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
      - "top_k_rerank"

  client_development:
    name: "客户开发项目"
    route_file: "[[07-客户开发成交MOC]]"
    directory:
      - "05-客户开发与成交"
      - "06-客户沟通复盘"
      - "09-销售过程复盘"
    trigger_keywords:
      - "客户"
      - "询盘"
      - "线索"
      - "成交"
      - "报价"
      - "异议"
      - "WhatsApp"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"

  ads:
    name: "广告投流项目"
    route_file: "[[05-广告投流增长MOC]]"
    directory:
      - "03-海外投流火力站"
      - "14-国内投流"
    trigger_keywords:
      - "Facebook广告"
      - "线索广告"
      - "投流"
      - "素材测试"
      - "无效线索"
      - "巨量本地推"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "semantic_search"
      - "top_k_rerank"

  knowledge_governance:
    name: "知识库治理"
    route_file: "[[AI知识库路由系统]]"
    directory:
      - "00-总指挥部"
      - "15-AI自动化工兵营"
      - "16-知识库治理"
    trigger_keywords:
      - "Obsidian"
      - "MOC"
      - "Properties"
      - "路由"
      - "双链"
      - "关系图谱"
      - "质量评级"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
```

---

# 4. 模型路由配置

```yaml
model_routes:
  planning:
    task: "规划、拆任务、验收"
    executor:
      - "ChatGPT"
      - "Codex"
    preferred_model:
      - "GPT-5.5"
    write_permission: false
    use_when:
      - "制定方案"
      - "写提示词"
      - "验收报告"
      - "高层架构"

  obsidian_batch_write:
    task: "Obsidian批量写入"
    executor:
      - "Claude Code"
    preferred_model:
      - "qwen3.6-plus"
      - "qwen3-coder-plus"
    machine:
      - "iMac主控"
      - "Mac mini Worker"
    write_permission: true
    lock_required: true
    use_when:
      - "批量Properties修复"
      - "批量related修复"
      - "MOC创建"
      - "Markdown整理"

  readonly_scan:
    task: "只读扫描"
    executor:
      - "OpenClaw"
      - "Mac mini Worker"
    preferred_model:
      - "GLM"
      - "MiniMax"
      - "Qwen"
    write_permission: false
    use_when:
      - "断链扫描"
      - "空字段扫描"
      - "报告生成"
      - "外部资料初筛"

  web_research:
    task: "外部资料采集"
    executor:
      - "OpenClaw"
    preferred_model:
      - "GLM"
      - "MiniMax"
      - "Qwen"
    write_permission: false
    output_target:
      - "20-资料下载中转仓"
    use_when:
      - "网页搜索"
      - "行业资料采集"
      - "案例采集"

  code_debug:
    task: "代码和配置排障"
    executor:
      - "Claude Code"
    preferred_model:
      - "qwen3-coder-plus"
      - "Kimi"
    write_permission: true
    lock_required: true
    use_when:
      - "脚本修复"
      - "YAML解析错误"
      - "路径检查"
      - "模型配置"

  high_risk_decision:
    task: "高风险决策"
    executor:
      - "ChatGPT"
      - "Codex"
      - "iMac主控Claude Code"
    preferred_model:
      - "GPT-5.5"
      - "高级模型"
    write_permission: "manual_confirm"
    use_when:
      - "财务判断"
      - "客户原始资料"
      - "删除旧备份"
      - "主库结构大改"
      - "高价值业务决策"

  fish_tank_analysis:
    task: "鱼缸分析"
    executor:
      - "ChatGPT"
      - "Claude Code"
    preferred_model:
      - "Qwen"
      - "GPT-5.5"
    write_permission: "log_only_with_confirm"
    use_when:
      - "水质分析"
      - "鱼病观察"
      - "设备异常"
      - "维护SOP"
```

---

# 5. 检索模式配置

```yaml
retrieval_modes:
  metadata_filter:
    description: "先用Properties字段筛选候选文稿"
    fields:
      - "routing_target"
      - "project_route"
      - "quality_level"
      - "category"
      - "scenario"
      - "platform"
      - "industry"

  keyword_search:
    description: "用标题和retrieval_keywords精确召回"
    fields:
      - "title"
      - "aliases"
      - "retrieval_keywords"
      - "topic"

  semantic_search:
    description: "用户表达不标准时使用语义检索"
    use_when:
      - "用户问题没有明确关键词"
      - "同义词较多"
      - "关键词搜索结果少于3篇"

  related_graph:
    description: "通过related和relations扩展一层或两层关系"
    max_depth:
      normal: 1
      complex: 2
    fields:
      - "related"
      - "relations"

  top_k_rerank:
    description: "对候选文稿按质量、匹配度和场景排序"
    default_top_k:
      simple: 3
      normal: 5
      complex: 8
```

---

# 6. 重排序配置

```yaml
rerank_rules:
  boost:
    quality_level_S: 5
    quality_level_A: 3
    routing_target_match: 5
    project_route_match: 5
    scenario_match: 4
    retrieval_keywords_exact_match: 4
    title_exact_match: 3
    related_mutual_link: 2
    relations_supports_or_part_of: 2
    recently_updated: 1

  penalty:
    quality_level_C: -2
    generic_keyword_only: -4
    topic_mismatch: -4
    scenario_mismatch: -3
    process_log: -5
    old_version: -5
    raw_record_not_needed: -3
```

---

# 7. 任务到路由配置

```yaml
task_routes:
  "食品机械海外获客":
    project_route: "food_machine"
    routing_target:
      - "[[10-食品机械作战MOC]]"
      - "[[05-广告投流增长MOC]]"
      - "[[06-内容素材创意MOC]]"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
      - "top_k_rerank"
    model_route:
      - "chatgpt"
      - "claude-code"

  "Facebook线索广告":
    project_route: "ads"
    routing_target:
      - "[[05-广告投流增长MOC]]"
      - "[[07-客户开发成交MOC]]"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "semantic_search"
      - "top_k_rerank"
    model_route:
      - "chatgpt"
      - "openclaw"

  "客户价格异议":
    project_route: "client_development"
    routing_target:
      - "[[08-客户沟通复盘MOC]]"
      - "[[07-客户开发成交MOC]]"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
    model_route:
      - "chatgpt"
      - "claude-code"

  "鱼缸水质异常":
    project_route: "fish_tank"
    routing_target:
      - "鱼缸项目路由文件暂时缺失，待补充"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
    model_route:
      - "chatgpt"
      - "claude-code"
    safety:
      - "不编造水质数据"
      - "无记录则要求补测"

  "年度财务分析":
    project_route: "finance"
    routing_target:
      - "[[15-财务账单分析MOC]]"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "top_k_rerank"
    model_route:
      - "chatgpt"
      - "claude-code"
    safety:
      - "原始流水只读"
      - "高风险结论需确认"

  "Obsidian知识库治理":
    project_route: "knowledge_governance"
    routing_target:
      - "[[AI知识库路由系统]]"
      - "[[14-AI工具自动化MOC]]"
    retrieval_mode:
      - "metadata_filter"
      - "keyword_search"
      - "related_graph"
    model_route:
      - "claude-code"
      - "openclaw"
      - "codex"
```

---

# 8. 安全配置

```yaml
safety_rules:
  forbidden_commands:
    - "rm"
    - "rm -rf"
    - "find -delete"
    - "rsync --delete"

  protected_content:
    - "财务原始记录"
    - "银行流水"
    - "账单"
    - "合同"
    - "付款记录"
    - "客户原始沟通"
    - "唯一工厂探访记录"
    - "鱼缸原始日志"
    - "当前主Vault"
    - "iCloud备份"
    - "NAS备份"
    - "外部归档"

  write_rules:
    require_lock: true
    max_batch_size: 30
    imac_master_required:
      - "主库结构大改"
      - "MOC重建"
      - "路由系统修改"
      - "旧备份删除"
      - "财务/客户/原始记录处理"

  openclaw_default:
    permission: "read_only"
    write_allowed: false
```

---

# 9. 路由失败回退配置

```yaml
fallback_rules:
  no_result:
    - "扩大到相邻MOC"
    - "使用semantic_search"
    - "使用related_graph扩展1层"
    - "仍无结果则询问用户"

  too_many_results:
    - "优先quality_level S/A"
    - "优先routing_target命中"
    - "优先scenario匹配"
    - "只取Top K"

  wrong_route:
    - "重新判断project_route"
    - "检查routing_target"
    - "进入AI总路由系统"
    - "记录路由失败点"

  model_failed:
    - "Qwen失败则换GPT-5.5或高级模型"
    - "OpenClaw失败则Claude Code只读扫描"
    - "Claude Code写入冲突则iMac主控接管"
```

---

# 10. 验收配置

```yaml
acceptance_checks:
  retrieval:
    - "是否命中正确MOC"
    - "是否读取S/A主文稿"
    - "是否只读取Top 3-8篇"
    - "是否避免全库乱搜"
    - "是否没有使用D级文稿"

  graph:
    - "related: [] = 0"
    - "routing_target: [] = 0"
    - "related断链 = 0"
    - "routing_target断链 = 0"
    - "relations target断链 = 0"
    - "孤立文稿 = 0"

  model:
    - "是否选对执行器"
    - "是否避免高成本模型滥用"
    - "是否按风险等级选择写入权限"
    - "是否需要用户确认"

  backup:
    - "主Vault正常"
    - "iCloud备份正常"
    - "NAS备份正常"
    - "Trash隔离区未清空"
```

---

# 11. 维护规则

每新增一篇文稿，必须补：

```yaml
quality_level:
routing_target:
retrieval_keywords:
related:
relations:
summary_cn:
summary_en:
one_sentence_summary:
```

每新增一个项目，必须补：

```yaml
project_route:
项目路由文稿:
项目MOC:
routing_target:
retrieval_keywords:
```

每新增一种执行器或模型，必须更新：

1. [[AI模型路由系统]]
2. [[AI检索路由配置]]
3. [[AI检索执行协议]]

每新增一种业务场景，必须更新：

1. 对应工作类型 MOC
2. 对应目录总览 MOC
3. [[AI知识库路由系统]]
4. 本配置文件
