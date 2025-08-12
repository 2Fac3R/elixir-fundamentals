# Exam Solutions: Comprehensions

**1. What is the primary output of a `for` comprehension without an `:into` option?**

- **Answer:** c) A list
- **Explanation:** By default, `for` is designed to build lists, making it a powerful tool for transforming enumerables into new lists.

**2. How do you add a filter to a comprehension?**

- **Answer:** b) By adding a boolean condition directly after the generator.
- **Explanation:** Conditions that evaluate to `true` or `false` can be added to the comprehension to filter which elements are processed. Example: `for n <- 1..10, rem(n, 2) == 0, do: n`.

**3. What is the purpose of the `:into` option in a `for` comprehension?**

- **Answer:** c) To define the type of collection to be built (e.g., a map).
- **Explanation:** The `:into` option directs the output of the comprehension into a different data structure. For example, `into: %{}` will build a map.

**4. What will be the result of the following comprehension?**
`for n <- [1, 2, 3], letter <- ["a", "b"], do: {n, letter}`

- **Answer:** b) `[{1, "a"}, {1, "b"}, {2, "a"}, {2, "b"}, {3, "a"}, {3, "b"}]`
- **Explanation:** When multiple generators are used, the comprehension iterates through every possible combination of the elements, creating a Cartesian product.
