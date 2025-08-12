# Exercises: Syntax and Data Types

defmodule SyntaxExercises do
  # Challenge 1: List Manipulation
  # Complete the `list_info/1` function. It should return a tuple with:
  # - The first element of the list.
  # - The last element of the list.
  # - The size of the list.
  # Hint: `hd/1`, `List.last/1`, `length/1`
  def list_info(list) do
    # Your code here
  end

  # Challenge 2: Working with Maps
  # Complete the `update_user/2` function. It should take a user map
  # and a map of new data, and return a new map with the updated data.
  # Hint: `Map.merge/2`
  def update_user(user, new_data) do
    # user = %{name: "alex", email: "alex@example.com"}
    # new_data = %{email: "alex.dev@example.com", age: 30}
    # Your code here
  end
end