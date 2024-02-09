# Encadenamiento de funciones:
# Definimos una función que suma dos números
add = fn a, b -> a + b end

# Definimos una función que multiplica un número por 2
double = fn x -> x * 2 end

# Usamos el operador de tubería para aplicar las funciones en secuencia
# Primero suma 1 y 2, luego duplica el resultado
result = 1 |> add.(2) |> double.()
# Output: 6
IO.puts(result)

# Definimos funciones que realizan operaciones matemáticas
square = fn x -> x * x end
subtract_ten = fn x -> x - 10 end

# Utilizamos el operador de tubería para encadenar varias funciones
result = 15 |> subtract_ten.() |> square.()
# Output: 25
IO.puts(result)

# Operaciones con listas:
# Definimos una lista de números
numbers = [1, 2, 3, 4, 5]

# Utilizamos el operador de tubería para aplicar varias operaciones en la lista
result = numbers |> Enum.map(&(&1 * 2)) |> Enum.filter(&(&1 > 5))
# Output: [6, 8, 10]
IO.inspect(result)
