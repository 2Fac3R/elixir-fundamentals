# 4. Pattern Matching

Pattern Matching is one of Elixir's most powerful features. It is the ability to match a value against a pattern.

## The Match Operator (`=`)

In Elixir, `=` is not an assignment operator, it is a match operator.

```elixir
x = 1 # This assigns 1 to x because x has no previous value.

1 = x # This is valid and returns true, because x (1) matches 1.

2 = x # This raises a MatchError, because 2 does not match x (1).
```

## Destructuring Collections

The true power of pattern matching is seen when destructuring collections.

**With Tuples:**
```elixir
{:ok, result} = {:ok, "This is the result"}
# Now the `result` variable contains "This is the result"

{:error, reason} = {:ok, "This will fail"} # MatchError
```

**With Lists:**
The `[head | tail]` syntax is used to separate the first element from the rest of the list.
```elixir
[head | tail] = [1, 2, 3, 4]
# head => 1
# tail => [2, 3, 4]
```

**With Maps:**
```elixir
%{name: n, age: e} = %{name: "Ana", age: 25, profession: "Doctor"}
# n => "Ana"
# e => 25
```

## In Function Signatures

Pattern Matching can be used directly in function definitions to create different function clauses based on the pattern of the arguments.

```elixir
defmodule Calculator do
  def operate({:add, a, b}), do: a + b
  def operate({:subtract, a, b}), do: a - b
  def operate({:multiply, a, b}), do: a * b
end

Calculator.operate({:add, 5, 3}) #=> 8
Calculator.operate({:subtract, 10, 4}) #=> 6
```