# 13. Error Handling and `with`

In Elixir, there are different ways to handle situations that don't go as planned. The idiomatic approach is to use `:ok`/`:error` tuples, but sometimes you need to handle runtime exceptions.

## The `with` Special Form

`with` is a powerful tool for chaining together a series of operations that can fail (i.e., return `{:error, reason}`). It helps avoid deeply nested `case` statements.

If every expression in a `with` block matches successfully, it executes the `do` block. If any expression fails to match, `with` immediately stops and returns the non-matching value.

```elixir
def process_payment(params) do
  with {:ok, user} <- fetch_user(params["user_id"]),
       {:ok, card} <- fetch_card(user, params["card_token"]),
       {:ok, charge} <- charge_card(card, params["amount"]) do
    # This block only runs if all previous steps succeeded
    {:ok, "Payment successful for charge: #{charge.id}"}
  else
    # This block runs if any of the steps failed
    # The `error` variable will be whatever caused the failure
    # e.g., {:error, :user_not_found} or {:error, :card_expired}
    error -> error
  end
end
```

## `try/rescue` for Exceptions

While Elixir prefers the "let it crash" philosophy for unexpected errors, sometimes you need to handle *expected* exceptions, especially when dealing with external libraries or resources. This is done with `try/rescue`.

```elixir
def read_config_file(path) do
  try do
    # File.read!/1 raises an exception if the file doesn't exist
    file_content = File.read!(path)
    {:ok, file_content}
  rescue
    # This block only runs if a File.Error exception occurs
    e in File.Error ->
      {:error, "Failed to read file: #{e.reason}"}
  end
end
```

- **`try`**: Wraps the code that might raise an exception.
- **`rescue`**: Catches specific exceptions and allows you to handle them gracefully.

You can also use `catch` to catch thrown values and `after` to ensure a piece of code runs whether an exception occurred or not, similar to `finally` in other languages.
