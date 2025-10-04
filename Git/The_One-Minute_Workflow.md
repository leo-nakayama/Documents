# The One-Minute Workflow (TL;DR)

1. **Mark the last known good point**

* **Git-only**

  ```bash
  git add -A && git commit -m "checkpoint: last known good before ChatGPT"
  git tag -a last-good -m "last known good"
  ```

  *(tags = named bookmarks)*

* **VS Code**

  * Source Control panel → **Stage All** → **Commit**: “checkpoint: last known good…”
  * Command Palette → **Git: Create Annotated Tag** → name: `last-good`.

2. **Apply the new code in a temp branch**

* **Git-only**

  ```bash
  git switch -c compare/chatgpt-2025-10-04
  # paste changes
  git add -A && git commit -m "proposed: ChatGPT update"
  ```

* **VS Code**

  * Status bar (branch name) → **Create new branch** → `compare/chatgpt-2025-10-04`.
  * Paste changes → Source Control: **Stage All** → **Commit** “proposed: ChatGPT update”.

3. **Compare, run tests**

* **Git-only (diff across branches)**

  ```bash
  git diff last-good...compare/chatgpt-2025-10-04
  git log --oneline --graph --decorate -n 20
  ```
* **VS Code**

  * Explorer: right-click a file → **Select for Compare**, then right-click the other → **Compare with Selected**.
  * Or use **Timeline** view (right sidebar) to inspect per-file history.
  * Source Control → open any file’s **Diff** (“Open Changes”).
  * Optional: Install Test extensions or run your CLI tests in the built-in terminal.

4. **Decide**

* If good → merge:

  * **Git-only**

    ```bash
    git switch main
    git merge --no-ff compare/chatgpt-2025-10-04 -m "merge: ChatGPT update (verified)"
    git tag -a last-good -m "advance last-good to merged commit"
    ```
  * **VS Code**

    * Switch to **main** in status bar → **Merge Branch…** → choose your compare branch → commit message as above → retag if you use the moving `last-good`.

* If bad → roll back instantly:

  * **Git-only**

    ```bash
    git switch main
    git reset --hard last-good        # hard reset back to bookmark
    ```

    *(safe because you tested on a temp branch)*
  * **VS Code**

    * Source Control → **…** menu → **Reset** → **Hard** to `last-good` (pick from tags in the branch picker / Command Palette: “Git: Checkout to…” to see and choose `last-good`, then reset to it).

---

# Why this works (Aristotle’s Four Causes)

* **Material cause (what it’s made of):** your tracked files, commits, branches, tags.
* **Formal cause (structure):** a *stable tag* (`last-good`) + *temporary compare branch* (`compare/…`).
* **Efficient cause (how it’s done):** `git switch`, `git diff`, `git merge`, `git reset --hard` (or VS Code equivalents).
* **Final cause (goal):** fast, confidence-building comparisons and **one-command rollback** to a known good state.

---

# Practical Recipes (with paired “Git-only” / “VS Code” steps)

## A) Quick safety snapshot when you’re in a rush

* **Git-only**

  ```bash
  git add -A && git commit -m "checkpoint: pre-ChatGPT"
  git tag -a last-good -m "last known good"
  ```
* **VS Code**

  * Stage All → Commit “checkpoint: pre-ChatGPT” → **Git: Create Annotated Tag** `last-good`.

> Tip: If you already *have* a `last-good` tag and want it to point to the *newest* stable commit, **move it**:

```bash
git tag -f -a last-good -m "move last-good"  # re-annotate current HEAD
```

(Or delete/recreate in VS Code’s tag UI.)

## B) Keep your working tree clean while testing risky code

If you want to try changes **without committing**, use a stash checkpoint first.

* **Git-only**

  ```bash
  git stash push -m "pre-experiment checkpoint" -u
  # -u includes untracked files
  # ...experiment...
  git stash list
  git stash show -p stash@{0}
  git stash apply stash@{0}   # bring it back (keeps stash)
  # or git stash pop          # bring back and drop stash
  ```
* **VS Code**

  * Source Control → **…** → **Stash** → choose with/without untracked.
  * Later: **Apply Stash** / **Pop Stash** from the same menu.

