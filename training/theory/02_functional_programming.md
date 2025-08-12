# 2. Functional Programming Concepts

Elixir is a functional programming language. This deeply influences how code is written and reasoned about.

## Immutability

In Elixir, data is immutable. This means that once a value is created, it cannot be modified.

```elixir
my_list = [1, 2, 3]
# This does not modify `my_list`, it creates a new one.
new_list = [0 | my_list]

IO.inspect(my_list)    #=> [1, 2, 3]
IO.inspect(new_list) #=> [0, 1, 2, 3]
```

Immutability greatly simplifies concurrency, as you don't need locks to protect data that never changes.

## First-Class and Higher-Order Functions

In Elixir, functions are "first-class citizens", meaning they can be treated like any other value:
- They can be assigned to variables.
- They can be passed as arguments to other functions.
- They can be returned as the result of other functions.

A **higher-order function** is a function that takes another function as an argument or returns it as a result. The `Enum` module is full of them.

```elixir
# Assign an anonymous function to a variable
add = fn a, b -> a + b end
add.(1, 2) #=> 3

# Pass a function as an argument
Enum.map([1, 2, 3], fn x -> x * 2 end) #=> [2, 4, 6]
```

## Avoiding Side Effects

Functional programming prefers "pure" functions: functions that, for the same input, always produce the same output and have no observable side effects (like modifying a global variable, writing to a file, or the network).

Code based on pure functions is:
- **Predictable:** Its behavior is consistent.
- **Easy to test:** It doesn't require a complex environment to verify its result.
- **Parallelizable:** It can be run in parallel without the risk of interference.