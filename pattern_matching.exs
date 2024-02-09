## Pattern Matching con Tuplas:
# Definimos una tupla
tuple = {1, 2, 3}

# Utilizamos pattern matching para extraer los elementos de la tupla
{a, b, c} = tuple

# Output: 1
IO.puts(a)
# Output: 2
IO.puts(b)
# Output: 3
IO.puts(c)

## Pattern Matching con Listas:
# Definimos una lista
list = [1, 2, 3]

# Utilizamos pattern matching para extraer los elementos de la lista
[a, b, c] = list

# Output: 1
IO.inspect(a)
# Output: 2
IO.inspect(b)
# Output: 3
IO.inspect(c)

## Pattern Matching en Funciones:
# Definimos una función que suma los primeros dos elementos de una lista
sum_first_two = fn
  [a, b | _rest] -> a + b
  _other -> 0
end

# Output: 3
IO.puts(sum_first_two.([1, 2, 3]))

## Pattern Matching con Mapas:
# Definimos un mapa
map = %{name: "John", age: 30, country: "USA"}

# Utilizamos pattern matching para extraer valores específicos del mapa
%{name: name, age: age} = map

# Output: "John"
IO.puts(name)
# Output: 30
IO.puts(age)

## Pattern Matching en Funciones Simples:
# Definimos una función que retorna "true" si el argumento es un número par, y "false" si es impar
defmodule MyMath do
  def is_even(number) when rem(number, 2) == 0 do
    true
  end

  def is_even(_other) do
    false
  end
end

# Output: true
IO.puts(MyMath.is_even(4))
# Output: false
IO.puts(MyMath.is_even(5))

## Pattern Matching con Argumentos Anidados:
# Definimos una función que retorna el primer elemento de una lista
defmodule ListHelpers do
  def first([head | _tail]), do: head
end

# Output: 1
IO.puts(ListHelpers.first([1, 2, 3]))

## Pattern Matching en Funciones con Varias Cláusulas:
# Definimos una función que saluda a una persona dependiendo de su género
defmodule Greetings do
  def greet(:male), do: "Hello, sir!"
  def greet(:female), do: "Hello, madam!"
  def greet(:other), do: "Hello, friend!"
end

# Output: "Hello, sir!"
IO.puts(Greetings.greet(:male))
# Output: "Hello, madam!"
IO.puts(Greetings.greet(:female))
# Output: "Hello, friend!"
IO.puts(Greetings.greet(:other))
