# Exercises: Control Structures

defmodule ControlStructureExercises do
  # Challenge 1: `case`
  # Complete the `analyze_http_response/1` function. It should analyze an HTTP
  # response tuple and return a descriptive string.
  # - `{200, _}` -> "OK"
  # - `{404, _}` -> "Not Found"
  # - `{500, _}` -> "Server Error"
  # - Any other 2-element tuple -> "Unknown Code"
  def analyze_http_response(response) do
    # Your code here
  end

  # Challenge 2: `cond`
  # Complete the `classify_age/1` function. It should return an atom
  # classifying the age:
  # - 0 to 12 -> :child
  # - 13 to 17 -> :teenager
  # - 18 and up -> :adult
  def classify_age(age) do
    # Your code here
  end
end