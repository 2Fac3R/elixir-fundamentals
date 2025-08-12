# Cheatsheet: Quick Concurrency

## Concurrency Primitives

- `self()`
  - Returns the PID (Process Identifier) of the current process.

- `spawn(func)`
  - Creates a new process that executes the `func` function.
  - Returns the PID of the new process.
  - `pid = spawn(fn -> IO.puts("New process") end)`

- `send(pid, message)`
  - Sends a `message` (any Elixir term) to the `pid` process.
  - It is asynchronous (non-blocking).
  - `send(pid, {:hello, "world"})`

- `receive do ... end`
  - Blocks the current process to wait for a message.
  - Uses pattern matching to handle different types of messages.
  - ```elixir
    receive do
      {:ok, data} -> IO.puts("Received: #{data}")
      {:error, reason} -> IO.puts("Error: #{reason}")
      _ -> IO.puts("Unexpected message")
    after
      5000 -> IO.puts("Timeout: No message received in 5s")
    end
    ```

## GenServer: The Workhorse of OTP

`use GenServer`

### Public API (Client)

- `GenServer.start_link(module, args, opts)`
  - Starts the server. `args` are passed to `init/1`.
  - `opts` can include `:name` to register the process.

- `GenServer.call(pid_or_name, message)`
  - Sends a **synchronous** message. The client waits for a reply.
  - It is handled on the server by `handle_call/3`.

- `GenServer.cast(pid_or_name, message)`
  - Sends an **asynchronous** message. The client does not wait for a reply.
  - It is handled on the server by `handle_cast/2`.

### Callbacks (Server)

- `init(args)`
  - Called when the server starts. Must return `{:ok, initial_state}`.

- `handle_call(message, from, state)`
  - Handles calls from `GenServer.call`.
  - Must return `{:reply, reply_to_client, new_state}`.

- `handle_cast(message, state)`
  - Handles calls from `GenServer.cast`.
  - Must return `{:noreply, new_state}`.

- `handle_info(message, state)`
  - Handles other messages (not `call` or `cast`) sent to the PID.
  - Must return `{:noreply, new_state}`.