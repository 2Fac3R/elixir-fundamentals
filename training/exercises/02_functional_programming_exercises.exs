# Exercises: Functional Programming

defmodule FunctionalProgrammingExercises do
  # Challenge 1: Pure Functions
  # The following `add_item` function modifies its input argument, which is a side effect.
  # Refactor the function to be pure, returning a new list with the added item
  # without modifying the original.

  # def add_item(list, item) do
  #   list ++ [item] # This is already functional, but let's make it more explicit
  # end

  # Re-write the function here to make it clear that it is pure
  def pure_add_item(list, item) do
    # Your code here
  end

  # Challenge 2: Higher-Order Functions
  # Create a function `operate_on_list/2` that takes a list and an anonymous function.
  # The function should apply the anonymous function to each element of the list.
  # Do not use `Enum.map` directly; implement the logic with recursion.
  def operate_on_list(list, func) do
    # Your code here
  end
end