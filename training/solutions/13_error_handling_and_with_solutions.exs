# Solutions: Error Handling and `with`

defmodule ErrorHandlingSolutions do
  # Challenge 1: Using `with` for a happy path
  def get_user(id) when id == 1, do: {:ok, %{id: 1, name: "Alice"}}
  def get_user(_), do: {:error, :user_not_found}

  def get_balance(%{id: 1}), do: {:ok, 1000}
  def get_balance(_), do: {:error, :balance_not_found}

  def get_user_balance(id) do
    # Explanation: `with` chains the two function calls. If `get_user` returns `{:ok, user}`,
    # the `user` variable is passed to `get_balance`. If `get_balance` also returns `{:ok, balance}`,
    # the `do` block is executed. If either fails, the chain is broken.
    with {:ok, user} <- get_user(id),
         {:ok, balance} <- get_balance(user) do
      {:ok, balance}
    end
  end

  # Challenge 2: `with` and the `else` block
  def get_user_balance_friendly(id) do
    # Explanation: The `else` block catches any non-matching result from the `with` chain.
    # We can then pattern match on the error to provide a custom, user-friendly response.
    with {:ok, user} <- get_user(id),
         {:ok, balance} <- get_balance(user) do
      {:ok, balance}
    else
      {:error, :user_not_found} -> "User could not be found."
      {:error, :balance_not_found} -> "Balance for user could not be found."
    end
  end

  # Challenge 3: `try/rescue`
  def safe_to_integer(string) do
    # Explanation: The `try` block wraps the code that might raise an error.
    # If `String.to_integer` succeeds, its result is returned and wrapped in an `:ok` tuple.
    # If it raises an `ArgumentError`, the `rescue` block catches it and returns our custom error tuple.
    try do
      {:ok, String.to_integer(string)}
    rescue
      ArgumentError -> {:error, :not_an_integer}
    end
  end
end
