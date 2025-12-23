# Lab 4 — Defense Hardening (Secure Coding)

This lab focuses on **defensive engineering** for OWASP **LLM01: Prompt Injection**: separating instructions from untrusted data, adding validation layers, and running automated regression tests.

## Objectives

- Understand why prompt injection happens when **untrusted content is treated as instructions**.
- Apply practical defenses:
  - Instruction vs Data separation
  - Input filtering and normalization
  - Output checks (leakage / override indicators)
  - Defense-in-depth mindset
- Validate defenses using automated tests (Promptfoo).

## What you will use

- `secure_coding/vulnerable_prompt.py` (insecure example)
- `secure_coding/hardened_prompt.py` (safer example)
- `promptfoo-config.yaml` (regression tests)
- `.github/workflows/redteam-test.yml` (CI)

## Step-by-step tasks

### Task A — Identify the vulnerability
1. Run:
   ```
   python secure_coding/vulnerable_prompt.py
   ```
2. Observe: the **document** content is embedded directly into the prompt, so it can inject directives (indirect injection).  

### Task B — Apply hardening
1. Run:
   ```
   python secure_coding/hardened_prompt.py
   ```
2. Observe: untrusted content is tagged and filtered; injection-like patterns are detected and handled.

### Task C — Add regression tests
1. Install promptfoo:
   ```
   npm i -g promptfoo
   ```
2. Run evaluation:
   ```
   promptfoo eval -c promptfoo-config.yaml --output reports/latest.html
   ```
   Promptfoo supports exporting results to HTML using `--output`, which is ideal for shareable reports.

### Task D — CI validation
Push changes to GitHub and verify:
- GitHub Actions workflow runs on push/PR.
- Report artifacts are uploaded for review.

## Success criteria

- Indirect injection attempts do **not** cause “OVERRIDDEN” style output in tests.
- “System prompt leak” probes are refused or produce safe output.
- CI workflow shows green status and uploads HTML report artifacts.
