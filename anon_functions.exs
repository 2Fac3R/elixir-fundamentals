# Definición de una función anónima que suma dos números
sum = fn a, b -> a + b end
# Output: 5
IO.puts(sum.(2, 3))

# Definición de una función anónima que multiplica un número por sí mismo
square = fn x -> x * x end
# Output: 16
IO.puts(square.(4))

# Definición de una función anónima que verifica si un número es par
is_even = fn x -> rem(x, 2) == 0 end
# Output: true
IO.puts(is_even.(6))
# Output: false
IO.puts(is_even.(7))

# Definición de una función anónima que concatena dos cadenas
concatenate = fn a, b -> "#{a} #{b}" end
# Output: Hello world
IO.puts(concatenate.("Hello", "world"))

## Pattern Matching
handle_result = fn
  {:ok, result} -> IO.puts("Handling #{result}...")
  {:ok, _} -> IO.puts("This would be never run as previous will be matched beforehand.")
  {:error} -> IO.puts("An error has occurred!")
end

handle_result.({:ok, "success"})
handle_result.({:error})
