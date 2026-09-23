# Overnight / 无人值守长跑

跨项目**编排协议**：代理过夜、多轮、无人值守时如何开单、循环、停手。  
这不是退出码门禁。墙仍在 `scripts/gates`（`make gates`）。Overnight **不替代** gates。

## 四条柱

1. **可检查的完成谓词。** 时长、轮次、「跑一夜」都不是完成。谓词是可勾选清单；未全勾 = 未完成。禁止为了收工放宽谓词。
2. **隔离。** 单独分支或 git worktree。只改工单允许的路径与权限。
3. **决策日志。** 路径 `evidence/overnight-<slug>/decisions.tsv`。列：`time | phase | decision | reason | evidence | result`（制表符分隔）。每轮一行。样例：`templates/evidence/overnight-example/decisions.tsv`。
4. **逃生口。** 卡住就停，写下为什么。推 PR，**永不自动合并**。不得改谓词假装完成。

## 工单形状

- **Mission**：要留下的结果，一句话。
- **Predicate checklist**：可勾选、可复核的完成条件。
- **Isolation + permissions**：分支或 worktree、允许路径、禁止操作。
- **Non-goals**：本轮不做的事。
- **Proof**：真实产物（命令输出、测试、diff、文件）。聊天不是证明。

正文模板：`templates/OVERNIGHT_ISSUE.md`。  
GitHub 表单（拷到消费仓 `.github/ISSUE_TEMPLATE/`）：`templates/github/ISSUE_TEMPLATE/overnight_task.yml`。

## 循环

1. 对照谓词：已全勾则停，整理证明并开 PR。
2. 否则做**最小且有理由**的改动。
3. 用**真实产物**验证（跑命令、读文件、看退出码）。
4. **保留或丢弃**该改动。
5. 在 `decisions.tsv` **记一行**。
6. 重复。

同一失败没有新证据，或允许范围内无法再推进：走逃生口。停止，写原因，推 PR，不合并。

## 反模式

- 把时长、轮次、「值守到早上」写成目标。
- 只有构建者自评通过，没有谓词勾选或真实产物。
- 把聊天记录当交付。
- 静默伪造数据、日志或通过结果。

## 和门禁的关系

Overnight 管编排：何时改、何时停、记什么。  
`scripts/gates` 管退出码：文稿与事实是否过墙。两边都要，互不替代。