## C) Compare old vs new in multiple ways

* **Whole-repo diff between points**

  * **Git-only:** `git diff last-good...HEAD`
    *(three dots = compare tips, ignoring common base noise)*
* **Per-file visual diff**

  * **VS Code:** Right-click a file → **Open Timeline**; or **Select for Compare** then **Compare with Selected**.
* **What changed in the staged set vs working tree**

  * **Git-only:** `git diff` (working vs index), `git diff --staged` (index vs HEAD).
  * **VS Code:** In Source Control, click a file under “CHANGES” (working) or “STAGED CHANGES” (index) to see the corresponding diff.

## D) Safe undo vs history rewrite

* **Undo by creating a new “fixing commit” (safe)**

  * **Git-only:** `git revert <bad-commit>` (or a range: `git revert <good>..HEAD`)
  * **VS Code:** Source Control → **…** → **Revert Commit** (from the commit context menu in the log view extensions, or run the command from the palette if installed).
* **Hard reset (rewrites branch tip; fine if not pushed)**

  * **Git-only:** `git reset --hard last-good`
  * **VS Code:** Source Control → **…** → **Reset** → **Hard** to the chosen commit.
* **Emergency recovery**

  * **Git-only:** `git reflog` to find the lost tip, then `git reset --hard <hash>`
  * **VS Code:** Use **Git: View Reflog** (if you have GitLens or similar) and reset.

## E) Side-by-side work with two folders (no constant switching)

* **Git-only (advanced but handy)**

  ```bash
  git worktree add ../wt-newcode compare/chatgpt-2025-10-04
  # Now you have two directories: current repo (main) and ../wt-newcode (compare branch)
  ```
* **VS Code**

  * **File → Add Folder to Workspace…** and open both the main repo and `../wt-newcode` for true side-by-side editing and diffing.

---

# VS Code “muscle memory” for quick comparisons

* **Source Control (left bar)**

  * Stage/Unstage files with plus/minus icons.
  * Click any file under **CHANGES** to see inline diff.
* **Timeline view (right sidebar)**

  * Shows commit history, local changes, and file versions—select any point → **Open** to see that version or **Open Changes** to diff.
* **Explorer compare**

  * Right-click a file → **Select for Compare** → pick another version (or file) → **Compare with Selected**.
* **Command Palette helpers**

  * *Git: Create/Checkout Branch*, *Git: Create Annotated Tag*, *Git: Revert Commit*, *Git: Clean*, etc.

> Optional niceties: enable **Diff Editor: Word Wrap** and **Render Side By Side** for comfort.

---

# New (or less familiar) Git commands you’ll use (tiny notes)

* `git switch <branch>` — change branches (clearer successor to `git checkout <branch>`).
* `git switch -c <name>` — create **and** switch to a new branch.
* `git tag -a <name> -m "<msg>"` — create an **annotated** tag (a named checkpoint).
* `git diff A...B` — show diff between the tips of A and B, using their merge base (cleaner review across branches).
* `git diff` / `git diff --staged` — working→index / index→HEAD diffs.
* `git stash push -m "<msg>" -u` — save work-in-progress; `-u` includes untracked files.
* `git revert <commit>` — make a new commit that undoes `<commit>` (safe for shared history).
* `git reset --hard <target>` — move branch tip **and** working tree to `<target>` (don’t use on shared branches after push).
* `git reflog` — the time machine of branch tips; use it to recover “lost” commits.
* `git worktree add <path> <branch>` — have multiple branch checkouts at once.

---

# Suggested habits (fits TDD/CI later)

* Always **commit + tag** before large edits: `last-good` gives you instant rollbacks.
* Do risky tests in a **compare/** branch; only merge to `main` after it passes your checks.
* Use **revert** (not reset) to undo public history you’ve already pushed.
* Keep your diffs small and frequent; it makes review and rollback trivial.

---

If you want, I can turn this into a **one-page cheat sheet** (Markdown) you can drop into your repos, plus a tiny **Makefile** target (`make checkpoint`, `make compare-branch`) to automate the steps.
