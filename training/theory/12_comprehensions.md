# 12. Comprehensions

Comprehensions are a feature of Elixir that provide a concise and readable way to create collections (like lists, maps, or bitstrings) by iterating over other enumerables. They are syntactic sugar over the `Enum` and `Stream` modules.

## List Comprehensions

The most common type is a list comprehension, which generates a list. It uses the `for` special form.

```elixir
# Basic comprehension: create a new list by doubling every element
original_list = [1, 2, 3, 4]
new_list = for n <- original_list, do: n * 2
# => [2, 4, 6, 8]
```

## Adding Filters

You can add conditions to filter which elements are used in the comprehension.

```elixir
# Get the squares of only the even numbers from a range
even_squares = for x <- 1..10, rem(x, 2) == 0, do: x * x
# => [4, 16, 36, 64, 100]
```

## Comprehensions with `:into`

By default, `for` produces a list. You can use the `:into` option to build other types of collections, like maps.

```elixir
# Create a map from a list of words, where the key is the word
# and the value is its length.
words = ["hello", "world", "elixir"]
word_lengths = for word <- words, into: %{}, do: {word, String.length(word)}
# => %{"elixir" => 6, "hello" => 5, "world" => 5}
```

This is a powerful way to transform data from one shape to another in a single, declarative expression.

## Multiple Generators

You can use multiple generators to iterate over several collections at once, creating combinations.

```elixir
users = ["Alice", "Bob"]
roles = ["Admin", "Guest"]

# Create a list of all possible user-role pairs
user_roles = for user <- users, role <- roles, do: {user, role}
# => [{"Alice", "Admin"}, {"Alice", "Guest"}, {"Bob", "Admin"}, {"Bob", "Guest"}]
```
