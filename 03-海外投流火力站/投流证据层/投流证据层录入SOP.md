---
title: "投流证据层录入SOP"
aliases:
  - "证据层录入SOP"
  - "Evidence Layer Entry SOP"
tags:
  - evidence-layer
  - sop
  - data-entry
  - 投流证据层
type: "SOP"
module: "投流证据层"
routing_target:
  - evidence_layer_entry
  - evidence_entry_sop
  - paid_ads_router
quality_level: "S"
summary_cn: "投流证据层录入 SOP，定义从广告平台导出数据到证据层录入的完整流程。"
summary_en: "Evidence layer entry SOP defining the complete workflow from ad platform data export to evidence layer entry."
related:
  - "[[投流证据层总入口]]"
  - "[[投流证据层字段规范]]"
  - "[[投流证据层脱敏规则]]"
  - "[[投流证据层复盘模板]]"
retrieval_keywords:
  - "怎么录入投流数据"
  - "证据层录入流程"
  - "广告数据怎么记录"
  - "截图怎么命名"
decision_value: "证据层操作指南，确保所有证据录入格式统一、流程规范。"
created: "2026-05-22"
updated: "2026-05-22"
---

# 投流证据层录入 SOP

> **适用范围**：所有投流证据层文档的录入操作。
> **前置阅读**：[[投流证据层字段规范]]、[[投流证据层脱敏规则]]

---

## 一、数据录入流程

### 1.1 广告数据录入

```
1. 从 Ads Manager 导出数据
   ↓
2. 确定记录周期（日/周/ Campaign 周期）
   ↓
3. 生成 record_id（DATA-YYYYMMDD-001）
   ↓
4. 填写核心指标：impressions / clicks / spend / cpm / ctr / cpc
   ↓
5. 填写转化指标：leads / cpl / conversions / cpa / revenue / roas
   ↓
6. 填写 metadata：platform / country / campaign / objective / data_source
   ↓
7. 标记 verified_status = pending
   ↓
8. 确认数据准确性后改为 verified
   ↓
9. 同步更新 CSV 文件
   ↓
10. 关联到对应案例（如有）
```

### 1.2 案例录入

```
1. 确认投放已完成或达到复盘节点
   ↓
2. 生成 case_id（CASE-YYYYMMDD-001）
   ↓
3. 填写投放前基线数据
   ↓
4. 填写投放数据摘要
   ↓
5. 上传素材截图（按命名规范）
   ↓
6. 填写定向策略
   ↓
7. 填写结果分析（成功经验/失败教训）
   ↓
8. 与知识库参考级数据对比
   ↓
9. 填写后续行动
   ↓
10. 更新案例索引表
```

### 1.3 线索录入

```
1. 收到询盘（WhatsApp/Email/表单/私信）
   ↓
2. 脱敏处理客户信息
   ↓
3. 生成 lead_id（LEAD-YYYYMMDD-001）和 customer_id（Customer-A）
   ↓
4. 判断线索分级（A/B/C/D）
   ↓
5. 记录询盘内容和来源
   ↓
6. 记录首次响应时间
   ↓
7. 每次跟进更新 follow_up_log
   ↓
8. 状态变更时更新 lead_status
   ↓
9. 成交后创建 conversion_id 并关联
```

### 1.4 客户转化录入

```
1. 确认成交
   ↓
2. 生成 conversion_id（CONV-YYYYMMDD-001）
   ↓
3. 关联 lead_id 和 case_id
   ↓
4. 填写成交金额和周期
   ↓
5. 计算 conversion_days
   ↓
6. 更新转化漏斗汇总
```

---

## 二、截图录入流程

```
1. 在 Ads Manager / 信息流中截取广告素材
   ↓
2. 按命名规范命名：
   平台_国家_行业_产品_素材类型_日期_编号.png
   ↓
3. 存放到 20-原始资料与下载暂存/投流素材截图/
   ↓
4. 在 [[广告素材截图索引]] 中登记
   ↓
5. 关联到对应案例
   ↓
6. 竞品截图加 competitor_ 前缀，在 [[竞品广告素材截图索引]] 中登记
```

---

## 三、频率建议

| 操作 | 频率 | 说明 |
|------|------|------|
| 广告数据记录 | 每日 或 每周 | 根据投放频率调整 |
| 截图存档 | 每次投放新素材 | 及时保留 |
| 案例复盘 | 每个 Campaign 结束 | 或每两周一次 |
| 线索录入 | 收到即录入 | 不要积压 |
| 转化录入 | 成交后 24 小时内 | 及时记录 |

---

## 四、质量控制

| 检查项 | 方式 | 频率 |
|--------|------|------|
| 数据准确性 | 对比 Ads Manager 原始数据 | 每次录入后 |
| 脱敏合规 | 检查是否暴露客户真实信息 | 每次录入后 |
| 编号唯一性 | 检查是否重复 | 每次录入时 |
| 字段完整性 | 必填字段是否填写 | 每次录入后 |
| 截图命名规范 | 是否符合命名格式 | 每次上传时 |
| verified_status | pending 的记录是否及时验证 | 每周 |

---

## 五、常见问题

### Q: 不确定某个字段填什么？
A: 参考 [[投流证据层字段规范]]，如果仍不确定，先填"待确认"，后续补充。

### Q: 多个产品在一个 Campaign 中？
A: 按 Campaign 记录一条，在 product 字段用逗号分隔，如 "dumpling-machine, packaging-line"。

### Q: 截图太多怎么管理？
A: 按月份建立子文件夹（如 2026-05/），但索引表中统一记录完整路径。

### Q: 客户不愿意被脱敏记录？
A: 向客户说明数据仅用于内部分析，不对外公开。如仍有顾虑，可仅记录脱敏后的数据。
