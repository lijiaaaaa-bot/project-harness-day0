# <产品名>

## 目标（一句话）

## 技术栈（一行）

## 统一入口
- 开发/测试：`make …`
- 文档闸：`make gates`（exit 0 才算文档过关）

## 事实源（勿把聊天当事实）
- `facts.json`、contracts、已合并 PR、关闭的 Issue、STATUS.md

## 上下文纪律
- 默认少给；需要时再读文件
- 独立结论用新会话/子 agent；主会话只收摘要
- 完成 = 测试/gates/PR，不是自评
- 过夜长跑：`docs/OVERNIGHT.md`（谓词验收；决策记 `evidence/overnight-<slug>/decisions.tsv`）

## 禁止
- 文件名/标题用「独立/好看/完美」等元词
- 把需求原文标成假定
- 无证据的完成百分比
