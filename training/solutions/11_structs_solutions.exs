# Solutions: Structs

defmodule StructSolutions do
  # Challenge 1: Define and Create a Struct
  defmodule Book do
    # Explanation: `defstruct` defines the blueprint for our struct,
    # including the allowed keys and their default values.
    defstruct title: "Untitled", author: "Unknown", pages: 0, status: :available
  end

  def create_the_hobbit do
    # Explanation: We create an instance of the struct using the %ModuleName{} syntax,
    # providing the values for the keys we want to set.
    %Book{title: "The Hobbit", author: "J.R.R. Tolkien", pages: 310}
  end

  # Challenge 2: Pattern Matching on Structs
  # Explanation: We use pattern matching in the function head to ensure we only
  # operate on `Book` structs. This is much safer than just assuming the input is a map.
  def get_book_summary(%Book{title: t, author: a}) do
    "#{t} by #{a}"
  end

  def get_book_summary(_other) do
    "Not a book"
  end

  # Challenge 3: Updating a Struct
  # Explanation: The `%{struct | key: new_value}` syntax is the idiomatic way
  # to create a *new* struct with one or more values updated.
  def checkout_book(book) do
    %{book | status: :checked_out}
  end
end
