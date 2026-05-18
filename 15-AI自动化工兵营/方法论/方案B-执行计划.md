---
title: 方案B-执行计划
topic: ''
created: '2026-05-03'
updated: '2026-05-17'
type: learning
status: active
quality_level: B
summary_cn: '## 一句话总结 # 方案B执行计划：百度云课程 → Obsidian知识库相关文档'
summary_en: Document regarding 方案B-执行计划. Reference for business decisions.
one_sentence_summary: '# 方案B执行计划：百度云课程 → Obsidian知识库  ## 一句话总结 # 方案B执行计划：百度云课程 → Ob...'
decision_value: AI automation documentation
review_note: General AI doc
category: 学习资源
platform: 多平台
industry: 多行业
scenario: 学习
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: ''
related:
retrieval_keywords:
  - 对跨境贸易的价值
  - 流式
  - 适合场景
  - 按需拉流
  - 回答时调用
  - 有什么风险需要注意
  - 待补充
  - 需要补充的数据
  - 需要后续搜索的内容
  - 架构
  - --
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---





# 方案B执行计划：百度云课程 → Obsidian知识库

## 一句话总结
# 方案B执行计划：百度云课程 → Obsidian知识库

## 核心结论
- 待补充

## 适用场景
- 适合平台：
- 适合行业：
- 适合场景：

## 可复用方法
- 方法 1：待补充
- 方法 2：待补充

## 对我的业务有什么价值
- 对跨境贸易的价值：待补充
- 对 Facebook 投流的价值：待补充
- 对巨量本地推的价值：待补充
- 对客户开发的价值：待补充
- 对知识库沉淀的价值：待补充

## 相关案例
- [[相关案例]]（待补充）

## 后续可提问的问题
- 这个内容适合哪个行业复用？
- 这个策略适合什么平台？
- 这个方法的核心是什么？
- 有什么数据需要补充？
- 有什么风险需要注意？

## 待补充
- 需要补充的数据
- 需要补充的案例
- 需要后续搜索的内容
#待补充
## 架构

```
百度云 SVIP
    ↓（WebDAV / 流式）
AList（Docker，Mac本地，端口5244）
    ↓（按需拉流，不落盘）
whisper.cpp（Mac本地，ggml-large-v3-turbo）
    ↓（转写文本 + ffmpeg抽帧）
Obsidian Vault（iCloud同步）
    ↓（RAG检索）
Hermes回答时调用
```

## 磁盘约束

- Mac主数据盘：剩余11GB（紧张）
- 临时文件目录：`/Volumes/Untitled`（83GB可用）
- whisper.cpp模型约3GB + 临时文件 → 走外接盘

## 执行阶段

### 阶段0：文件准备
- `ingest.pdf` → 提取 `ingest.py`
- `SKILL.pdf` → 提取 `SKILL.md`
- 存到 `/Volumes/Untitled/baidu-course-plan-b/UNTL/`

### 阶段1：环境搭建（一次性）

| 步骤 | 操作 | 状态 |
|------|------|------|
| 1.1 | Docker起AList，端口5244，数据目录`~/.alist/data` | 待执行 |
| 1.2 | 浏览器登录http://localhost:5244，取初始密码 | 手动 |
| 1.3 | AList添加百度网盘存储（OAuth授权） | **手动，必须** |
| 1.4 | 克隆whisper.cpp到`~/Tools/whisper.cpp` | 待执行 |
| 1.5 | 编译whisper.cpp（WHISPER_COREML=1），下载ggml-large-v3-turbo模型 | 待执行 |
| 1.6 | pip安装依赖（webdavclient3、imagehash、Pillow） | 待执行 |
| 1.7 | 创建`~/.hermes/skills/baidu-course-ingestor/`并写入skill文件 | 待执行 |
| 1.8 | 创建`~/.hermes/secrets/alist.env`（占位符，你填凭证） | 待执行 |

### 阶段2：验证连通性
- Python连接AList WebDAV，列出根目录
- 验证ffmpeg、whisper-cli在PATH中可调用

### 阶段3：跑第一个课程（夜跑验证质量）
1. 选最急的一个课程目录
2. 先扫描：多少视频、总大小，确认后开始
3. 串行处理每集（转写+截图）
4. 每5集汇报进度
5. 完成后生成`_索引.md` + 更新"知识库索引.md"
6. **你验收质量**，满意再批量

### 阶段4：日常使用
一条消息触发：
> "把百度云盘里[课程名]这个课程整理进Obsidian"

## 手动步骤（AI无法代替）

