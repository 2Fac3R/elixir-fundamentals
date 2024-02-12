# Lista comprehension
list_comprehension = for x <- [1, 2, 3, 4], do: x * 2
# Output: [2, 4, 6, 8]
IO.inspect(list_comprehension)

# Lista comprehension con filtro
list_comprehension_filter = for x <- 1..10, rem(x, 2) == 0, do: x
# Output: [2, 4, 6, 8, 10]
IO.inspect(list_comprehension_filter)

# Tupla comprehension
tuple_comprehension = for x <- [1, 2, 3, 4], do: {x, x * 2}
# Output: [{1, 2}, {2, 4}, {3, 6}, {4, 8}]
IO.inspect(tuple_comprehension)

# Tupla comprehension con filtro
tuple_comprehension_filter = for x <- 1..10, rem(x, 2) == 0, do: {x, x * 2}
# Output: [{2, 4}, {4, 8}, {6, 12}, {8, 16}, {10, 20}]
IO.inspect(tuple_comprehension_filter)

# Map comprehension
map_comprehension = for x <- [1, 2, 3, 4], into: %{}, do: {x, x * 2}
# Output: %{1 => 2, 2 => 4, 3 => 6, 4 => 8}
IO.inspect(map_comprehension)

# Map comprehension con filtro
map_comprehension_filter = for x <- 1..10, rem(x, 2) == 0, into: %{}, do: {x, x * 2}
# Output: %{2 => 4, 4 => 8, 6 => 12, 8 => 16, 10 => 20}
IO.inspect(map_comprehension_filter)
