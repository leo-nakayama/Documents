Perfect 🙌 — here’s a **1-page visual cheat sheet** that brings together everything we’ve been exploring.
It shows the **object → class → type hierarchy**, common **dunder attributes/methods**, and the **execution pipeline**.
You can paste this into a `.md` file and keep it as a quick reference.

---

# 🐍 Python Under-the-Hood Cheat Sheet

```
 ┌───────────────────────────────────────────────────────────────┐
 │   OBJECT  →  CLASS  →  TYPE (metaclass)                        │
 └───────────────────────────────────────────────────────────────┘

object (instance)
    • Example: d = Duck()
    • d.__class__ → <class '__main__.Duck'>

class (blueprint)
    • Example: class Duck: ...
    • Duck.__class__ → <class 'type'>
    • Created by 'type' under the hood

type (apex)
    • Example: type(Duck) → <class 'type'>
    • 'type' itself is a class, instance of itself
```

---

## 🔑 Common Dunder **Attributes**

| Attribute     | Belongs to            | Meaning                                                           |
| ------------- | --------------------- | ----------------------------------------------------------------- |
| `__name__`    | modules, classes, fns | Name of the object (module name = `"__main__"` when run directly) |
| `__class__`   | all objects           | Class of the object                                               |
| `__dict__`    | most objs/classes     | Writable attributes mapping                                       |
| `__file__`    | modules               | Path to source file (if any)                                      |
| `__package__` | modules               | Package name for relative imports                                 |
| `__doc__`     | modules/classes/fns   | Docstring                                                         |

---

## ⚙️ Common Dunder **Methods**

| Method        | Purpose              | When Called                         |
| ------------- | -------------------- | ----------------------------------- |
| `__init__`    | Initialize instance  | Immediately after creation          |
| `__new__`     | Construct instance   | Before `__init__`, allocates object |
| `__call__`    | Make object callable | When you do `obj()`                 |
| `__str__`     | User-friendly string | `str(obj)` / `print(obj)`           |
| `__repr__`    | Debug string         | `repr(obj)` / REPL echo             |
| `__len__`     | Length protocol      | `len(obj)`                          |
| `__getitem__` | Index access         | `obj[i]`                            |
| `__iter__`    | Iterator protocol    | `for x in obj:`                     |

---

## 🛠 Execution Pipeline

```
 Source code
     ↓ parse
 Abstract Syntax Tree (ast)
     ↓ compile()
 Bytecode (dis.dis)
     ↓ interpreter loop
 Runtime execution (objects, classes, methods)
```

* **Literals** → show up as `Constant` in AST
* **Functions/Methods** → compiled at definition, executed only when called
* **Classes** → compiled at definition, body executed immediately (attributes/methods defined), but methods’ code objects run later

---

## 📦 Module Execution

* Top-level script: `__name__ == "__main__"` (string literal).
* Imported module: `__name__ == "modulename"`.
* Compiled bytecode stored in `__pycache__` (filesystem folder, **not** an attribute).

---

## 🧭 Rule of Thumb (Design)

* **Use a module** when grouping stateless functions/utilities.
* **Use a class** when you need state + behavior bound together.
* **Remember:**

  * `__new__` creates (constructor)
  * `__init__` configures (initializer)
  * `__class__` points back to blueprint
  * `type()` reveals what kind of thing you have

---

✅ **Summary Slogan:**
**Objects are what you use → Classes are what you design → `type` is what makes classes possible.**

---

👉 Would you like me to turn this cheat sheet into a **single-page PDF with boxes/arrows** (visual diagram), so you can literally pin it on your wall?
