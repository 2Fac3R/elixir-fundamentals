# Exercises: GenServer

# Challenge: Create a "Safe" with GenServer

# The goal is to create a GenServer that acts as a simple safe.
# It should be able to store a value, but it can only be accessed with a password.

# Requirements:
# 1. The GenServer is started with an initial value and a password.
#    `Safe.start_link("my secret", "1234")`

# 2. Public API:
#    - `Safe.store(new_value)`: Allows changing the stored value. Must be a `cast` (asynchronous).
#    - `Safe.get_value(password)`: Allows reading the value. Must be a `call` (synchronous).
#      - If the password is correct, it should return `{:ok, value}`.
#      - If the password is incorrect, it should return `{:error, :wrong_password}`.

defmodule Safe do
  use GenServer

  # --- Public API ---

  def start_link(initial_value, password) do
    # Your code here
  end

  def store(new_value) do
    # Your code here
  end

  def get_value(password) do
    # Your code here
  end

  # --- Server Callbacks ---

  # @impl true
  # def init(...) do
  #   # The state should be a tuple: {stored_value, password}
  # end

  # @impl true
  # def handle_cast(...) do
  #   # For the `store` function
  # end

  # @impl true
  # def handle_call(...) do
  #   # For the `get_value` function
  # end
end