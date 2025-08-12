# Cheatsheet: Basic Elixir Syntax

## Data Types

| Type        | Example                               | Description                                  |
|-------------|---------------------------------------|----------------------------------------------|
| Integer     | `42`                                  | Integer number.                              |
| Float       | `3.14`                                | Floating-point number.                       |
| Atom        | `:ok`, `:error`                       | A constant whose value is its name.          |
| String      | `"Hello, Elixir"`                     | A UTF-8 encoded text string.                 |
| List        | `[1, :two, "three"]`                | Ordered and flexible collection.             |
| Tuple       | `{:ok, 42}`                           | Ordered and fixed-size collection.           |
| Map         | `%{name: "Ann", "age" => 28}`     | Key-value collection.                        |
| Boolean     | `true`, `false`, `nil`                | `nil` behaves like `false` in conditionals.  |

## Common Operators

| Operator | Description                | Example                               |
|----------|----------------------------|---------------------------------------|
| `=`      | Match Operator             | `x = 1`                               |
| `==`     | Equality (value)           | `"a" == "a"`  (true)                  |
| `===`    | Strict Equality (value and type) | `1 == 1.0` (true), `1 === 1.0` (false) |
| `<>`     | String Concatenation       | `"hello" <> " world"`                 |
| `++`     | List Concatenation         | `[1, 2] ++ [3, 4]`                    |
| `--`     | List Difference            | `[1, 2, 2, 3] -- [2]`  (`[1, 2, 3]`)  |
| `|>`     | Pipe Operator              | `data |> func1() |> func2()`            |

## Definitions

```elixir
# Module
defmodule MyModule do
  # Module attribute (constant)
  @my_constant 123

  # Public function (name/arity)
  def my_function(arg1, arg2) do
    # body
  end

  # Private function
  defp my_private_function(arg1) do
    # body
  end
end

# Anonymous function
my_anonymous_func = fn a, b -> a + b end
my_anonymous_func.(5, 3) # => 8
```