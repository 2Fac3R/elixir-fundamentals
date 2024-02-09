# Condicional if
defmodule ConditionalIf do
  def is_even(number) do
    if rem(number, 2) == 0 do
      IO.puts("#{number} is even")
    else
      IO.puts("#{number} is odd")
    end
  end
end

# Output: "4 is even"
ConditionalIf.is_even(4)
# Output: "7 is odd"
ConditionalIf.is_even(7)

# Condicional unless
defmodule ConditionalUnless do
  def is_positive(number) do
    unless number < 0 do
      IO.puts("#{number} is positive")
    end
  end
end

# Output: "10 is positive"
ConditionalUnless.is_positive(10)
# No output
ConditionalUnless.is_positive(-3)

# Condicional case
defmodule ConditionalCase do
  def classify_value(value) do
    case value do
      :ok -> IO.puts("Success")
      :error -> IO.puts("Error")
      _ -> IO.puts("Unknown")
    end
  end
end

# Output: "Success"
ConditionalCase.classify_value(:ok)
# Output: "Error"
ConditionalCase.classify_value(:error)
# Output: "Unknown"
ConditionalCase.classify_value(:other)

defmodule ConditionalCond do
  def grade(score) do
    cond do
      score >= 90 -> "A"
      score >= 80 -> "B"
      score >= 70 -> "C"
      score >= 60 -> "D"
      true -> "F"
    end
  end
end

# Output: "A"
IO.puts(ConditionalCond.grade(95))
# Output: "B"
IO.puts(ConditionalCond.grade(85))
# Output: "C"
IO.puts(ConditionalCond.grade(75))
# Output: "D"
IO.puts(ConditionalCond.grade(65))
# Output: "F"
IO.puts(ConditionalCond.grade(55))

## With
# el bloque with intenta ejecutar una serie de expresiones y, si todas son exitosas,
# devuelve el valor resultante. Si alguna de las expresiones falla
# (devuelve un {:error, reason}), el bloque with se corta y el flujo de control
# pasa al bloque else, donde se maneja el error.

# Ejemplo básico de with para manejar errores:
with {:ok, value} <- some_function_that_returns_result(),
     {:ok, transformed} <- transform_value(value) do
  {:ok, transformed}
else
  {:error, reason} ->
    {:error, reason}
end

# Ejemplo de with anidado:
with {:ok, value1} <- some_function_that_returns_result(),
     {:ok, value2} <- another_function(value1),
     {:ok, value3} <- yet_another_function(value2) do
  {:ok, value3}
else
  {:error, reason} ->
    {:error, reason}
end
