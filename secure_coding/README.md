# Lab 4 — Defense Hardening (Secure Coding)

This module demonstrates how prompt injection happens when you **blend instructions and untrusted data**, and how to mitigate it with layered controls aligned with OWASP guidance.

## Files
- `vulnerable_prompt.py`: insecure prompt composition (do not copy into prod).
- `hardened_prompt.py`: safer prompt composition with:
  - Instruction vs data separation
  - Input filtering
  - Output validation
  - Optional human-in-the-loop hook (stub)

## Quick Demo (local, no real API calls)
```
python secure_coding/vulnerable_prompt.py
python secure_coding/hardened_prompt.py
```

## What to look for
- In the vulnerable version, the “document” can inject instructions.
- In the hardened version, the document is treated as **untrusted content** and injection-like patterns are flagged.

## Production notes
These examples are educational; real defenses must be layered (policy enforcement outside the model, monitoring, least privilege, etc.).
