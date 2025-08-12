# 3. Syntax Fundamentals and Data Types

## Basic Data Types

Elixir has a rich set of data types.

- **Integers and Floats:**
  ```elixir
  integer = 42
  float = 3.14
  ```

- **Atoms:** Constants whose value is their own name. They are very common in Elixir to represent states or keys. They are defined with a colon `:`.
  ```elixir
  status = :ok
  error_reason = :not_found
  ```

- **Strings:** UTF-8 encoded text strings. They are defined with double quotes.
  ```elixir
  greeting = "Hello, world"
  ```

- **Lists:** Ordered collections of elements. They can contain different types.
  ```elixir
  list = [1, "two", :three, [4, 5]]
  ```

- **Tuples:** Ordered collections of elements, similar to lists, but stored contiguously in memory. They are ideal for grouping a fixed number of elements or for returning multiple values from a function.
  ```elixir
  person = {:john, 30, "Engineer"}
  ok_result = {:ok, "Data processed"}
  ```

- **Maps:** Key-value collections. Keys can be of any type.
  ```elixir
  colors = %{:red => "#FF0000", :blue => "#0000FF"}
  # Abbreviated syntax if keys are atoms
  config = %{host: "localhost", port: 8080}
  ```

## Operators

- **Arithmetic:** `+`, `-`, `*`, `/`
- **Boolean:** `and`, `or`, `not` (use `true`, `false`, `nil`)
- **Comparison:** `==`, `!=`, `>`, `<`, `>=`, `<=`
- **String Concatenation:** `<>`
- **List Operators:** `++` (concatenation), `--` (difference)