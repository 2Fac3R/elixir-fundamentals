# Solutions: Comprehensions

defmodule ComprehensionSolutions do
  # Challenge 1: Simple List Comprehension
  def uppercase_words(words) do
    # Explanation: We iterate through each `word` in the `words` list
    # and apply the `String.upcase/1` function to it. `for` collects
    # the results into a new list.
    for word <- words, do: String.upcase(word)
  end

  # Challenge 2: Comprehension with a Filter
  def find_multiples_of_three(numbers) do
    # Explanation: We add a filter condition `rem(n, 3) == 0`.
    # The `do:` block will only be executed for numbers where this
    # condition is true.
    for n <- numbers, rem(n, 3) == 0, do: n
  end

  # Challenge 3: Comprehension into a Map
  def users_to_map(users) do
    # Explanation: The `:into` option tells the comprehension to build a map
    # instead of a list. The `do:` block must produce key-value tuples `{key, value}`
    # that will be inserted into the new map.
    for {id, name} <- users, into: %{}, do: {id, name}
  end
end
