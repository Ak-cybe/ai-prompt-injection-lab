# Prompt Injection Lab (OWASP LLM01)

This repository is a hands-on **prompt injection** lab designed to teach and demonstrate how attackers can hijack Large Language Model (LLM) behavior using crafted prompts (OWASP LLM01: Prompt Injection).

The lab is **purely educational** and focuses on safe, manual testing against LLM-based chatbots that you are allowed to use (public demos, your own apps, etc.). No illegal activity, no real system hacking.

---

## 🎯 Learning goals

By the end of this lab, you will be able to:

- Explain what **Prompt Injection (LLM01)** is and why it is dangerous for LLM apps.  
- Perform **direct prompt injection** attacks (user directly overrides model instructions).  
- Perform **indirect prompt injection** attacks (malicious instructions hidden in external content like emails or documents).  
- Attempt **system prompt leakage** (trying to reveal hidden system/developer instructions).  
- Document findings in a structured, red-team style report.

---

## 🧱 Repository structure

```
prompt-injection-lab/
├── README.md               # This file
├── labs/
│   ├── lab1-direct-injection/
│   │   └── README.md
│   ├── lab2-indirect-injection/
│   │   └── README.md
│   ├── lab3-system-prompt-leak/
│   │   └── README.md
│   └── lab4-advanced-attacks/
│       └── README.md
├── payloads/
│   ├── direct.txt
│   ├── indirect.txt
│   ├── leakage.txt
│   └── advanced.txt
├── solutions/
│   ├── lab1-writeup.md
│   ├── lab2-writeup.md
│   └── lab3-writeup.md
└── references.md
```

---

## 🚀 How to use this lab

1. Pick any LLM chatbot you are allowed to test (public web UI, your own local LLM, or a demo app).  
2. Open one of the labs under `labs/` and read the scenario + instructions.  
3. Use the payloads from the `payloads/` folder and paste them into the chatbot.  
4. Observe the behavior and log results in the format shown in `solutions/`.  
5. Optionally, fork this repo and add your own labs, payloads, or writeups.

This lab does **not** provide any backend code; it is model‑agnostic and can be used with any LLM provider.

---

## 🛡️ Safety & ethics

- Use this lab only on systems you **own or are explicitly allowed to test**.  
- Do not attempt to exfiltrate real secrets, private data, or abuse production systems.  
- The goal is to learn how to **defend** LLM apps by understanding real attack patterns.  

---

## 📚 Background

This lab is inspired by:

- OWASP LLM Top 10 – **LLM01: Prompt Injection**.  
- Public prompt injection examples and payload collections (e.g., PayloadsAllTheThings).  

See [`references.md`](./references.md) for more reading.

---

## 🛡️ Defense section

This repository also includes [`DEFENSE.md`](./DEFENSE.md), which summarizes practical defenses against OWASP LLM01 prompt injection:

- Stronger system prompts and clear role definitions  
- Separating instructions from untrusted data  
- Input validation and injection filters  
- Least-privilege design for LLM agents with tools  
- Output monitoring and human-in-the-loop for risky actions  
- Continuous adversarial testing integrated into CI/CD
