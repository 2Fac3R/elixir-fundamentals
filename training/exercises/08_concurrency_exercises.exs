# Exercises: Concurrency

# Challenge: Ping-Pong with Processes

# The goal is to create two processes that send "ping" and "pong" messages to each other
# a certain number of times.

defmodule PingPong do
  # `start/1` should create two processes, `ping` and `pong`.
  # The `ping` process should send the first message.
  # `n` is the number of times each process should *receive* a message.
  def start(n) do
    # Create the pong process
    # Create the ping process, passing it the pong's pid
    # Send the initial message to ping
  end

  # The `ping` process waits for a `:ping` message from the `pong` process.
  # When it receives it, it prints "Ping received", waits for a second, and sends `:pong` back.
  # It does this `n` times.
  def ping(pong_pid, n) do
    # Your code here
  end

  # The `pong` process waits for a `:pong` message from the `ping` process.
  # When it receives it, it prints "Pong received", waits for a second, and sends `:ping` back.
  # It does this `n` times.
  def pong(ping_pid, n) do
    # Your code here
  end
end