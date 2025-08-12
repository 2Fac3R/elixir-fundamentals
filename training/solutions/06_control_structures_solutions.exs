# Solutions: Control Structures

defmodule ControlStructureSolutions do
  # Challenge 1: `case`
  def analyze_http_response(response) do
    # Explanation: `case` is ideal for pattern matching on a value.
    # We use the underscore `_` to ignore the second element of the tuple,
    # as we are only interested in the HTTP status code for the logic.
    case response do
      {200, _} -> "OK"
      {404, _} -> "Not Found"
      {500, _} -> "Server Error"
      {_, _} -> "Unknown Code"
    end
  end

  # Challenge 2: `cond`
  def classify_age(age) do
    # Explanation: `cond` is perfect for a series of boolean tests.
    # It evaluates each condition in order and executes the body of the first one that is `true`.
    # The order of the conditions is important for the logic to be correct.
    cond do
      age >= 0 and age <= 12 -> :child
      age >= 13 and age <= 17 -> :teenager
      age >= 18 -> :adult
    end
  end
end