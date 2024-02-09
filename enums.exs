# Módulo Enum y funciones de alto orden
Enum.each([1, 2, 3, 4, 5], fn x -> IO.puts("Element: #{x}") end)

# Enum.map/2: Aplicar una función a cada elemento de una enumeración
squared_numbers = Enum.map([1, 2, 3, 4, 5], fn x -> x * x end)
IO.puts("Squared numbers: #{inspect(squared_numbers)}")

# Enum.filter/2: Filtrar elementos basados en un predicado
even_numbers = Enum.filter([1, 2, 3, 4, 5], fn x -> rem(x, 2) == 0 end)
IO.puts("Even numbers: #{inspect(even_numbers)}")

# Enum.reduce/3: Reducir una enumeración a un solo valor
sum = Enum.reduce([1, 2, 3, 4, 5], 0, fn x, acc -> x + acc end)
IO.puts("Sum of numbers: #{sum}")

# Enum.sort/1: Ordenar una enumeración
sorted_numbers = Enum.sort([3, 1, 4, 1, 5, 9, 2, 6, 5])
IO.puts("Sorted numbers: #{inspect(sorted_numbers)}")

# Enum.chunk_every/2: Dividir una enumeración en fragmentos de un tamaño específico
chunks = Enum.chunk_every([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)
IO.puts("Chunks: #{inspect(chunks)}")

# Enum.count/1: Contar el número de elementos en una enumeración
count = Enum.count([1, 2, 3, 4, 5])
IO.puts("Count of numbers: #{count}")

# Enum.all?/2: Verificar si todos los elementos de una enumeración cumplen un predicado
all_positive = Enum.all?([-1, 2, -3, 4, -5], fn x -> x > 0 end)
IO.puts("All positive? #{all_positive}")

# Enum.any?/2: Verificar si al menos un elemento de una enumeración cumple un predicado
any_negative = Enum.any?([1, 2, 3, 4, 5], fn x -> x < 0 end)
IO.puts("Any negative? #{any_negative}")

# Enum.zip/1: Combinar dos enumeraciones en una lista de tuplas
zipped_list = Enum.zip([:a, :b, :c], [1, 2, 3])
IO.puts("Zipped list: #{inspect(zipped_list)}")
