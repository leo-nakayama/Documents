# Python Exceptions × pytest — One-Page Cheat Sheet

## Design checklist (ask these every time)

1. **Will the caller know what to do if I raise?**
   → If yes, **raise a specific type** (`ValueError`, `KeyError`, custom, …).
2. **Am I adding useful context?**
   → `raise NewError("what + why") from e`
3. **Am I truly recovering here?**
   → If yes, **handle and return a clear value** (or fallback); **document it**.
4. **Am I catching too broadly?**
   → Catch the **narrowest** exceptions you expect.
5. **Will silent handling hide bugs?**
   → Don’t swallow. **Log and re-raise** if you can’t recover.

---

## What you get if you follow the checklist

* **Fails loudly when it should** (bugs don’t get buried)
* **Communicates clearly** (exception type/message carry meaning)
* **Tests are straightforward** (either expect a raise, or assert graceful handling)

---

## Pattern 1: Let it raise (preferred when the caller should decide)

```python
def parse_age(s: str) -> int:
    if not s:
        raise ValueError("age string is empty")
    return int(s)  # may raise ValueError

# pytest
import pytest

def test_parse_age_raises_on_empty():
    with pytest.raises(ValueError, match="empty"):
        parse_age("")
```

## Pattern 2: Transform & add context (wrap low-level into domain error)

```python
class UserRepoError(Exception): pass

def get_user(repo, user_id: int):
    try:
        return repo.fetch(user_id)
    except TimeoutError as e:
        raise UserRepoError(f"timeout fetching user {user_id}") from e

# pytest
def test_get_user_wraps_timeout():
    import pytest
    class FakeRepo: 
        def fetch(self, *_): raise TimeoutError
    with pytest.raises(UserRepoError, match="user 42"):
        get_user(FakeRepo(), 42)
```

## Pattern 3: Handle & return a sentinel / fallback (document it!)

```python
from typing import Optional

def safe_int(s: str) -> Optional[int]:
    try:
        return int(s)
    except ValueError:
        return None  # documented fallback

# pytest
def test_safe_int_returns_none_on_bad_input():
    assert safe_int("x") is None
```

---

## Choosing exception types

* **Bad value** → `ValueError`
* **Bad type** → `TypeError`
* **Missing key/index** → `KeyError` / `IndexError`
* **I/O** → `OSError` family (`FileNotFoundError`, `PermissionError`, …)
* **Domain layer** → your **custom subclass of `Exception`**

> Prefer **specific** types: they make `except XError` precise and testable.

---

## Re-raising with context (don’t lose the original traceback)

```python
try:
    do_io()
except OSError as e:
    raise ConfigLoadError("failed to read config") from e
```

---

## Logging without swallowing

```python
import logging
log = logging.getLogger(__name__)

def load_conf(path):
    try:
        return _read(path)
    except OSError:
        log.exception("config read failed: %s", path)  # keeps traceback
        raise
```

*Testing logs & behavior:*

```python
def test_logs_and_reraises(caplog):
    with caplog.at_level("ERROR"), pytest.raises(OSError):
        load_conf("/nope")
    assert "config read failed" in caplog.text
```

---

## Parametrized “raises / not raises” in one test

```python
import pytest
from contextlib import nullcontext as does_not_raise

def divide(a, b):
    if b == 0:
        raise ZeroDivisionError("b must not be zero")
    return a / b

@pytest.mark.parametrize("b,expect", [
    (0, pytest.raises(ZeroDivisionError)),
    (2, does_not_raise()),
])
def test_divide_cases(b, expect):
    with expect:
        divide(10, b)
```

---

## Common anti-patterns (and fixes)

* **`except Exception:`** with no re-raise → hides real bugs
  ✅ Catch the **specific** error or re-raise after adding context.
* **Print then return `None`** on error → silent failure
  ✅ Log (if useful) and **raise**, or **document** a clear fallback value.
* **Using `assert` in app code** for validation
  ✅ Use explicit `if …: raise ValueError(...)` (asserts can be stripped with `-O`).

---

## Mini decision flow

* Can the caller handle it? → **Raise (specific)**
* Need to map low-level to domain error? → **`raise NewError(...) from e`**
* Can I fully recover? → **Handle + return explicit fallback** (document & test)
* Unsure? → Prefer **raising**; it’s easier to relax later than to tighten silent failures.


