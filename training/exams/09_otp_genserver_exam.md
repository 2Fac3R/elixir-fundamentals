# Exam: OTP and GenServer

**1. What is a `GenServer`?**

a) A generic web server.
b) An OTP abstraction for a process that maintains state.
c) A way to generate database servers.
d) A special type of macro in Elixir.

**2. What is `GenServer.call/2` used for?**

a) To make an asynchronous call to a `GenServer` without waiting for a reply.
b) To start a new `GenServer`.
c) To make a synchronous call to a `GenServer`, waiting for a reply.
d) To stop a `GenServer`.

**3. Which `GenServer` callback is responsible for handling messages sent with `GenServer.cast/2`?**

a) `handle_call/3`
b) `init/1`
c) `handle_info/2`
d) `handle_cast/2`

**4. What must the `init/1` function of a `GenServer` return for a successful start?**

a) `:ok`
b) `{:ok, initial_state}`
c) `{:noreply, initial_state}`
d) `{:reply, :ok, initial_state}`