# Listas y operaciones básicas
list = [1, 2, 3, 4, 5]
IO.puts("First element of the list: #{hd(list)}")
IO.puts("Length of the list: #{length(list)}")
IO.puts("Last element of the list: #{List.last(list)}")

# Tuplas y patrones
tuple = {:ok, "Success"}

case tuple do
  {:ok, message} -> IO.puts("Message: #{message}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end

# Mapas y acceso a elementos
map = %{name: "Alice", age: 30}
IO.puts("Name: #{map[:name]}")
IO.puts("Age: #{map[:age]}")

# Átomos. Un atomo es una constante cuyo valor es su mismo nombre
atom = :hello

# Keywords: lista de pares clave-valor donde las claves son átomos
keyword = [name: "John", age: 30]
IO.inspect(keyword)

case atom do
  :hello -> IO.puts("Received hello atom")
  _ -> IO.puts("Received something else")
end
