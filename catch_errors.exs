defmodule Example do
  def safe_dividend(dividend, divisor) do
    try do
      result = dividend / divisor
      {:ok, result}
    catch
      :error, ArithmeticError ->
        {:error, "Division by zero or arithmetic error"}

      :error, MatchError ->
        {:error, "Pattern match error"}
    rescue
      RuntimeError -> IO.puts("Rescued an error!")
    after
      IO.puts("Cleaning up...")
    end
  end
end

# Output: {:ok, 5}
IO.inspect(Example.safe_dividend(10, 2))
# Output: {:error, "Division by zero or arithmetic error"}
IO.inspect(Example.safe_dividend(10, 0))
# Output: {:error, "Pattern match error"}
IO.inspect(Example.safe_dividend("hello", 0))

defmodule Example do
  def safe_operation(data) do
    try do
      # Some operation with data
      {:ok, result}
    catch
      :error, reason when reason == ArgumentError ->
        {:error, "Argument error occurred"}

      :error, reason when is_atom(reason) ->
        {:error, "Atom error occurred"}

      :error, _ ->
        {:error, "An error occurred"}
    end
  end
end
