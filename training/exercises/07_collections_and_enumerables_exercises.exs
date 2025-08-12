# Exercises: Enum and Stream

defmodule EnumExercises do
  # Challenge 1: `Enum.map` and `Enum.filter`
  # Given a list of person maps, complete `filter_adults_and_get_names/1`
  # to return a list with the names of people who are 18 or older.
  def filter_adults_and_get_names(people) do
    # people is a list like: [%{name: "John", age: 25}, %{name: "Ann", age: 17}]
    # Your code here
  end

  # Challenge 2: `Enum.reduce`
  # Complete `count_votes/1` so that, given a list of votes (atoms),
  # it returns a map with the count of each vote.
  def count_votes(votes) do
    # votes is a list like: [:yes, :no, :yes, :yes, :abstain]
    # Your code here
  end

  # Challenge 3: `Stream`
  # Complete `first_five_even_squared/1`.
  # Given a list of numbers, use Streams to find the first 5 even numbers
  # and return a list with their squares.
  def first_five_even_squared(numbers) do
    # Your code here
  end

  # Challenge 4: Infinite Stream
  # Use `Stream.iterate/2` to create an infinite stream of numbers starting from 1,
  # where each subsequent number is 3 greater than the previous one (1, 4, 7, 10, ...).
  # Then, take the first 10 numbers from that stream.
  def ten_numbers_plus_three do
    # Your code here
  end

  # Challenge 5: Simulating Log Processing
  # Given a list of log strings, create a stream that:
  # 1. Filters the list to include only lines containing the word "ERROR".
  # 2. Takes the first 3 error lines found.
  # 3. Returns them as a list.
  def find_first_three_errors(log_lines) do
    # log_lines = ["INFO: user logged in", "ERROR: failed to connect", "DEBUG: ...", "ERROR: timeout", "INFO: ...", "ERROR: invalid data"]
    # Your code here
  end
end