1. **AList首次挂载百度云OAuth授权** — 百度安全机制
2. **whisper.cpp首次编译**

## 提示词

### 提示词1：首次环境搭建
```
任务：搭建百度云课程 → Obsidian 知识库的自动化管道，环境准备阶段。

背景：
- 我的Mac用户名mac，主机TaoiMac
- 百度云盘是SVIP账号
- Obsidian vault通过iCloud同步在~/Library/Mobile Documents/iCloud~md~obsidian/Documents/下
- 我已经有ffmpeg、Python、Docker
- 外接盘/Volumes/DataExt有47GB可用，可以用作临时目录

请按步骤执行并在每步完成后告诉我结果：
1. 用Docker起AList，挂载在5244端口，数据目录~/.alist/data
2. 取出AList初始密码，打印给我，让我浏览器登录http://localhost:5244
3. 暂停，等我回复"已登录并添加好百度网盘存储"后继续
4. 克隆whisper.cpp到~/Tools/whisper.cpp，用WHISPER_COREML=1编译，下载ggml-large-v3-turbo模型
5. pip安装webdavclient3、imagehash、Pillow（加--break-system-packages）
6. 创建skill目录~/.hermes/skills/baidu-course-ingestor/
7. 创建~/.hermes/secrets/alist.env模板（占位符我手填）
8. 输出一份"下一步我需要做什么"的清单

遇到报错先告诉我再判断是否继续，不要默默跳过。
全程不需要下载视频到本地，AList是流式挂载。
```

### 提示词3：日常使用（最高频）
```
任务：把百度云盘里"{课程目录名}"这个课程消化进Obsidian知识库。

参数：
- AList源路径：/百度云/课程/{课程目录名}
- 课程名（用于Obsidian分类）：{简短课程名}
- 是否启用视觉描述：{否 / 是}（羽毛球动作类选是，纯口播投流课选否）

执行策略：
1. 先ls一下源路径，告诉我有多少个视频、总大小估算，等我确认"开始"再跑
2. 串行处理每个视频（流式转写+抽帧），单个失败不影响下一个
3. 每完成5个视频汇报一次进度（完成数/总数/累计耗时/预估剩余）
4. 全部完成后：
   a. 生成课程索引文件_索引.md，按视频顺序列出所有章节标题+时长
   b. 在Obsidian vault根目录的"知识库索引.md"追加一行新课程记录
   c. 统计：总时长、总字数、截图数、Markdown总体积
5. 如果中途中断，下次跑同一条命令应该自动跳过已处理的视频

优先用MiniMax-M2.7处理编排，不要为截图调用VLM除非我打开了视觉描述开关。
全程不要把视频下载到本地磁盘，只能流式处理。
```

### 提示词4：查询知识库
```
我问你一个问题，你按以下优先级作答：
1. 先扫~/Library/Mobile Documents/iCloud~md~obsidian/Documents/{vault名}/课程笔记/下的所有.md
2. 用关键词 + frontmatter tag匹配，找最相关的3-5个片段
3. 片段里如果有时间戳（## 05:30 - 08:12这种），答完后附上"来源：{课程名}/{视频名} 05:30"让我能回视频对照
4. 如果课程笔记里找不到满意答案，再去web_search，但要明确告诉我"本地知识库没找到，以下是网上信息"
5. 如果两边都有且有冲突，同时列出并标明差异

今天的问题是：{你的具体问题}
```

## 现实提醒

1TB课程串行跑whisper大约需要100-200小时机时。

**建议做法：**
- **夜跑模式**：每晚睡前一条命令跑5-10集，早上起来看结果
- **优先级排序**：先抖音投流（最急用，变现相关）→ 其他业务课 → 羽毛球（兴趣）
- **第一周只跑1个课程**，看Markdown质量、截图密度、检索效果满不满意，再批量

**全自动可以达到，但第一个课程跑完你一定要亲自审一下产物质量**，不然1TB跑完才发现格式想改就惨了。

## 任务状态

- [x] 方案确认（2026-04-24）
- [ ] 明天10:00 手动操作AList OAuth授权
- [ ] 待执行：阶段1环境搭建（OAuth授权后）

## 关联笔记
- [[14-学习与成长/MOC]]
- [[02-海外投流/MOC]]
- [[11-智囊团与知识蒸馏/MOC]]
- [[00-方案总览]]
- [[百度云课程知识库方案]]


## 相关知识点
- [[学习资源]]
- [[方法论]]
- [[个人成长]]
- [[播客笔记]]
- [[书库]]
