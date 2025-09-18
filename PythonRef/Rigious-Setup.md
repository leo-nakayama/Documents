Great — you’ve got everything you need. I’ll lay out a **rigorous setup procedure** step by step, so you can run **black, ruff, mypy, pyright, pytest, hypothesis** in a clean way.

---

# 1️⃣ Install Python tooling

Make sure you’re using the system’s Python 3, or install a fresh one:

```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
```

---

# 2️⃣ Create a project & virtual environment

Keep each project isolated:

```bash
mkdir ~/projects/myproj
cd ~/projects/myproj

python3 -m venv .venv
source .venv/bin/activate   # activate venv
```

(Deactivate with `deactivate`.)

---

# 3️⃣ Install dev tools inside the venv

```bash
pip install --upgrade pip

# Formatter, linter, type checkers, testing tools
pip install black ruff mypy pytest hypothesis

# (optional) Pyright (via Node.js, not pip)
```

---

# 4️⃣ Optional: Install Pyright (if you want an alternative to mypy)

Pyright is written in TypeScript and distributed via npm. You’ll need Node:

```bash
sudo apt install npm nodejs
sudo npm install -g pyright
```

Usage:

```bash
pyright myproj/
```

---

# 5️⃣ Verify tools

```bash
black --version
ruff --version
mypy --version
pytest --version
python -m hypothesis -h    # quick check Hypothesis installed
pyright --version          # if installed
```

---

# 6️⃣ Typical workflow

1. **Format all code**

   ```bash
   black .
   ```
2. **Lint (style + correctness)**

   ```bash
   ruff check .
   ```
3. **Type-check**

   ```bash
   mypy .
   # or
   pyright .
   ```
4. **Run tests**

   ```bash
   pytest -q
   ```

---

# 7️⃣ (Optional) VS Code / PyCharm integration

* VS Code: Install extensions *Black Formatter*, *Ruff*, *Mypy Type Checker*, *Pyright*.
* Configure `"python.venvPath": "~/.venvs"` or point to `.venv`.

---

# 8️⃣ Save requirements

Freeze your dev setup for repeatability:

```bash
pip freeze > requirements-dev.txt
```

---

✅ **At this point you have the full “rigor loop” ready on Kubuntu:**

* `black` → autoformat
* `ruff` → lint
* `mypy` or `pyright` → type-check
* `pytest` → test runner
* `hypothesis` → property tests

---

👉 Would you like me to prepare a **Makefile** (or just a bash script) that runs the whole rigor loop (`black • ruff • mypy • pytest`) in one command, so you don’t have to remember each step manually?


Perfect 👌 — here’s a simple **bash script** you can drop into your project root to run the full rigor loop on Kubuntu.

---

### 1. Create file `rigor.sh`

```bash
#!/usr/bin/env bash
# rigor.sh — run rigorous Python dev tools in sequence

set -e  # stop on first error

echo "🔹 Running Black (formatter)..."
black .

echo "🔹 Running Ruff (linter)..."
ruff check .

echo "🔹 Running Mypy (type checker)..."
mypy .

# Uncomment this line if you prefer Pyright instead of Mypy
# pyright .

echo "🔹 Running Pytest (tests)..."
pytest -q

echo "✅ All checks passed!"
```

---

### 2. Make it executable

```bash
chmod +x rigor.sh
```

---

### 3. Run it

```bash
./rigor.sh
```

---

### 4. (Optional) Add to Git hooks

If you want this to run before every commit:

```bash
mkdir -p .git/hooks
cat > .git/hooks/pre-commit <<'EOF'
#!/bin/sh
./rigor.sh
EOF
chmod +x .git/hooks/pre-commit
```

Now Git will block commits if any step fails.

---

✅ This way, instead of typing 4–5 separate commands, you just do:

```bash
./rigor.sh
```

---

Would you like me to also extend this script so it can **auto-fix** issues when possible (e.g., run `ruff check --fix` + `black .`), instead of just reporting errors?
