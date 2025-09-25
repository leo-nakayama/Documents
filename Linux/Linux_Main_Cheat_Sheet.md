# 🐧 Linux Bash & Command Cheat Sheet

A consolidated reference for **string tests, conditions, editing shortcuts, and text-processing tools** (`grep`, `awk`, `sed`).  

---

## 1️⃣ Bash String Tests & Conditions

### 🎯 Basic String Checks

| Test                | Meaning               | Example                                |
|---------------------|-----------------------|----------------------------------------|
| `[ -z "$str" ]`    | Is empty              | `if [ -z "$name" ]; then ...`          |
| `[ -n "$str" ]`    | Is **not** empty      | `if [ -n "$input" ]; then ...`         |
| `[ "$a" = "$b" ]`  | Strings are equal     | `if [ "$name" = "leo" ]; then ...`     |
| `[ "$a" != "$b" ]` | Strings are not equal | `if [ "$lang" != "bash" ]; then ...`   |

> ✅ Always quote variables: `"$var"` — especially if they might be empty.

---

### 🔁 Pattern Matching (with `[[ ]]`)

| Test                          | Meaning             |
|-------------------------------|---------------------|
| `[[ $str == foo* ]]`         | Starts with "foo"   |
| `[[ $str == *bar ]]`         | Ends with "bar"     |
| `[[ $str == *baz* ]]`        | Contains "baz"      |
| `[[ $str =~ ^[0-9]+$ ]]`     | Regex match (number)|

> `[[ ... ]]` allows pattern matching and regex without quoting variables.

---

### 🛠 Boolean Logic

| Expression                          | Meaning                   |
|-------------------------------------|---------------------------|
| `[ -n "$a" ] && [ -n "$b" ]`       | Both are non-empty        |
| `[ "$a" = "x" ] \|\| [ "$b" = "y" ]` | Either condition is true  |
| `! [ -z "$a" ]`                    | `$a` is not empty         |

---

### 🧙 Pro Tip: Normalize Case Before Comparison

```bash
name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
if [[ "$name" == "leo" ]]; then
  echo "hello!"
fi
````

---

### 🔢 Numeric Tests

| Test                | Meaning               |
| ------------------- | --------------------- |
| `[ "$a" -eq "$b" ]` | Equal                 |
| `[ "$a" -ne "$b" ]` | Not equal             |
| `[ "$a" -lt "$b" ]` | Less than             |
| `[ "$a" -le "$b" ]` | Less than or equal    |
| `[ "$a" -gt "$b" ]` | Greater than          |
| `[ "$a" -ge "$b" ]` | Greater than or equal |

---

### 📂 File Tests

| Test                  | Meaning                   |
| --------------------- | ------------------------- |
| `[ -e file ]`         | Exists                    |
| `[ -f file ]`         | Regular file              |
| `[ -d dir ]`          | Directory                 |
| `[ -r file ]`         | Readable                  |
| `[ -w file ]`         | Writable                  |
| `[ -x file ]`         | Executable                |
| `[ file1 -nt file2 ]` | file1 is newer than file2 |
| `[ file1 -ot file2 ]` | file1 is older than file2 |

---

### ✅ Exit Status & Conditionals

* Every command returns an **exit status** (`$?`).
* `0` → success, non-zero → failure.

```bash
if mycommand; then
  echo "Success!"
else
  echo "Failed!"
