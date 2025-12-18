# FREE Student Setup (No API Key)

This project supports a **100% free** local workflow using **Ollama + Promptfoo**.

## 1) Install Ollama
Install Ollama for your OS and ensure it's running.

## 2) Download a model
Recommended:
```
ollama pull llama3.3
```

> **For slower laptops:** try `ollama pull mistral` or `ollama pull phi3`. You will need to update `promptfoo-config.ollama.yaml` to match (`ollama:chat:mistral`).

## 3) Install Promptfoo
```
npm i -g promptfoo
```

## 4) Run the FREE tests
```bash
# Windows (Git Bash) / Mac / Linux
chmod +x run-tests-free.sh
./run-tests-free.sh
```

## 5) View the report
Open:
- `reports/free-report.html` (shareable HTML report)
- `reports/free-report.json` (machine-readable)
