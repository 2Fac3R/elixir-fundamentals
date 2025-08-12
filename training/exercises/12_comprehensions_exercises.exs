# Exercises: Comprehensions

defmodule ComprehensionExercises do
  # Challenge 1: Simple List Comprehension
  # Given a list of strings, use a comprehension to create a new list
  # where each string is converted to uppercase.
  def uppercase_words(words) do
    # words = ["cat", "dog", "fish"]
    # Your code here
  end

  # Challenge 2: Comprehension with a Filter
  # Given a list of numbers, use a comprehension to create a list
  # containing only the numbers that are multiples of 3.
  def find_multiples_of_three(numbers) do
    # numbers = 1..20
    # Your code here
  end

  # Challenge 3: Comprehension into a Map
  # Given a list of user tuples `[{id, name}, ...]`, use a comprehension
  # to transform it into a map where the `id` is the key and the `name` is the value.
  def users_to_map(users) do
    # users = [{1, "Alice"}, {2, "Bob"}, {3, "Charlie"}]
    # Your code here
  end
end
