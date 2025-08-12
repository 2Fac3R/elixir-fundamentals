# Cheatsheet: Common `Enum` Functions

The `Enum` module is your Swiss army knife for working with collections.

## Transformation

- `Enum.map(collection, func)`
  - Returns a new list with the result of applying `func` to each element.
  - `Enum.map([1, 2, 3], &(&1 * 2)) #=> [2, 4, 6]`

- `Enum.reduce(collection, acc, func)`
  - Reduces the collection to a single value. `acc` is the initial accumulator.
  - `Enum.reduce([1, 2, 3], 0, &(&1 + &2)) #=> 6`

## Filtering and Searching

- `Enum.filter(collection, func)`
  - Returns a list with elements for which `func` returns `true`.
  - `Enum.filter([1, 2, 3, 4], &(rem(&1, 2) == 0)) #=> [2, 4]`

- `Enum.find(collection, func)`
  - Returns the *first* element for which `func` returns `true`, or `nil`.
  - `Enum.find([1, 2, 3], &(&1 > 2)) #=> 3`

- `Enum.reject(collection, func)`
  - The opposite of `filter`. Returns elements for which `func` is `false`.
  - `Enum.reject([1, 2, 3], &(&1 > 2)) #=> [1, 2]`

## Checks (Booleans)

- `Enum.any?(collection, func)`
  - Returns `true` if `func` is `true` for *at least one* element.
  - `Enum.any?([:a, :b, 1], &is_integer/1) #=> true`

- `Enum.all?(collection, func)`
  - Returns `true` if `func` is `true` for *all* elements.
  - `Enum.all?([2, 4, 6], &(rem(&1, 2) == 0)) #=> true`

- `Enum.member?(collection, value)`
  - Returns `true` if `value` is found in the `collection`.
  - `Enum.member?([1, 2, 3], 2) #=> true`

## Sorting and Grouping

- `Enum.sort(collection)`
  - Sorts the collection. A function can be passed for custom sorting.
  - `Enum.sort([3, 1, 2]) #=> [1, 2, 3]`

- `Enum.group_by(collection, func)`
  - Groups elements into a map, where the keys are the result of `func`.
  - `Enum.group_by(["a", "b", "ant"], &String.length/1) #=> %{1 => ["a", "b"], 3 => ["ant"]}`

- `Enum.count(collection)`
  - Returns the number of elements.
  - `Enum.count([1, 2, 3]) #=> 3`