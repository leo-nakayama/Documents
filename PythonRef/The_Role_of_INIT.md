You ran into one of those “Python object model” rules that feels surprising at first. Let’s unpack it carefully:

---

## 1. The role of `__init__`

* `__init__` is an **initializer**, not a constructor.
* Its job: take an already-created object (`self`) and initialize its attributes.
* It is **not supposed to return anything** → implicitly returns `None`.

That’s why Python raised:

```
TypeError: __init__() should return None, not 'MobilePhone'
```

When you `return self`, you break the contract.

---

## 2. Where the object actually comes from

* The **constructor** in Python is `__new__`, not `__init__`.
* The sequence is:

```
obj = MobilePhone.__new__(MobilePhone, args...)
if isinstance(obj, MobilePhone):
    MobilePhone.__init__(obj, args...)
```

* `__new__` allocates and returns the new instance.
* `__init__` just configures it.

So by the time your `__init__` runs, the `MobilePhone` instance (`self`) already exists.

---

## 3. Why you don’t return `self`

* Because Python already has the instance from `__new__`.
* Returning something else from `__init__` would replace that instance, which doesn’t make sense in Python’s design.
* That’s why Python enforces: **`__init__` must return `None`.**

---

## 4. What you can do if you *really* want control

* Override `__new__` if you need to control instance creation:

  ```python
  class MobilePhone:
      def __new__(cls, number):
          obj = super().__new__(cls)
          print("Allocating new MobilePhone instance")
          return obj

      def __init__(self, number):
          print("Initializing MobilePhone")
          self.number = number
  ```

* Here `__new__` returns the object, and `__init__` sets it up.

---

## 5. Four Causes view of your snippet

* **Material cause (M)**: the data you store (`number`).
* **Formal cause (F)**: the class definition `MobilePhone`.
* **Efficient cause (E)**:

  * `__new__` (creation)
  * `__init__` (initialization)
* **Final cause (P)**: a usable phone object with its number set.

So in your comment, the final cause is not “return the instance” — it’s “produce a ready-to-use instance.” That’s why you don’t explicitly `return self`.

---

✅ **Answer in short:**
You don’t return `self` from `__init__` because the object already exists (via `__new__`). `__init__` just initializes it, and must return `None`. If you want to customize what gets returned, override `__new__` instead.

---

👉 Do you want me to show you a **small code demo** contrasting `__new__` vs `__init__`, so you can literally see who creates the object and who just sets it up?
