# 🧠 AI Prompt Injection Lab with Secure Coding
**OWASP LLM01 | Red Team + Blue Team | Production-Ready**

```bash
  ____                          _     ___        _           _   _ 
 |  _ \ _ __ ___  _ __ ___  ___| |_  |_ _|_ __  (_) ___  ___| |_(_) ___  _ __ 
 | |_) | '__/ _ \| '_ ` _ \/ __| __|  | || '_ \ | |/ _ \/ __| __| |/ _ \| '_ \
 |  __/| | | (_) | | | | | \__ \ |_   | || | | || |  __/ (__| |_| | (_) | | | |
 |_|   |_|  \___/|_| |_| |_|___/\__| |___|_| |_|/ |\___|\___|\__|_|\___/|_| |_|
                                              |__/                          
```

[![OWASP LLM01](https://img.shields.io/badge/OWASP-LLM01%3A2025-red)](https://genai.owasp.org/llmrisk/llm01-prompt-injection/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Defense](https://img.shields.io/badge/Defense-DEFENSE.md-blue)](./DEFENSE.md)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-success)](./.github/workflows/redteam-test.yml)

[![Tests](https://img.shields.io/badge/Tests-Promptfoo-purple)](https://www.promptfoo.dev)

> Project Overview: Understand the attack → measure the risk → design layered defenses → automate security testing

---

## 📌 Project Overview

**AI Prompt Injection Lab with Secure Coding** is an end-to-end, hands-on security project focused on understanding, testing, and mitigating **Prompt Injection attacks** against Large Language Models (LLMs).

This project goes beyond just demonstrating attacks—it demonstrates how to build secure, real-world AI applications aligned with **OWASP LLM01 (2025)** standards.

---

## 🎯 Why This Project Exists

Today's GenAI applications—**Chatbots, RAG systems, AI agents, Customer support bots**—all follow natural language instructions. This characteristic makes them extremely vulnerable to Prompt Injection.

This lab addresses this problem from both **Offensive (Red Team)** and **Defensive (Blue Team)** perspectives.

---

## 🧩 What This Project Covers

### 🔴 Offensive Security (Red Team)
- **Direct Prompt Injection**
- **Indirect Prompt Injection** (documents, emails, hidden text)
- **System Prompt Leakage**
- **Instruction hierarchy bypass attempts**

### 🔵 Defensive Security (Blue Team)
- **Secure prompt design**
- **Instruction vs Data separation**
- **Input validation & injection filtering**
- **Least privilege for LLM tools**
- **Output monitoring & policy enforcement**
- **CI/CD based adversarial testing**

---

## 🧪 Labs Breakdown

### 🧪 Lab 1 – Direct Prompt Injection
**Goal:** Override system instructions via user-controlled input.
- **Focus:** "Ignore previous instructions", Role manipulation, Safety bypass attempts.
- **Skill Learned:** Mastering how to break the LLM instruction hierarchy.

### 🧪 Lab 2 – Indirect Prompt Injection
**Goal:** Injection via documents, emails, or hidden content.
- **Focus:** Malicious instructions inside data, Innocent-looking user prompts, Summarization abuse.
- **Skill Learned:** Understanding dangerous RAG/enterprise application risks.

### 🧪 Lab 3 – System Prompt Leakage
**Goal:** Exposing hidden system rules, policies, or configurations.
- **Focus:** Meta-requests, Debug mode tricks, Simulation-based leakage.
- **Skill Learned:** Implications of sensitive AI configuration exposure.

### 🛡️ Lab 4 – Defense Hardening (Secure Coding)
**Goal:** Hardening a vulnerable chatbot to be secure and production-ready.
- **Includes:** `vulnerable_prompt.py`, `hardened_prompt.py`, Automated injection tests.
- **Skill Learned:** Secure coding for AI systems (Rare skill 🔥).

---

## � Usage Examples

### 1️⃣ Run all tests (API Key required)
```bash
./run-tests.sh
```

### 2️⃣ Run free local tests (Ollama)
```bash
./run-tests-free.sh
```

### 3️⃣ Run a specific lab
```bash
cd labs/lab1-direct-injection
# Follow lab instructions located in the directory
```

---

## �🔐 Secure Coding & Defense Strategy

The project's [`DEFENSE.md`](./DEFENSE.md) outlines real-world mitigation strategies:

### ✔ Secure Prompt Engineering
- Clear role definition.
- Explicit refusal of meta-instructions.
- Instruction priority enforcement.

### ✔ Instruction vs Data Separation
```text
[INSTRUCTIONS] Trusted system rules [/INSTRUCTIONS]
[UNTRUSTED_CONTENT] User / document input [/UNTRUSTED_CONTENT]
```

### ✔ Input Validation (Code-Level)
- Regex-based injection detection.
- Unicode obfuscation removal.
- Blocking system-level instructions from user input.

### ✔ Least Privilege Design
- LLM tools with restricted permissions.
- No direct DB / filesystem access.
- External policy enforcement layer.

### ✔ Output Monitoring
- System prompt leakage detection.
- PII / sensitive data patterns.
- Human-in-the-loop for risky actions.

---

## 🤖 Automated Security Testing (Production Ready)

We use **Promptfoo** integrated with **CI/CD** for continuous security verification.

```bash
./run-tests.sh
```

## 🆓 Free Student Testing (No API key)

Students can run all tests locally using **Ollama + Promptfoo** (no paid API required).

```bash
chmod +x run-tests-free.sh
./run-tests-free.sh
```

Outputs:
- `reports/free-report.html` (shareable report)
- `reports/free-report.json`

**What happens:**
1. 50+ injection payloads tested.
2. Multi-LLM provider support.
3. Pass/Fail metrics generated.
4. HTML security report created.
5. GitHub Actions runs on every push.

**This proves:**  
👉 Security is continuously enforced, not just manually tested.

---

## 📊 Measuring Security Effectiveness

| Metric | Target |
|--------|--------|
| Injection Success Rate | < 5% |
| System Prompt Leakage | 0% |
| False Positives | < 2% |
| Detection Time | < 1 hour |

---

## 🧠 What This Project Demonstrates

- ✔ **OWASP LLM01 expertise**
- ✔ **AI Red Teaming skills**
- ✔ **Secure coding for LLM apps**
- ✔ **DevSecOps & CI/CD mindset**
- ✔ **Real-world GenAI risk understanding**

*Not just “how to break AI” — but how to keep it secure.*

---

## 🚀 Who This Project Is For

- **AI Security / LLM Security roles**
- **Red Team / AppSec engineers**
- **SOC analysts working with GenAI**
- **Cybersecurity students moving into AI security**

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🌟 Show Your Support

If you like this project, please give it a ⭐️!

## 📧 Contact & Support

For any questions, feedback, or support, please open an issue or reach out to the author.

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## ⚠️ Legal Disclaimer

This project is strictly for:
- **Education**
- **Research**
- **Authorized testing**

❌ **No misuse.**  
❌ **No production attacks.**

---

## 👤 Author

**Amresh Kumar**  
Cybersecurity | AI Red Teaming | Secure Coding  
GitHub: [Ak-cybe](https://github.com/Ak-cybe)

---

### 🏁 Final Note
> The best security engineers don’t just find vulnerabilities — they design systems that stay secure under attack.
