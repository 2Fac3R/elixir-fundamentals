# Exercises: Error Handling and `with`

defmodule ErrorHandlingExercises do
  # Challenge 1: Using `with` for a happy path
  # You have two functions: `get_user/1` and `get_balance/1`.
  # Chain them using `with` in the `get_user_balance/1` function.
  # If both succeed, it should return `{:ok, balance}`.
  # If either fails, it should return the specific error tuple.

  def get_user(id) when id == 1, do: {:ok, %{id: 1, name: "Alice"}}
  def get_user(_), do: {:error, :user_not_found}

  def get_balance(%{id: 1}), do: {:ok, 1000}
  def get_balance(_), do: {:error, :balance_not_found}

  def get_user_balance(id) do
    # Your `with` expression here
  end

  # Challenge 2: `with` and the `else` block
  # Extend the function from Challenge 1. If it returns an error,
  # use the `else` block to format it into a more user-friendly string:
  # `{:error, :user_not_found}` -> "User could not be found."
  # `{:error, :balance_not_found}` -> "Balance for user could not be found."

  def get_user_balance_friendly(id) do
    # Your `with/else` expression here
  end

  # Challenge 3: `try/rescue`
  # The `String.to_integer/1` function raises an `ArgumentError` if the string
  # is not a valid integer. Write a function `safe_to_integer/1` that uses
  # `try/rescue` to catch this specific error and return `{:error, :not_an_integer}` instead.
  # If successful, it should return `{:ok, integer}`.

  def safe_to_integer(string) do
    # Your `try/rescue` block here
  end
end
