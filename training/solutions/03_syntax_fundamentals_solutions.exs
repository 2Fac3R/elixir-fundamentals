# Solutions: Syntax and Data Types

defmodule SyntaxSolutions do
  # Challenge 1: List Manipulation
  def list_info(list) do
    # Explanation: We use functions from the Kernel and the `List` module to
    # get the required information from the list and package it into a tuple.
    {hd(list), List.last(list), length(list)}
  end

  # Challenge 2: Working with Maps
  def update_user(user, new_data) do
    # Explanation: `Map.merge/2` is the perfect function for this. It takes two maps
    # and combines them. If a key exists in both, the value from the second map (new_data)
    # prevails in the resulting map.
    Map.merge(user, new_data)
  end
end