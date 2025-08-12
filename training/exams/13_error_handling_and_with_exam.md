# Exam: Error Handling and `with`

**1. What is the primary use case for the `with` special form?**

a) To run multiple functions in parallel.
b) To replace `if/else` blocks.
c) To chain together a series of operations that can fail, avoiding nested `case` statements.
d) To catch runtime exceptions like `ArithmeticError`.

**2. In a `with` expression, what happens if a clause does NOT match?**

a) It raises an `ArgumentError`.
b) It returns `nil`.
c) It continues to the next clause.
d) It immediately stops and returns the non-matching value.

**3. When is it most appropriate to use `try/rescue`?**

a) For all conditional logic.
b) When you want to handle expected runtime exceptions, often from external libraries.
c) When you want to pattern match on `{:ok, value}` tuples.
d) As a replacement for the `case` statement.

**4. What is the purpose of the `else` block in a `with` statement?**

a) It always runs, regardless of success or failure.
b) It provides a way to handle any of the failing cases from the `with` chain.
c) It is an alias for the `do` block.
d) It is required for `with` to be valid syntax.
