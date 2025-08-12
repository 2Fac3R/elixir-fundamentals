# Exam: Comprehensions

**1. What is the primary output of a `for` comprehension without an `:into` option?**

a) A map
b) A tuple
c) A list
d) A string

**2. How do you add a filter to a comprehension?**

a) By using an `if` block inside the `do` block.
b) By adding a boolean condition directly after the generator.
c) By using the `Enum.filter/2` function.
d) By using a `when` guard.

**3. What is the purpose of the `:into` option in a `for` comprehension?**

a) To specify the input enumerable.
b) To filter the results.
c) To define the type of collection to be built (e.g., a map).
d) To import functions into the comprehension.

**4. What will be the result of the following comprehension?**
`for n <- [1, 2, 3], letter <- ["a", "b"], do: {n, letter}`

a) `[{1, "a"}, {2, "b"}, {3, nil}]`
b) `[{1, "a"}, {1, "b"}, {2, "a"}, {2, "b"}, {3, "a"}, {3, "b"}]`
c) `[{1, 2, 3}, {"a", "b"}]`
d) A syntax error.
