# Exam Solutions: Modules and Functions

**1. What is the correct way to call the following function?**

- **Answer:** b) `MyModule.my_function(1, 2)`
- **Explanation:** Public functions of a module are called using the `ModuleName.function_name(arguments)` syntax.

**2. What will the following piece of code print?**
`[1, 2, 3] |> Enum.map(&(&1 * 2)) |> Enum.filter(&(&1 > 3)) |> IO.inspect()`

- **Answer:** b) `[4, 6]`
- **Explanation:** The pipe operator (`|>`) passes the result of a function as the first argument to the next.
  1. `[1, 2, 3]` is passed to `Enum.map`, resulting in `[2, 4, 6]`.
  2. `[2, 4, 6]` is passed to `Enum.filter`, which keeps elements greater than 3, resulting in `[4, 6]`.
  3. `[4, 6]` is passed to `IO.inspect`.

**3. What is the main difference between `def` and `defp`?**

- **Answer:** b) `def` defines public functions, `defp` defines private functions.
- **Explanation:** Functions defined with `def` can be called from outside the module, while those defined with `defp` can only be called from within the same module.

**4. What is the "arity" of a function?**

- **Answer:** c) The number of arguments it accepts.
- **Explanation:** Arity is a fundamental part of a function's identity in Elixir. For example, `Enum.map/1` and `Enum.map/2` are considered two different functions.