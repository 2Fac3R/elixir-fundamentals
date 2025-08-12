# 6. Control Structures

Unlike other languages, in Elixir control structures are expressions that return a value.

## `case`

`case` allows you to compare a value against multiple patterns, like a super-powered `switch`.

```elixir
def verify(value) do
  case value do
    {:ok, result} ->
      "Success: #{result}"

    {:error, :not_found} ->
      "Error: Resource not found"

    {:error, reason} ->
      "Generic error: #{reason}"

    _ -> # The underscore `_` matches anything
      "Unexpected value"
  end
end

verify({:ok, "data"}) #=> "Success: data"
verify({:error, :timeout}) #=> "Generic error: timeout"
```

## `cond`

`cond` is similar to a chain of `if/else if/else`. It evaluates a series of conditions and executes the body of the first one that is true.

```elixir
def describe_number(n) do
  cond do
    n < 0 -> "Negative"
    n == 0 -> "Zero"
    n > 0 -> "Positive"
  end
end
```
A `true` condition at the end acts as an `else`.

## `if` and `unless`

These are the simplest conditional structures. `if` executes if the condition is "truthy" (anything other than `false` or `nil`). `unless` is the opposite.

```elixir
if true do
  "This executes"
end

unless false do
  "This also executes"
end

# With else
if x > 10 do
  :greater
else
  :less_or_equal
end
```
For simple conditions, `if/unless` are useful. For more complex logic, `case` or `cond` are preferred.

## `with`
The `with` special form is ideal for chaining a sequence of operations where any step might fail. It helps avoid deeply nested `case` statements. If all steps succeed (match the pattern on the left of `<-`), the `do` block is executed. If any step fails, the chain is halted and the `else` block is executed.

```elixir
def process_data(params) do
  with {:ok, data} <- fetch_data(params),
       {:ok, validated} <- validate_data(data),
       :ok <- save_data(validated) do
    # Runs only if all steps above succeed
    {:ok, "Data processed successfully"}
  else
    # Runs if any step fails. `error` will be the failing value.
    # e.g., {:error, :not_found} or {:error, :invalid}
    error ->
      Logger.error("A step failed: #{inspect(error)}")
      {:error, :processing_failed}
  end
end
```