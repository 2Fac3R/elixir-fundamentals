# 5. Modules and Functions

## Modules

Modules are the way to organize code in Elixir. They are defined with `defmodule`.

```elixir
defmodule Math do
  # Module code goes here
end
```

## Named Functions

Inside a module, functions are defined with `def` (public) or `defp` (private).

A function is identified by its name and its "arity" (number of arguments). `add/2` is a different function from `add/3`.

```elixir
defmodule Math do
  # Public function with arity 2
  def add(a, b) do
    a + b
  end

  # Private function
  defp internal_operation(n) do
    n * 2
  end
end

Math.add(5, 10) #=> 15
```

## Anonymous Functions

These are functions without a name, created with `fn ... end`. They are useful for passing as arguments to other functions.

```elixir
add = fn a, b -> a + b end
add.(1, 2) #=> 3

Enum.map([1, 2, 3], fn x -> x * 2 end)
```

## The Pipe Operator (`|>`)

The pipe operator takes the result of the expression on its left and passes it as the *first* argument to the function on its right. It is extremely useful for chaining data transformations in a readable way.

```elixir
# Without pipe
Enum.sum(Enum.map(Enum.filter(1..10, fn x -> rem(x, 2) == 0 end), fn x -> x * x end))

# With pipe
# 5. Modules and Functions

## Modules

Modules are the way to organize code in Elixir. They are defined with `defmodule`.

```elixir
defmodule Math do
  # Module code goes here
end
```

## Named Functions

Inside a module, functions are defined with `def` (public) or `defp` (private).

A function is identified by its name and its "arity" (number of arguments). `add/2` is a different function from `add/3`.

```elixir
defmodule Math do
  # Public function with arity 2
  def add(a, b) do
    a + b
  end

  # Private function
  defp internal_operation(n) do
    n * 2
  end
end

Math.add(5, 10) #=> 15
```

## Anonymous Functions

These are functions without a name, created with `fn ... end`. They are useful for passing as arguments to other functions.

```elixir
add = fn a, b -> a + b end
add.(1, 2) #=> 3

Enum.map([1, 2, 3], fn x -> x * 2 end)
```

## The Pipe Operator (`|>`)

The pipe operator takes the result of the expression on its left and passes it as the *first* argument to the function on its right. It is extremely useful for chaining data transformations in a readable way.

```elixir
# Without pipe
Enum.sum(Enum.map(Enum.filter(1..10, fn x -> rem(x, 2) == 0 end), fn x -> x * x end))

# With pipe
1..10
|> Enum.filter(fn x -> rem(x, 2) == 0 end) #=> [2, 4, 6, 8, 10]
|> Enum.map(fn x -> x * x end)            #=> [4, 16, 36, 64, 100]
|> Enum.sum()                             #=> 220
```

## Aliasing and Importing

To avoid repeatedly typing long module names, Elixir provides `alias`, `import`, and `require`.

### `alias`
Gives a module a shorter nickname. This is very common.
```elixir
defmodule MySystem do
  alias MySystem.Users.Profile
  
  # Now we can use Profile instead of the full name
  def get_profile(id) do
    Profile.fetch(id)
  end
end
```

### `import`
Allows you to call functions from another module without the module prefix. Use with caution to avoid cluttering the namespace.
```elixir
defmodule MySet do
  import MapSet
  
  def create_set(list) do
    # We can call new/1 instead of MapSet.new/1
    new(list) 
  end
end
```

### `require`
Ensures a module is compiled and loaded. It's mainly used for accessing another module's macros.
```elixir
defmodule MyRouter do
  require Logger
  
  def log_info(message) do
    # Logger.info/1 is a macro, so the module must be required first.
    Logger.info(message)
  end
end
```

```