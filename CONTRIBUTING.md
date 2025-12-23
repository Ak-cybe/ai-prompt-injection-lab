# Contributing to AI Prompt Injection Lab

Thank you for your interest in contributing! This project aims to be a comprehensive educational resource for AI security.

## 🐛 Reporting Issues

### Security Vulnerabilities
- Open a GitHub Issue with `[SECURITY]` prefix
- Describe the attack vector clearly
- Provide a minimal payload example
- Do NOT include actual exploit code for production systems

### Bug Reports
- Use the issue template
- Include steps to reproduce
- Mention your environment (OS, Python version, Ollama model)

---

## 🧪 Adding New Payloads

1. Add payload to the appropriate file in `payloads/`:
   - `direct.txt` - Direct injection attempts
   - `indirect.txt` - Content-based injections
   - `leakage.txt` - System prompt extraction
   - `obfuscation.txt` - Encoded/hidden payloads
   - `advanced.txt` - Multi-turn and complex attacks

2. Add corresponding test in `tests/test_prompt_injection.py`

3. Update relevant lab README if needed

4. Run tests to verify:
   ```bash
   PYTHONPATH=. pytest tests/ -v
   ```

---

## 🛡️ Adding Defense Techniques

1. Implement in `secure_coding/hardened_prompt.py`
2. Add tests covering the defense
3. Document in `DEFENSE.md`
4. Update `solutions/lab4-defense-writeup.md`

---

## 📝 Code Style

- **Python**: Use Black formatter (`black .`)
- **Docstrings**: Add to all functions
- **Comments**: Explain security implications
- **Tests**: Run `pytest` before submitting

---

## 🔀 Pull Request Process

1. **Fork** the repository
2. **Create feature branch**: 
   ```bash
   git checkout -b feature/new-payload-category
   ```
3. **Make changes** with clear commits:
   ```bash
   git commit -m "Add: Unicode obfuscation payloads for bypass testing"
   ```
4. **Push** to your fork:
   ```bash
   git push origin feature/new-payload-category
   ```
5. **Open PR** with:
   - Clear title describing the change
   - Description of what/why
   - Link to related issue (if any)

---

## ✅ Before Submitting

- [ ] All tests pass (`PYTHONPATH=. pytest tests/`)
- [ ] Documentation updated (if needed)
- [ ] No sensitive data or API keys included
- [ ] Commit messages are descriptive

---

## 🙏 Thank You!

Every contribution helps make AI systems more secure. Whether it's a new payload, improved documentation, or bug fix - it all matters!

Questions? Open a Discussion or reach out to [@Ak-cybe](https://github.com/Ak-cybe).
