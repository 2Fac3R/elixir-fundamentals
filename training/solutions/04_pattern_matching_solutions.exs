# Solutions: Pattern Matching

defmodule PatternMatchingSolutions do
  # Challenge 1: Destructuring Tuples
  def get_name_and_age({name, age}) do
    # Explanation: We match the input tuple against the pattern `{name, age}`.
    # Elixir automatically assigns the corresponding values to the variables.
    "#{name} is #{age} years old"
  end

  # Challenge 2: Head and Tail of a List
  def process_list([head | tail]) do
    # Explanation: The `[head | tail]` pattern is an idiomatic way in Elixir
    # to destructure a list into its first element (head) and the rest (tail).
    {head, tail}
  end

  # Challenge 3: Filtering with Pattern Matching in Functions
  # Explanation: We define multiple clauses of the same function. Elixir
  # tests the call arguments against each clause in order and executes
  # the first one that matches.

  def handle_message({:ok, content}) do
    "Received: #{content}"
  end

  def handle_message({:error, :locked}) do
    "Error: resource locked"
  end

  def handle_message({:error, reason}) do
    "Unknown error: #{reason}"
  end
end