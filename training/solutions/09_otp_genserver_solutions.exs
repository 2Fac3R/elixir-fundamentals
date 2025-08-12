# Solutions: GenServer

defmodule Safe do
  use GenServer

  # --- Public API ---

  def start_link(initial_value, password) do
    # Explanation: We start the GenServer and pass the initial state as a tuple.
    # We give it a name so we can easily refer to it from the public API.
    GenServer.start_link(__MODULE__, {initial_value, password}, name: __MODULE__)
  end

  def store(new_value) do
    # Explanation: We use `cast` because it is a "fire and forget" operation.
    # We don't need to wait for a response from the server.
    GenServer.cast(__MODULE__, {:store, new_value})
  end

  def get_value(password) do
    # Explanation: We use `call` because we need a synchronous response from the server.
    # The calling process will block until it receives the reply.
    GenServer.call(__MODULE__, {:get_value, password})
  end

  # --- Server Callbacks ---

  @impl true
  def init({initial_value, password}) do
    # Explanation: The GenServer's state will be a tuple containing
    # both the stored value and the password needed to access it.
    {:ok, {initial_value, password}}
  end

  @impl true
  def handle_cast({:store, new_value}, {_, password}) do
    # Explanation: When receiving a `cast` to store, we update the first
    # element of the state tuple (the value) and keep the second (the password).
    # We return `:noreply` because `cast`s do not send a reply.
    {:noreply, {new_value, password}}
  end

  @impl true
  def handle_call({:get_value, attempt}, _from, {stored_value, correct_pass}) do
    # Explanation: When receiving a `call` to get the value, we compare the provided password.
    # We use `reply` to send a response to the calling process.
    # The server's state does not change in this operation.
    if attempt == correct_pass do
      {:reply, {:ok, stored_value}, {stored_value, correct_pass}}
    else
      {:reply, {:error, :wrong_password}, {stored_value, correct_pass}}
    end
  end
end