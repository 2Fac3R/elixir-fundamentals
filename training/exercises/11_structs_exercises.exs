# Exercises: Structs

defmodule StructExercises do
  # Challenge 1: Define and Create a Struct
  # Define a struct named `Book` with the following fields and default values:
  # - `title`: "Untitled"
  # - `author`: "Unknown"
  # - `pages`: 0
  # Then, create an instance of the book "The Hobbit" by "J.R.R. Tolkien" with 310 pages.

  defmodule Book do
    # Your defstruct here
  end

  def create_the_hobbit do
    # Your code here to create the struct
  end

  # Challenge 2: Pattern Matching on Structs
  # Write a function `get_book_summary/1` that takes a `Book` struct and returns a string.
  # It should match on the `Book` struct and return: "<title> by <author>"
  # For any other data type, it should return "Not a book".

  def get_book_summary(data) do
    # Your function clauses here
  end

  # Challenge 3: Updating a Struct
  # Write a function `checkout_book/1` that takes a book struct and updates its
  # `:status` field to `:checked_out`. Assume the Book struct has a `:status` field
  # with a default of `:available`.
  # (You will need to add this field to your struct definition above).

  def checkout_book(book) do
    # Your code here
  end
end
