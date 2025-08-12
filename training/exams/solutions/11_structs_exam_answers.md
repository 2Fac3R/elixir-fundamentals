# Exam Solutions: Structs

**1. What is the primary purpose of a struct?**

- **Answer:** b) To provide a map with guaranteed keys and default values.
- **Explanation:** Structs are built on top of maps but add a layer of validation, ensuring that only the keys defined in the `defstruct` can exist.

**2. Given `defmodule Car, do: defstruct [:make, :model]`, which of the following is a VALID way to create a Car struct?**

- **Answer:** b) `%Car{make: "Ford", model: "Mustang"}`
- **Explanation:** The syntax for creating a struct is `%ModuleName{key: value, ...}`.

**3. If you try to create a struct with a key that was not defined in `defstruct`, what happens?**

- **Answer:** d) A compile-time error occurs.
- **Explanation:** This is a key feature of structs. The compiler enforces the structure you have defined, preventing errors from typos or incorrect keys.

**4. What is the correct syntax for updating a field in a struct?**

- **Answer:** c) `%{my_car | model: "Fiesta"}`
- **Explanation:** This syntax creates a new struct with the specified field updated. Because of immutability, the original `my_car` variable is unchanged.
