# 🧠 AI Prompt Injection Lab with Secure Coding
**OWASP LLM01 | Red Team + Blue Team | Production-Ready**

```bash
  ____                          _   
 |  _ \ _ __ ___  _ __ ___  ___| |_ 
 | |_) | '__/ _ \| '_ ` _ \/ __| __|
 |  __/| | | (_) | | | | | \__ \ |_ 
 |_|   |_|  \___/|_| |_| |_|___/\__|
                                    
  ___        _           _   _             
 |_ _|_ __  (_) ___  ___| |_(_) ___  _ __  
  | || '_ \ | |/ _ \/ __| __| |/ _ \| '_ \ 
  | || | | || |  __/ (__| |_| | (_) | | | |
 |___|_| |_|/ |\___|\___|\__|_|\___/|_| |_|
          |__/                             
```

[![OWASP LLM01](https://img.shields.io/badge/OWASP-LLM01%3A2025-red)](https://genai.owasp.org/llmrisk/llm01-prompt-injection/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Defense](https://img.shields.io/badge/Defense-DEFENSE.md-blue)](./DEFENSE.md)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-success)](./.github/workflows/ai-security-tests.yml)
[![Tests](https://img.shields.io/badge/Tests-Promptfoo-purple)](https://www.promptfoo.dev)

> **Project Overview**: Understand the attack → measure the risk → design layered defenses → automate security testing.

---

## 📌 Project Overview

**AI Prompt Injection Lab with Secure Coding** is an end-to-end, hands-on security project focused on understanding, testing, and mitigating **Prompt Injection attacks** against Large Language Models (LLMs).

This project goes beyond just demonstrating attacks—it demonstrates how to build secure, real-world AI applications aligned with **OWASP LLM01 (2025)** standards.

---

## 🚀 Getting Started

### Prerequisites
- **Python 3.10+**
- **Node.js 20+** (for Promptfoo)
- **Docker** (Optional, for containerized run)
- **Ollama** (for local free testing)

### 📥 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Ak-cybe/ai-prompt-injection-lab.git
   cd ai-prompt-injection-lab
   ```

2. **Install Python Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Install Promptfoo (for security scanning):**
   ```bash
   npm install -g promptfoo@latest
   ```

---

## 🛠️ Usage

### 1️⃣ Run Security Tests (Local/Free)
We use **Ollama** for free, local testing. Ensure Ollama is running (`ollama serve`).

```bash
# Run the full test suite
./run-tests-free.sh
```
This generates a report in `reports/free-report.html`.

### 2️⃣ Run with Docker 🐳
Avoid dependency issues by running the entire lab in a container.

```bash
docker-compose up --build
```
Reports will be available in the `reports/` directory on your host machine.

### 3️⃣ Run Unit Tests
Verify the detection logic using `pytest`.

```bash
pytest tests/
```

---

## 🧪 Labs Breakdown

### 🔴 Offensive Security (Red Team)

#### [Lab 1: Direct Prompt Injection](./labs/lab1-direct-injection/README.md)
**Goal:** Override system instructions via user-controlled input.
- **Techniques:** "Ignore previous instructions", Role manipulation.
- **Payloads:** See `payloads/direct-injection.txt`.

#### [Lab 2: Indirect Prompt Injection](./labs/lab2-indirect-injection/README.md)
**Goal:** Injection via documents, emails, or hidden content.
- **Techniques:** Malicious instructions inside data, Summarization abuse.

#### [Lab 3: System Prompt Leakage](./labs/lab3-system-prompt-leak/README.md)
**Goal:** Exposing hidden system rules, policies, or configurations.
- **Techniques:** Meta-requests, Debug mode tricks.

### 🔵 Defensive Security (Blue Team)

#### [Lab 4: Defense Hardening](./labs/lab4-defense-hardening/README.md)
**Goal:** Hardening a vulnerable chatbot to be secure and production-ready.
- **Code:** See `secure-coding/hardened_prompt.py`.
- **Strategies:**
    - **Input Validation**: Unicode normalization, HTML escaping.
    - **Output Validation**: Regex-based leakage detection.
    - **Structured Prompts**: XML tagging to separate instructions from data.

---

## 🤖 CI/CD Pipeline

This project includes a **GitHub Actions** workflow (`.github/workflows/ai-security-tests.yml`) that automatically:
1. Sets up the environment (Python + Node).
2. Installs dependencies.
3. Runs Unit Tests (`pytest`).
4. Runs Promptfoo Security Scans (if configured).

This ensures that every code change is tested against known injection attacks.

---

## 🔐 Secure Coding Strategy

The project's [`DEFENSE.md`](./DEFENSE.md) outlines real-world mitigation strategies:

### ✔ Secure Prompt Engineering
- Clear role definition.
- Explicit refusal of meta-instructions.
- Instruction priority enforcement.

### ✔ Instruction vs Data Separation
```xml
<system_instructions> ... </system_instructions>
<untrusted_data> ... </untrusted_data>
```

### ✔ Input/Output Validation
- **Input**: Sanitize control characters, normalize Unicode.
- **Output**: Monitor for "System Override" or leakage patterns.

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## ⚠️ Legal Disclaimer

This project is strictly for **Education**, **Research**, and **Authorized testing**.
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
