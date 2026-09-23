## Mission

（一句话：本轮要留下的可检查结果。）

## Predicate checklist

- [ ]
- [ ]

时长、轮次不是完成。未全勾 = 未完成。禁止放宽谓词。

## Isolation + permissions

- 分支 / worktree：`overnight/<slug>`
- 允许改：
- 禁止：自动合并；修改谓词；越出允许路径

## Non-goals

-

## Proof

真实产物（命令输出、测试、diff、文件路径）。聊天不是交付。

决策日志：`evidence/overnight-<slug>/decisions.tsv`  
列：`time | phase | decision | reason | evidence | result`

卡住：停止，在决策表写原因，推 PR，不自动合并。  
协议：`docs/OVERNIGHT.md`。退出码门禁仍在 `scripts/gates`。
