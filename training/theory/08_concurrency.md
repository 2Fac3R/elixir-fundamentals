# 8. Concurrency: The Actor Model

Concurrency in Elixir is not based on threads and locks, but on the **Actor Model**. An "actor" is a process that runs concurrently with other processes.

## Processes

- **Lightweight:** You can have hundreds of thousands or even millions of processes on a single machine. An Elixir process is much lighter than an operating system thread.
- **Isolated:** Each process has its own state and its own garbage collector. The failure of one process does not directly affect others.
- **Communicate via messages:** Processes do not share memory. The only way for them to interact is by sending messages to each other.

## `spawn`, `send`, and `receive`

These are the three primitives of concurrency in Elixir.

- **`spawn/1`:** Creates a new process and returns its identifier (PID).
  ```elixir
  pid = spawn(fn -> IO.puts("Hello from another process") end)
  ```

- **`send/2`:** Sends a message to a PID. It is an asynchronous and non-blocking operation.
  ```elixir
  send(pid, {:message, "Hello, PID #{inspect(pid)}"})
  ```

- **`receive/1`:** Blocks the current process and waits to receive a message that matches one of the defined patterns.
  ```elixir
  defmodule Listener do
    def wait do
      receive do
        {:message, content} ->
          IO.puts("I received: #{content}")
          wait() # Loop to continue listening

        {:terminate} ->
          IO.puts("Goodbye!")

        other_message ->
          IO.puts("Unrecognized message: #{inspect(other_message)}")
          wait()
      end
    end
  end

  listener_pid = spawn(fn -> Listener.wait() end)
  send(listener_pid, {:message, "This is my first message"})
  send(listener_pid, {:terminate})
  ```