fi
```

---

## 2️⃣ Command-line Editing Shortcuts

| Shortcut         | Description                                |
| ---------------- | ------------------------------------------ |
| **Ctrl + A**     | Jump to the beginning of the line          |
| **Ctrl + E**     | Jump to the end of the line                |
| **Ctrl + U**     | Clear from cursor to beginning             |
| **Ctrl + K**     | Clear from cursor to end                   |
| **Ctrl + Left**  | Jump to beginning of previous word         |
| **Ctrl + Right** | Jump to end of next word                   |
| **Ctrl + R**     | Search command history by pattern          |
| **Ctrl + H**     | Delete previous character (like Backspace) |
| **Ctrl + D**     | Delete character at cursor (like Del)      |
| **Ctrl + J**     | Same as Enter                              |
| **Ctrl + L**     | Clear screen (like `clear`)                |

---

## 3️⃣ grep / awk / sed Cheat Sheet

### 🔎 `grep`

| Task                              | Command Example                 |
| --------------------------------- | ------------------------------- |
| Search for a pattern              | `grep "pattern" filename`       |
| Case-insensitive search           | `grep -i "pattern" filename`    |
| Recursive search in directory     | `grep -r "pattern" dir/`        |
| Show line numbers                 | `grep -n "pattern" filename`    |
| Show only matched text            | `grep -o "pattern" filename`    |
| Count matches                     | `grep -c "pattern" filename`    |
| Invert match (non-matching lines) | `grep -v "pattern" filename`    |
| Extended regex                    | `grep -E "regex" filename`      |
| Whole words only                  | `grep -w "word" filename`       |
| Multiple patterns                 | `grep -e "p1" -e "p2" filename` |

---

### 📊 `awk`

| Task                     | Command Example                                                |
| ------------------------ | -------------------------------------------------------------- |
| Print specific columns   | `awk '{print $1, $3}' filename`                                |
| Custom field separator   | `awk -F: '{print $1}' /etc/passwd`                             |
| Sum column values        | `awk '{sum += $3} END {print sum}' filename`                   |
| Lines matching a pattern | `awk '/pattern/ {print $0}' filename`                          |
| Conditional field test   | `awk '$3 > 100 {print $0}' filename`                           |
| Average of a column      | `awk '{s+=$3; c++} END {print s/c}' filename`                  |
| Use variables            | `awk -v t=100 '$3 > t {print $0}' filename`                    |
| Print line numbers       | `awk '{print NR, $0}' filename`                                |
| BEGIN/END blocks         | `awk 'BEGIN{print "Start"} {print} END{print "End"}' filename` |
| Multiple conditions      | `awk '$1=="foo" && $2>50 {print $0}' filename`                 |

---

### ✂️ `sed`

| Task                        | Command Example                                  |
| --------------------------- | ------------------------------------------------ |
| Substitute first occurrence | `sed 's/old/new/' filename`                      |
| Substitute all occurrences  | `sed 's/old/new/g' filename`                     |
| Substitute in line range    | `sed '2,5s/old/new/g' filename`                  |
| Delete specific line        | `sed '2d' filename`                              |
| Insert line before          | `sed '2i\New line' filename`                     |
| Append line after           | `sed '2a\New line' filename`                     |
| Replace entire line         | `sed '3c\New line' filename`                     |
| Print line range            | `sed -n '2,5p' filename`                         |
| Extended regex              | `sed -E 's/regex/replacement/g' file`            |
| Multiple commands           | `sed -e 's/old/new/g' -e 's/foo/bar/g' filename` |

---

### 🎁 Bonus: `find` with `grep`

```bash
find ~/Documents/ -name "*txt" -exec grep -Hi penguin {} \;
```

Explanation:

* **`-exec`**: run another command on each file found.
* **`grep -Hi penguin {}`**:

  * `-H` → print filename
  * `-i` → case-insensitive search
  * `penguin` → search pattern
  * `{}` → placeholder replaced by each file found
* **`\;`**: ends the `-exec` command (`\` escapes the semicolon).

Example expansion:

```bash
grep -Hi penguin ~/Documents/note1.txt
grep -Hi penguin ~/Documents/note2.txt
```

---

## 📌 Notes

* Prefer `[[ ... ]]` over `[ ... ]` in scripts.
* Use `set -euo pipefail` for safety in scripts.
* Debug with: `bash -x script.sh`.
* Always quote variables: `"${var}"`.

---

