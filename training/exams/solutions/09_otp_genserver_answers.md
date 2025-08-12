# Exam Solutions: OTP and GenServer

**1. What is a `GenServer`?**

- **Answer:** b) An OTP abstraction for a process that maintains state.
- **Explanation:** It is the most common OTP behaviour, which encapsulates the logic of a client-server process, handling state, synchronous, and asynchronous calls.

**2. What is `GenServer.call/2` used for?**

- **Answer:** c) To make a synchronous call to a `GenServer`, waiting for a reply.
- **Explanation:** The calling process blocks until the `GenServer` processes the message in its `handle_call/3` and sends a reply.

**3. Which `GenServer` callback is responsible for handling messages sent with `GenServer.cast/2`?**

- **Answer:** d) `handle_cast/2`
- **Explanation:** `cast` is for asynchronous messages (the client does not wait for a reply), and these are handled by the `handle_cast/2` callback on the server.

**4. What must the `init/1` function of a `GenServer` return for a successful start?**

- **Answer:** b) `{:ok, initial_state}`
- **Explanation:** This tuple indicates to the supervisor that the process started correctly and sets the initial state of the server.