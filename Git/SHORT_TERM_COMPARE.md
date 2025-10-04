# Short-Term Compare & Safe Rollback Guide

**Purpose:**  
Provide a *practical, low-risk method* for short-term code comparison and rollback — especially when testing ChatGPT-generated code against the last stable version.  
Applies to both **CLI (git-only)** and **VS Code + Git** workflows.

---

## 1. Overview

| Layer | Function | Key Tools |
|--------|-----------|-----------|
| **Material** | Git commits, branches, tags, working directory | `git`, VS Code Source Control |
| **Formal** | `last-good` tag + `compare/<timestamp>` branch | Git structure |
| **Efficient** | `git switch`, `git diff`, `git merge`, `git reset` | Command line / VS Code actions |
| **Final** | Fast comparison and reliable rollback | Confidence in iterative dev |

---

## 2. Before You Start

Run once per repo:

```bash
git init               # if new project
git add -A
git commit -m "initial commit"
````

Optional setup:

```bash
sudo apt install make  # for the helper Makefile
```

---

## 3. Create a Safety Checkpoint

### CLI (Git-only)

```bash
git add -A && git commit -m "checkpoint: last known good"
git tag -a last-good -m "last known good"
```

### VS Code

1. Open **Source Control** tab
2. **Stage All** → **Commit** with message `checkpoint: last known good`
3. **Command Palette → Git: Create Annotated Tag** → Name: `last-good`

> **Meaning:**
> The tag acts as a named bookmark for rollback.
> The commit freezes the “known good” codebase.

---

## 4. Test New Code Safely

### CLI

```bash
git switch -c compare/$(date +%Y-%m-%d_%H%M%S)
# paste ChatGPT’s new code, test locally
git add -A && git commit -m "proposed: ChatGPT update"
```

### VS Code

* Click branch name (bottom-left) → **Create new branch** → `compare/<timestamp>`
* Paste and test code → Commit as “proposed: ChatGPT update”

> **Why:**
> Keeps experiments isolated.
> `main` stays clean while you test and diff.

---

## 5. Compare Old vs New

### Whole-repo Diff

```bash
git diff last-good...HEAD
```

> `A...B` compares the tips of both branches using their common base.

### Visual Diff (VS Code)

* Right-click a file → **Select for Compare**, then another → **Compare with Selected**
* Or open **Timeline** → select commits → **Open Changes**

---

## 6. Decision Phase

### If New Code Works → Merge

#### CLI

```bash
git switch main
git merge --no-ff <compare-branch> -m "merge: verified ChatGPT update"
git tag -f -a last-good -m "advance last-good"
```

#### VS Code

* Switch to **main**
* **Merge Branch…** → choose your compare branch
* Recreate or move tag `last-good`

---

### If It Fails → Roll Back Instantly

#### CLI

```bash
git switch main
git reset --hard last-good
```

#### VS Code

* Source Control → **⋯ → Reset → Hard**
* Choose target `last-good`

> ⚠️ For pushed history, use:
>
> ```bash
> git revert <bad-commit>
> ```
>
> Creates a new commit that undoes the bad one (safe for shared repos).

---

## 7. Optional Utilities

### A. Temporary Stash (No Commit Yet)

```bash
git stash push -m "checkpoint before test" -u   # -u includes untracked files
git stash list
git stash apply stash@{0}   # restore later
```

### B. Two Working Trees (Parallel Folders)

```bash
git worktree add ../wt-compare <compare-branch>
```

> Opens both `main` and `compare` versions side-by-side (ideal for VS Code Workspaces).

---

## 8. Quick Command Reference

| Command                            | Purpose                        | Notes                           |
| ---------------------------------- | ------------------------------ | ------------------------------- |
| `git switch -c <name>`             | create & switch to new branch  | safer alternative to `checkout` |
| `git tag -a <name> -m "<msg>"`     | create annotated tag           | used for checkpoints            |
| `git diff A...B`                   | diff between two branch tips   | excludes unrelated noise        |
| `git stash push -m "<msg>" -u`     | save uncommitted changes       | lightweight backup              |
| `git revert <commit>`              | undo a commit via new commit   | safe on shared history          |
| `git reset --hard <target>`        | move branch & working tree     | local rollback only             |
| `git reflog`                       | list all branch tip movements  | for recovery after mistakes     |
| `git worktree add <path> <branch>` | check out branch in new folder | true side-by-side comparison    |

---

## 9. Makefile Helpers

Place this at the root of your repo (`Makefile`):

```makefile
.PHONY: checkpoint compare-branch diff revert-last-good

checkpoint:
	@git add -A
	@git commit -m "checkpoint: last known good" || echo "Nothing to commit."
	@if git rev-parse -q --verify refs/tags/last-good >/dev/null; then \
		git tag -f -a last-good -m "move last-good"; \
	else \
		git tag -a last-good -m "last known good"; \
	fi
	@echo "✔ last-good tagged at $$(git rev-parse --short HEAD)"

compare-branch:
	@branch=compare/$$(date +%Y-%m-%d_%H%M%S); \
	git switch -c $$branch >/dev/null && \
	echo "✔ Created and switched to $$branch"

diff:
	@git diff last-good...HEAD

revert-last-good:
	@echo "⚠ Hard reset to 'last-good'."
	@read -p "Proceed? [y/N] " ans; \
	if [ "$$ans" = "y" ] || [ "$$ans" = "Y" ]; then \
		git reset --hard last-good; \
		echo "✔ Reset to last-good ($$(git rev-parse --short last-good))"; \
	else \
		echo "Aborted."; \
	fi
```

**Usage examples:**

```bash
make checkpoint        # tag last-good
make compare-branch    # new temp branch for testing
make diff              # diff vs last-good
make revert-last-good  # hard reset (confirm first)
```

---

## 10. VS Code Tips

| Action             | Shortcut / Command                         |
| ------------------ | ------------------------------------------ |
| Open Timeline view | Right-click file → **Open Timeline**       |
| File diff          | Right-click → **Select for Compare**       |
| Stage all / commit | Source Control panel (Ctrl+Shift+G)        |
| Create tag         | `Ctrl+Shift+P → Git: Create Annotated Tag` |
| Reset / Revert     | Source Control → **⋯** menu                |

Recommended Extensions:

```jsonc
// .vscode/extensions.json
{
  "recommendations": [
    "eamodio.gitlens",
    "mhutchie.git-graph"
  ]
}
```

---

## 11. Summary — “Philosophy in Practice”

| Aristotle’s Cause | In this workflow                                      |
| ----------------- | ----------------------------------------------------- |
| **Material**      | Commits, tags, branches, stashes                      |
| **Formal**        | Organized pattern: last-good → compare → merge/revert |
| **Efficient**     | Git + Makefile + VS Code Source Control               |
| **Final**         | Confidence and clarity when testing generated code    |

---

## 12. Next Steps

* Integrate into your README:

  ```markdown
  See [docs/SHORT_TERM_COMPARE.md](./docs/SHORT_TERM_COMPARE.md)  
  for rollback & comparison workflow.
  ```
* Try running:

  ```bash
  make checkpoint
  make compare-branch
  ```
* Practice `git diff last-good...HEAD` once per iteration.

---

> **Author’s note:**
> This guide keeps you in full control — clear checkpoints, reversible steps, and side-by-side insight between code versions.
> Ideal for daily experiments, AI-assisted edits, or test-driven iterations.

```

---

Would you like me to include a companion file `docs/SHORT_TERM_COMPARE_quickref.md` (a 20-line mini reference for terminal users), or do you want to keep it as a single main document for now?
```
