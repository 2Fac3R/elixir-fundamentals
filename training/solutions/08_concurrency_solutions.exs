# Solutions: Concurrency

defmodule PingPong do
  def start(n) do
    # Explanation: `self()` returns the PID of the current process (in this case, the IEx session).
    # We create the `pong` process first. Then we create `ping`, passing it the PID of `pong`.
    # Finally, we start the exchange by sending the first message to `ping`.
    pong_pid = spawn_link(fn -> pong(self(), n) end)
    ping_pid = spawn_link(fn -> ping(pong_pid, n) end)

    send(ping_pid, {:ping, self()})
  end

  def ping(pong_pid, n) when n > 0 do
    # Explanation: We use `receive` to wait for the message. Pattern matching
    # ensures we only react to a `:ping` message.
    # After processing, we make a recursive call with `n-1` to continue the loop.
    receive do
      {:ping, from_pid} ->
        IO.puts("Ping received from #{inspect(from_pid)}")
        Process.sleep(1000)
        send(pong_pid, {:pong, self()})
        ping(pong_pid, n - 1)
    end
  end

  def ping(_, 0), do: IO.puts("Ping finished.")

  def pong(ping_pid, n) when n > 0 do
    receive do
      {:pong, from_pid} ->
        IO.puts("Pong received from #{inspect(from_pid)}")
        Process.sleep(1000)
        send(ping_pid, {:ping, self()})
        pong(ping_pid, n - 1)
    end
  end

  def pong(_, 0), do: IO.puts("Pong finished.")
end