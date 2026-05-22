# 投流证据导入说明

> **用途**：用户统一放置投流相关资料的目录。
> **处理流程**：用户放入文件 → Claude Code 扫描 → 分类 → 脱敏 → 归档 → 索引 → 建 ID。

---

## 一、你应该放什么

| 资料类型 | 说明 | 示例 |
|----------|------|------|
| 广告后台数据 | Facebook/TikTok/LinkedIn Ads Manager 导出的 CSV/Excel | 花费、展示、点击、CPL |
| 广告后台截图 | Ads Manager 数据面板截图 | Campaign 级别数据 |
| 素材截图 | 你投放的广告素材（信息流中看到的） | 图片广告、视频广告 |
| 竞品广告截图 | Meta Ad Library / TikTok Creative Center 中的竞品广告 | 竞品素材、文案 |
| 聊天截图 | WhatsApp / Messenger 客户沟通记录 | 询盘、报价、成交 |
| 报价记录 | 发给客户的报价单 | PDF、截图、文本 |
| 成交记录 | 成交确认、合同、付款记录 | 截图、文本 |
| 视频素材 | 用于投放的视频文件 | MP4、MOV |

---

## 二、文件命名规范

### 【广告后台数据 CSV/Excel】

```
platform_country_industry_product_metrics_YYYYMMDD.csv
```

示例：
- `facebook_saudi_foodmachine_metrics_20260522.csv`
- `tiktok_ph_packaging_metrics_20260522.xlsx`

### 【广告后台截图】

```
platform_country_industry_product_dashboard_YYYYMMDD_001.png
```

示例：
- `facebook_saudi_foodmachine_dashboard_20260522_001.png`
- `tiktok_ph_packaging_dashboard_20260522_001.png`

### 【素材截图】

```
platform_country_industry_product_creative_YYYYMMDD_001.png
```

示例：
- `facebook_saudi_foodmachine_creative_20260522_001.png`
- `tiktok_ph_packaging_creative_20260522_001.png`

### 【竞品广告截图】

```
platform_country_industry_product_competitor_YYYYMMDD_001.png
```

示例：
- `facebook_saudi_foodmachine_competitor_20260522_001.png`

### 【客户聊天截图】

```
platform_country_product_leadchat_YYYYMMDD_001_sensitive.png
```

示例：
- `facebook_saudi_dumplingmachine_leadchat_20260522_001_sensitive.png`
- `whatsapp_ae_packaging_leadchat_20260522_001_sensitive.png`

---

## 三、重要注意

### 必须脱敏的文件（文件名含 `_sensitive`）

以下字段必须打码：
- **姓名** → Customer-A / Customer-B
- **手机号** → 保留国家码和末4位，中间打码
- **邮箱** → 首字母 + *** @ 域名
- **WhatsApp 号码** → 同手机号
- **公司地址** → 仅保留城市 + 国家
- **公司名** → 缩写首字母 + Corp

> 未脱敏的截图可以放入导入箱，但不会被嵌入 Obsidian 正文。
> 由 Claude Code 执行脱敏后再归档。

### 不需要脱敏的文件

- 广告后台数据截图（不含客户信息）
- 广告素材截图
- 竞品广告截图
- CSV/Excel 数据文件（不含客户个人信息时）

---

## 四、放入后会发生什么

1. Claude Code 定期扫描导入箱
2. 判断文件类型
3. 需要脱敏的文件标注 `_sensitive`
4. 数据进入对应证据层文档
5. 素材进入截图索引
6. 客户聊天进入转化/跟进记录
7. 生成 case_id / lead_id / creative_id
8. 更新路由系统

你只需要：**按命名规范放文件到这个目录。**
