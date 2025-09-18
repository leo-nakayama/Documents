#!/usr/bin/bash
REPO_NAME=$1

if [ -z "$REPO_NAME" ]; then
  echo "Usage: $0 <repository-name>"
  exit 1
fi

# check if REPO_NAME ends with .git. If so, remove it.
if [[ "$REPO_NAME" == *.git ]]; then
  REPO_NAME="${REPO_NAME%.git}"
fi

echo "Creating project directory: $REPO_NAME"

echo "→ Creating .gitignore"
cat > .gitignore <<'EOF'
# Python
__pycache__/
*.py[cod]
*.pyo
*.egg-info/
*.egg
build/
dist/
.eggs/
.coverage
coverage.xml
htmlcov/
.pytest_cache/
.mypy_cache/
.ruff_cache/
.ipynb_checkpoints/
# Virtual envs
.venv/
.env/
.venv*/
.conda/
# Editors/OS
.DS_Store
.idea/
.vscode/
# Misc
*.log
*.bak
*.swp
*.swo
# Local overrides
.env.local
*.secret*
EOF

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:leo-nakayama/$REPO_NAME.git
git push -u origin main
echo"git process done..."

# setup python venv
python3 -m venv .venv

echo "creating .venv done."
