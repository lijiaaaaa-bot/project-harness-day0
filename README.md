# project-harness-day0

跨项目 Day-0 harness：交付门禁、agent 薄协议、看板监督规矩。  
业务栈（Nest/Vue/MQTT 域模型等）不在本仓；本仓只提供**基础、协议、检测、开工驱动**。

## 心智模型

| 层 | 作用 | 本仓落点 |
|----|------|----------|
| 记分板 | 什么叫完成 | `make gates` / CI 绿；（代码项目另加 test） |
| Spec | 人读规范 | `docs/PROJECT_DELIVERABLE_NORMS.md` |
| Verifiers | 机器闸 | `scripts/gates/*.mjs` + 消费方 `facts.json` |
| 同构自测 | 翻车升规则 | `make gates-selftest` + `scripts/gates/fixtures/` |
| Agent 协议 | 少上下文、可验收 | `templates/AGENTS.md`、`docs/SESSION_PROTOCOL.md` |

Skill / 提示词只提醒安装；**墙是 exit code**。

## 新项目 Day-0（拷贝清单）

1. 拷贝 `scripts/gates/`、`templates/facts.json.example` → 仓根 `facts.json`（按**需求原文**填 `facts[]`）。
2. 拷贝 `docs/PROJECT_DELIVERABLE_NORMS.md`、`docs/SESSION_PROTOCOL.md`（可按项目改措辞，勿删闸语义）。
3. 从 `templates/AGENTS.md` 生成薄 `AGENTS.md`（只写目标一行、入口命令、禁止项、协议指针）。
4. 可选：`docs/APPLY_MAP.md`、`docs/CONTEXT_PLAYBOOK.md`、`templates/agent-progress.md` → `agent-progress.md`。
5. Makefile 增加 `gates` / `gates-selftest`；CI 用 `.github/workflows/deliverable-gates.yml`。
6. 约定：未过 gates 不得宣称文档/方案完成；完成 = 合并 PR / 关 Issue / STATUS 一行；聊天不算交付。

## 一边用一边改

- **改 harness**：基础规则、协议模板、fixture 类、CI 模板 → 本仓发版。
- **改业务仓**：只改产品与域契约；发现漏报 → 先在本仓升规则 + fixture，再让业务仓对齐版本。
- 禁止只在业务仓补丁故事而不升 harness。

## 本地验

```bash
make gates-selftest   # 夹具须全绿
# 填好 facts 后在消费仓：
make gates
```

## 版本

v0.1 — 从 mushroom-farm-platform 门禁/协议抽出并去业务化；首个消费者为食用菌平台仓。
