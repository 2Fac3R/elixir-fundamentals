# Exam Solutions: Error Handling and `with`

**1. What is the primary use case for the `with` special form?**

- **Answer:** c) To chain together a series of operations that can fail, avoiding nested `case` statements.
- **Explanation:** `with` excels at cleaning up code that would otherwise be a "pyramid of doom" of nested `case` statements, making success and error paths clear.

**2. In a `with` expression, what happens if a clause does NOT match?**

- **Answer:** d) It immediately stops and returns the non-matching value.
- **Explanation:** This "short-circuiting" behavior is what makes `with` so effective for handling pipelines where any step can fail.

**3. When is it most appropriate to use `try/rescue`?**

- **Answer:** b) When you want to handle expected runtime exceptions, often from external libraries.
- **Explanation:** While Elixir prefers `:ok`/`:error` tuples, `try/rescue` is the correct tool for dealing with code that raises exceptions, which is common when interoperating with Erlang or other libraries.

**4. What is the purpose of the `else` block in a `with` statement?**

- **Answer:** b) It provides a way to handle any of the failing cases from the `with` chain.
- **Explanation:** The `else` block receives the non-matching value from the `with` chain, allowing you to centralize your error-handling logic and transform different errors into a consistent response.
