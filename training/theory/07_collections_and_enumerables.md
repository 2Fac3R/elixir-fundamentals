# 7. Collections and Enumerables

Elixir offers a powerful and consistent set of functions for working with collections through the `Enum` and `Stream` modules.

## The `Enum` Module

The `Enum` module contains over 100 functions for working with enumerables like Lists, Maps, and Ranges. `Enum` operations are "eager", meaning they perform the operation and return the result immediately.

**Common Functions:**

- `Enum.map/2`: Transforms each element of a collection.
  ```elixir
  Enum.map([1, 2, 3], fn x -> x * 2 end) #=> [2, 4, 6]
  ```

- `Enum.filter/2`: Filters the collection, keeping only elements that return `true`.
  ```elixir
  Enum.filter([1, 2, 3, 4], fn x -> rem(x, 2) == 0 end) #=> [2, 4]
  ```

- `Enum.reduce/3`: Reduces the collection to a single value.
  ```elixir
  # Sum all elements
  Enum.reduce([1, 2, 3, 4], 0, fn x, acc -> x + acc end) #=> 10
  ```

- `Enum.find/2`: Finds the first element that satisfies a condition.
- `Enum.any?/2`: Checks if at least one element satisfies a condition.
- `Enum.all?/2`: Checks if all elements satisfy a condition.
- `Enum.sort/1`: Sorts the collection.
- `Enum.join/2`: Joins the elements of the collection into a string.

## The `Stream` Module

The `Stream` module allows for "lazy" operations on collections. Instead of processing the entire collection at once, `Stream` creates a "recipe" of operations that only execute when the stream is passed to an `Enum` function.

This is useful for:
- Working with infinite or very large collections.
- Chaining multiple transformations efficiently, as data is processed element by element through the entire chain of operations.

### Example 1: Large Collections
Imagine you have a massive log file, but you only need the first 5 error lines. `Stream` is perfect for this.

```elixir
# This simulates a very large list of log entries
log_entries = 1..1_000_000_000

log_entries
|> Stream.filter(&(&1 |> rem(3) == 0)) # Find "errors" (e.g., numbers divisible by 3)
|> Stream.map(&("Error line: #{&1}")) # Format the line
|> Stream.take(5)                     # Take only the first 5 results
|> Enum.to_list()                     # The computation happens here
#=> ["Error line: 3", "Error line: 6", "Error line: 9", "Error line: 12", "Error line: 15"]
```
Without `Stream`, `Enum` would have created a massive intermediate list of 333,333,333 numbers before filtering.

### Example 2: Infinite Streams
Streams can represent infinite sequences of data. `Stream.cycle/1` repeats a collection forever, and `Stream.iterate/2` creates a sequence by repeatedly calling a function.

```elixir
# Create an infinite stream of traffic light colors
traffic_light = Stream.cycle([:green, :yellow, :red])

# Get the next 10 states of the light
traffic_light |> Enum.take(10)
#=> [:green, :yellow, :red, :green, :yellow, :red, :green, :yellow, :red, :green]

# Create an infinite stream of powers of 2
powers_of_two = Stream.iterate(1, &(&1 * 2))

powers_of_two |> Enum.take(8)
#=> [1, 2, 4, 8, 16, 32, 64, 128]
```

### Example 3: Composing Streams
You can build complex data pipelines by combining stream functions. The pipeline only runs when you finally pass it to an `Enum` function. This makes your code both efficient and easy to read.

```elixir
# Create a stream from a file
# File.stream!("my_large_file.log") # This would return a stream of lines

# Let's simulate it with a list
simulated_file_stream = Stream.map(1..100, &("Line #{&1}"))

processed_stream =
  simulated_file_stream
  |> Stream.with_index()
  |> Stream.filter(fn {_, index} -> rem(index, 10) == 0 end) # Take every 10th line
  |> Stream.map(fn {line, _} -> String.upcase(line) end)     # Uppercase it

# Nothing has been computed yet! The work happens now:
processed_stream |> Enum.to_list()
#=> ["LINE 10", "LINE 20", "LINE 30", ...]
```
