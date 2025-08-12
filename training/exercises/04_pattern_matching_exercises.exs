# Exercises: Pattern Matching

defmodule PatternMatchingExercises do
  # Challenge 1: Destructuring Tuples
  # Complete the `get_name_and_age` function so that it
  # extracts the name and age from the `person` tuple.
  def get_name_and_age(person) do
    # Your code here
    # Example: if person is `{:john, 30}`, it should return `"John is 30 years old"`
  end

  # Challenge 2: Head and Tail of a List
  # Complete the `process_list` function to return a tuple
  # with the first element and the rest of the list.
  def process_list(list) do
    # Your code here
    # Example: if list is `[1, 2, 3]`, it should return `{1, [2, 3]}`
  end

  # Challenge 3: Filtering with Pattern Matching in Functions
  # Create three clauses for the `handle_message` function:
  # 1. If the message is `{:ok, content}`, it should return `"Received: #{content}"`
  # 2. If the message is `{:error, :locked}`, it should return `"Error: resource locked"`
  # 3. For any other error message `{:error, reason}`, it should return `"Unknown error: #{reason}"`
  def handle_message(message) do
    # Your code here
  end
end