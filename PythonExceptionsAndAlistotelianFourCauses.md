# 🏛 Python Exceptions × Aristotelian Four Causes -1

## 1. **Material Cause** (What it is made of — the “stuff” involved)

This is about the **data / input** that the function is working on.

* If the **stuff itself is the wrong kind** → `TypeError` (*the material is wood, but you needed metal*).
* If the **stuff is the right kind but malformed** → `ValueError` (*the clay was bad, so the pot collapses*).

👉 **Material cause exceptions** = wrong input material.

---

## 2. **Formal Cause** (The structure / form / shape)

This is about the **shape of access**: you expect the structure to have something, but it doesn’t.

* `IndexError` → sequence doesn’t have that slot.
* `KeyError` → dict doesn’t have that key.
* `AttributeError` → object doesn’t have that attribute.

👉 **Formal cause exceptions** = the structure you assumed doesn’t have the form you needed.

---

## 3. **Efficient Cause** (The agent / force / process that makes change happen)

This is about the **outside actor** failing — environment, system, or agent.

* `OSError` family (filesystem errors, permissions, missing files).
* `ConnectionError`, `TimeoutError`, etc.
* `IOError` (legacy).

👉 **Efficient cause exceptions** = failures of the external agent that executes the process.

---

## 4. **Final Cause** (The purpose / telos / “for the sake of which”)

This is about whether the **operation achieved its intended purpose**. If the telos is violated, you get “assertion” or “domain” errors.

* `AssertionError` → invariant / assumption didn’t hold (telos broken).
* Custom domain exceptions (`BusinessRuleViolation`, `DataFetchError`) → you encode *why* the operation failed relative to its goal.

👉 **Final cause exceptions** = purpose could not be fulfilled.

---

# 🎼 Example Walkthrough

```python
def get_user_age(users: dict, name: str) -> int:
    age = users[name]          # KeyError if name not in dict → FORMAL
    if not isinstance(age, int):
        raise TypeError(...)   # MATERIAL
    if age < 0:
        raise ValueError(...)  # MATERIAL (bad stuff)
    assert age < 150           # FINAL (goal: realistic age)
    return age
```

* **Material**: wrong type/value of age → `TypeError`, `ValueError`
* **Formal**: missing key in dict → `KeyError`
* **Efficient**: if ages came from a file and file missing → `FileNotFoundError`
* **Final**: unrealistic age breaks business rule → `AssertionError` / custom `InvalidAgeError`

---

# 🌐 Why this helps

Instead of memorizing 20 exception names, you just ask:

1. Did the **input stuff** go wrong? → Material Cause (`TypeError`, `ValueError`)
2. Did the **structure/form** not match? → Formal Cause (`KeyError`, `IndexError`, `AttributeError`)
3. Did the **external process/agent** fail? → Efficient Cause (`OSError`, `TimeoutError`)
4. Did the **purpose** collapse? → Final Cause (`AssertionError`, custom domain errors)

---
# 🏛 Python Exceptions × Aristotelian Four Causes -2

## Quick Design Checklist

1. **Will the caller know what to do if I raise?**
   → If yes, raise a **specific type** (`ValueError`, `KeyError`, custom, …).
2. **Am I adding useful context?**
   → `raise NewError(...) from e`
3. **Am I truly recovering?**
   → If yes, **handle and return a clear value** (document it).
4. **Am I catching too broadly?**
   → Narrow to the **specific** exceptions you expect.
5. **Will silent handling hide bugs?**
   → Don’t swallow; re-raise if you can’t recover.

✅ Following these rules gives you:

* Code that **fails loudly** when it should
* Code that **communicates clearly** with exception names/messages
* Tests that are **straightforward** (either `pytest.raises` or graceful handling assertions)

---

## Exception Types by Aristotelian Causes

### **1. Material Cause — “the stuff” (input material)**

* `TypeError`: wrong type (wrong material)
* `ValueError`: wrong value, type is fine (bad quality of material)

### **2. Formal Cause — “the structure / shape”**

* `IndexError`: sequence index out of range
* `KeyError`: dict missing key
* `AttributeError`: object missing attribute

### **3. Efficient Cause — “the agent / process”**

* `OSError` family: file not found, permission denied, etc.
* `TimeoutError`, `ConnectionError`: external agent/system failed

### **4. Final Cause — “the purpose / telos”**

* `AssertionError`: invariant or assumption violated
* Custom domain exceptions: `BusinessRuleViolation`, `DataFetchError`, etc.

---

## 🌐 Conceptual Mnemonics

* **Type vs Value**: wrong *clothes* vs wrong *person in the right clothes*
* **Index vs Key vs Attribute**: missing *slot* (list) / *label* (dict) / *feature* (object)
* **OSError family**: *the outside world said NO*
* **Final Cause errors**: *the purpose of the function was not achieved*

---





Would you like me to draw this into a **visual 2×2 map (Causes vs Exception families)** so you can glance at it when coding/tests?
