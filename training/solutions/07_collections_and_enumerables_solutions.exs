# Solutions: Enum and Stream

defmodule EnumSolutions do
  # Challenge 1: `Enum.map` and `Enum.filter`
  def filter_adults_and_get_names(people) do
    # Explanation: We chain two Enum operations. First `filter` to
    # keep only the maps of adults. Then, `map` to transform
    # those maps and extract only the value of the `:name` key.
    people
    |> Enum.filter(fn person -> person.age >= 18 end)
    |> Enum.map(fn person -> person.name end)
  end

  # Challenge 2: `Enum.reduce`
  def count_votes(votes) do
    # Explanation: `reduce` is perfect for converting a collection into a single value (in this case, a map).
    # We start with an empty map (`%{}`). For each vote in the list, we use `Map.update/4`.
    # This function updates a key in the map. If the key doesn't exist, it uses the initial value (1).
    # If it exists, it applies the function (adding 1 to the existing value).
    Enum.reduce(votes, %{}, fn vote, counts ->
      Map.update(counts, vote, 1, &(&1 + 1))
    end)
  end

  # Challenge 3: `Stream`
  def first_five_even_squared(numbers) do
    # Explanation: We use `Stream` for efficiency. The `filter` and `map` operations
    # are not executed on the entire list. They create a lazy "recipe".
    # `Stream.take(5)` tells the recipe that we only need 5 results.
    # Finally, `Enum.to_list/1` executes the stream, processing only the elements
    # necessary to fulfill the request.
    numbers
    |> Stream.filter(fn x -> rem(x, 2) == 0 end)
    |> Stream.map(fn x -> x * x end)
    |> Stream.take(5)
    |> Enum.to_list()
  end

  # Challenge 4: Infinite Stream
  def ten_numbers_plus_three do
    # Explanation: `Stream.iterate/2` is perfect for creating an infinite sequence.
    # It starts with `1` and repeatedly applies the function `&(&1 + 3)` to the previous result.
    # `Enum.take(10)` is what makes the process finite, by telling the stream we only want 10 items.
    Stream.iterate(1, &(&1 + 3))
    |> Enum.take(10)
  end

  # Challenge 5: Simulating Log Processing
  def find_first_three_errors(log_lines) do
    # Explanation: This simulates efficiently processing a large file. We create a stream
    # from the list, filter it lazily for lines containing "ERROR", and then take the
    # first 3. The stream stops processing the list as soon as 3 errors are found.
    log_lines
    |> Stream.filter(&String.contains?(&1, "ERROR"))
    |> Enum.take(3)
  end
end
