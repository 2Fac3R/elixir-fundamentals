# 11. Structs

While maps with atom keys are useful, Elixir provides `structs` to create more defined and structured data types. A struct is an extension of a map that enforces a specific set of keys and provides a default value for them.

## Defining a Struct

Structs are defined within a module using `defstruct`. It takes a list of keys with their default values.

```elixir
defmodule User do
  defstruct name: "Anonymous", age: 0, email: nil
end
```

## Creating and Using Structs

You create a struct much like a map, but using the module name.

```elixir
# Create a user with default values
default_user = %User{}
# => %User{name: "Anonymous", age: 0, email: nil}

# Create a user with specific values
john = %User{name: "John Doe", age: 30}
# => %User{name: "John Doe", age: 30, email: nil}

# Accessing data uses the same dot-notation as maps
IO.puts(john.name) #=> "John Doe"
```

One key advantage of structs is compile-time checks. You cannot create a struct with a key that wasn't defined in `defstruct`.

```elixir
%User{invalid_key: "this will fail"} #=> (CompileError) key :invalid_key not found
```

## Structs and Pattern Matching

Pattern matching works beautifully with structs, allowing you to ensure you are working with the correct data type.

```elixir
defmodule Greeter do
  def greet(%User{name: name}) do
    "Hello, #{name}!"
  end

  def greet(_other_data_type) do
    "I only greet Users."
  end
end
```

## A Brief Look at Protocols: `Inspect`

By default, structs don't always print nicely. You can control how a struct is displayed by implementing the `Inspect` protocol for it. This is an example of extending the behavior of your custom data type.

```elixir
defmodule User do
  defstruct [:name, :age]

  defimpl Inspect do
    def inspect(%User{name: name, age: age}, _opts) do
      "User(#{name}, #{age} years old)"
    end
  end
end

IO.inspect(%User{name: "Jane", age: 25}) #=> User(Jane, 25 years old)
```
