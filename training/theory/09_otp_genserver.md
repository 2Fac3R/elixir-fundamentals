# 9. OTP and GenServer

While `spawn`, `send`, and `receive` are the building blocks, **OTP (Open Telecom Platform)** is the framework that provides robust and proven abstractions for building concurrent systems.

OTP is not just a library; it is a set of design principles and behaviours.

## Behaviours

A "behaviour" is a module that defines a set of callback functions that you must implement. The most common behaviour is `GenServer`.

## `GenServer` (Generic Server)

A `GenServer` is an abstraction over a process that maintains state, executes code asynchronously, and handles synchronous and asynchronous calls. It is the primary tool for encapsulating state in Elixir.

**Lifecycle of a GenServer:**

1.  **`start_link/1`:** Starts the GenServer and links it to the current process (usually a Supervisor).
2.  **`init/1`:** The callback function that initializes the server's state.
3.  **`handle_call/3`:** Handles synchronous calls (the caller waits for a response).
4.  **`handle_cast/2`:** Handles "casts" or asynchronous calls (the caller does not wait for a response).
5.  **`handle_info/2`:** Handles all other messages sent to the process.
6.  **`terminate/2`:** Is executed when the process is about to terminate.

**Example: A simple counter**

```elixir
defmodule Counter do
  use GenServer

  # --- Public API ---
  def start_link(initial_value) do
    GenServer.start_link(__MODULE__, initial_value, name: __MODULE__)
  end

  def increment do
    GenServer.cast(__MODULE__, :increment)
  end

  def current_value do
    GenServer.call(__MODULE__, :current_value)
  end

  # --- Server Callbacks ---
  @impl true
  def init(initial_value) do
    {:ok, initial_value} # The initial state is the value
  end

  @impl true
  def handle_cast(:increment, state) do
    new_state = state + 1
    {:noreply, new_state}
  end

  @impl true
  def handle_call(:current_value, _from, state) do
    {:reply, state, state} # Return the current state
  end
end

# Usage:
Counter.start_link(10)
Counter.increment()
Counter.increment()
Counter.current_value() #=> 12
```