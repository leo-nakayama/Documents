# 🧪 Bash String Tests & Conditions Cheat Sheet

## 🎯 Basic String Checks

| Test                        | Meaning                      | Example                                |
|-----------------------------|------------------------------|----------------------------------------|
| `[ -z "$str" ]`            | Is empty                     | `if [ -z "$name" ]; then ...`          |
| `[ -n "$str" ]`            | Is **not** empty             | `if [ -n "$input" ]; then ...`         |
| `[ "$a" = "$b" ]`          | Strings are equal            | `if [ "$name" = "leo" ]; then ...`     |
| `[ "$a" != "$b" ]`         | Strings are not equal        | `if [ "$lang" != "bash" ]; then ...`   |

> ✅ Always quote variables: `"$var"` — especially if they might be empty.

---

## 🔁 Pattern Matching (with `[[ ]]`)

| Test                          | Meaning                            |
|-------------------------------|-------------------------------------|
| `[[ $str == foo* ]]`         | Starts with "foo"                  |
| `[[ $str == *bar ]]`         | Ends with "bar"                    |
| `[[ $str == *baz* ]]`        | Contains "baz"                     |
| `[[ $str =~ ^[0-9]+$ ]]`     | Regex match (e.g. is number)       |

> `[[ ... ]]` allows pattern matching and regex without quoting variables.

---

## 🛠 Boolean Logic

| Expression                        | Meaning                             |
|-----------------------------------|-------------------------------------|
| `[ -n "$a" ] && [ -n "$b" ]`     | Both are non-empty                  |
| `[ "$a" = "x" ] || [ "$b" = "y" ]` | Either condition is true            |
| `! [ -z "$a" ]`                  | `$a` is not empty                   |

> Logical operators `&&`, `||`, and `!` are valid in both `[ ]` and `[[ ]]` contexts.

---

## 🧙‍♂️ Pro Tip: Normalize Case Before Comparison

```bash
name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
