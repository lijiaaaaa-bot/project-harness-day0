.PHONY: gates gates-selftest
gates:
	node scripts/gates/run-all.mjs
gates-selftest:
	node scripts/gates/selftest.mjs
