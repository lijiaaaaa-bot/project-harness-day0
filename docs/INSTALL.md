# 安装到新项目

1. 从本仓拷贝目录：`scripts/gates/`（含 `run-all.mjs`、`selftest.mjs`、`fixtures/`）。
2. 拷贝 `templates/facts.json.example` → 消费仓根 `facts.json`，按需求原文填 `facts[]`。
3. 拷贝 `docs/PROJECT_DELIVERABLE_NORMS.md`；可选拷贝 `SESSION_PROTOCOL.md`、`APPLY_MAP.md`、`CONTEXT_PLAYBOOK.md`、`CONTEXT_ENGINEERING_2026_Jun-Sep.md`。
4. 用 `templates/AGENTS.md` 生成薄 `AGENTS.md`；用 `templates/agent-progress.md` 建 `agent-progress.md`。
5. Makefile：`gates` → `node scripts/gates/run-all.mjs`；可选 `gates-selftest`。
6. CI：消费仓跑 `run-all.mjs`；本 harness 仓跑 `selftest.mjs`。
7. 翻车漏报：先改本 harness 的规则 + fixture，再升消费仓拷贝版本。
8. 过夜工单（可选）：拷贝 `docs/OVERNIGHT.md`、`templates/OVERNIGHT_ISSUE.md`；把 `templates/github/ISSUE_TEMPLATE/overnight_task.yml` 放到消费仓 `.github/ISSUE_TEMPLATE/`。
