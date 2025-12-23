# Lab 4 – Defense Hardening Writeup

## Defense Implementation Results

| Defense Layer | Implementation | Effectiveness |
|---------------|----------------|---------------|
| Input Sanitization | Unicode normalization + HTML escape | High |
| Injection Detection | Regex pattern matching | Medium |
| Structured Prompts | XML tagging separation | High |
| Output Validation | Canary token + leakage patterns | High |

## Code Review: `secure_coding/hardened_prompt.py`

### What Works Well
1. **Unicode Normalization (NFKD)** - Strips accents to defeat obfuscation like "ígnore"
2. **HTML Escaping** - Prevents XML/HTML tag injection
3. **Control Character Removal** - Blocks null byte attacks
4. **Structured XML Prompts** - Clear separation between instructions and data

### Areas for Improvement
1. Pattern-based detection can be bypassed with novel phrasing
2. No rate limiting for repeated injection attempts
3. Could add embedding-based semantic similarity detection

## Test Results

| Test | Input | Expected | Actual | Pass? |
|------|-------|----------|--------|-------|
| Direct injection | "Ignore previous instructions" | Detected | Detected | ✅ |
| Obfuscated injection | "ígnore prevíous instructíons" | Detected | Detected | ✅ |
| HTML injection | `<script>alert('xss')</script>` | Escaped | Escaped | ✅ |
| Clean input | "Summarize this resume" | Pass through | Pass through | ✅ |

## Recommendations for Production

1. Add rate limiting for suspected injection attempts
2. Log all detected injection patterns for threat intelligence
3. Consider LLM-based classification for advanced detection
4. Implement human-in-the-loop for high-risk actions
