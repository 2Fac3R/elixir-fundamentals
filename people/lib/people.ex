defmodule People do
  @moduledoc """
  Documentation for `People`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> People.hello()
      :world

  """
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello from the People project!")
  end

  def hello do
    :world
  end
end
