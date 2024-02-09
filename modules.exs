# Definición de un módulo
defmodule Basics do
  # Definición de una función
  def hello_world do
    IO.puts("Hello, world!")
  end

  # Definición de una función con parámetros por defecto
  def thank(name \\ "buddy") do
    IO.puts("Thanks #{name}!")
  end

  ## Pattern matching & destructuring
  def hello(%{name: name, favorite_color: color} = person) do
    "Hello #{name}, your favorite color is #{color}"
  end

  # Guards
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names)
  end

  ## Arity
  # hello/0
  def hello(), do: "Hello, anonymous person!"
  # hello/1
  def hello(name), do: "Hello, " <> name
  # hello/2
  def hello(name1, name2), do: "Hello, #{name1} and #{name2}"

  # Definición de una función privada
  def do_something do
    IO.puts("Doing something...")
    private_function()
  end

  defp private_function do
    IO.puts("This is a private function")
  end
end

defmodule MyMath do
  # Definición de una función con coincidencia de patrones
  def factorial(0), do: 1

  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end

  # Definición de una función con recursión de cola
  def sum_list([], acc), do: acc
  def sum_list([head | tail], acc), do: sum_list(tail, acc + head)
end

# Llamada a la función hello_world del módulo Basics
Basics.hello_world()

# Llamada a la función thank del módulo Basics
Basics.thank()
Basics.thank("Gustavo")

# Llamada a las funciones hello del módulo Basics con diferente arity
IO.puts(Basics.hello())
IO.puts(Basics.hello("Gustavo"))
IO.puts(Basics.hello("Gustavo", "Eduardo"))
IO.puts(Basics.hello(%{name: "Fred", age: "95", favorite_color: "Taupe"}))
IO.puts(Basics.hello(["Gustavo", "Eduardo", "Juan"]))

# Llamada a la función factorial del módulo Basics
IO.puts("Factorial of 5: #{MyMath.factorial(5)}")

# Llamada a la función sum_list del módulo Math
IO.puts("Sum of [1, 2, 3, 4, 5]: #{MyMath.sum_list([1, 2, 3, 4, 5], 0)}")

# Llamada a la función privada dentro de otra función
Basics.do_something()
