# Lab 1: Direct Prompt Injection

## Objective
Learn how to bypass system instructions using direct prompts.

## Instructions
1. Review the `secure-coding/hardened_prompt.py` to understand the defense mechanisms.
2. Use the payloads in `payloads/direct-injection.txt` to test the system.
3. Try to craft a prompt that reveals the hidden "SYSTEM_PROMPT".

## Expected Outcome
The system should detect and refuse known injection patterns, but might be vulnerable to novel attacks if not properly updated.
