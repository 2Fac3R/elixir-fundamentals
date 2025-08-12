# Solutions: Functional Programming

defmodule FunctionalProgrammingSolutions do
  # Challenge 1: Pure Functions
  def pure_add_item(list, item) do
    # Explanation: In Elixir, `++` and `|` do not modify the original list, but return a new one.
    # This function is pure because it has no side effects; its output depends solely on its inputs.
    [item | list]
    # or list ++ [item]
  end

  # Challenge 2: Higher-Order Functions
  def operate_on_list([], _func), do: []
  def operate_on_list([head | tail], func) do
    # Explanation: This is a manual implementation of `map` using recursion.
    # 1. The base case: if the list is empty, return an empty list.
    # 2. The recursive case: apply the function to the head of the list and then
    #    call `operate_on_list` for the rest of the list (the tail).
    #    Finally, construct the new list.
    [func.(head) | operate_on_list(tail, func)]
  end
end