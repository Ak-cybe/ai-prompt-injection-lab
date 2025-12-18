# Tests (Prompt Injection Regression)

This folder documents how to run automated regression tests for OWASP LLM01 Prompt Injection using promptfoo.

## Local run
```
npm i -g promptfoo
promptfoo eval -c ../promptfoo-config.yaml --output ../reports/latest.html
```

Promptfoo can export HTML reports using `--output report.html` for easy sharing/review.

## CI run
Runs automatically via GitHub Actions on push/PR:
- `.github/workflows/redteam-test.yml`
