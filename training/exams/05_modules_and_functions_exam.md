# Exam: Modules and Functions

**1. What is the correct way to call the following function?**
```elixir
defmodule MyModule do
  def my_function(a, b), do: a + b
end
```
a) `my_function(1, 2)`
b) `MyModule.my_function(1, 2)`
c) `MyModule->my_function(1, 2)`
d) `MyModule::my_function(1, 2)`

**2. What will the following piece of code print?**
`[1, 2, 3] |> Enum.map(&(&1 * 2)) |> Enum.filter(&(&1 > 3)) |> IO.inspect()`

a) `[2, 4, 6]`
b) `[4, 6]`
c) `[1, 2, 3]`
d) `[2, 3]`

**3. What is the main difference between `def` and `defp`?**

a) `def` is for dynamic functions, `defp` for static ones.
b) `def` defines public functions, `defp` defines private functions.
c) `def` is for production, `defp` for development.
d) There is no difference.

**4. What is the "arity" of a function?**

a) The type of value it returns.
b) The name of the function.
c) The number of arguments it accepts.
d) Whether the function is public or private.