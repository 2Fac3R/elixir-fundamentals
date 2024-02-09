# Operaciones matemáticas
# División entera: 3
IO.puts(Kernel.div(10, 3))
# Resto de la división: 1
IO.puts(Kernel.rem(10, 3))

# Manejo de listas y tuplas
# Redondeo: 3
IO.puts(Kernel.round(3.14))
# Acceder al elemento en la posición 2: :b
IO.puts(Kernel.elem({:a, :b, :c}, 2))
# Obtener la cabeza de la lista: 1
IO.inspect(Kernel.hd([1, 2, 3]))
# Obtener la cola de la lista: [2, 3]
IO.inspect(Kernel.tl([1, 2, 3]))
# Obtener la longitud de la lista: 3
IO.inspect(Kernel.length([1, 2, 3]))

# Manejo de átomos
# Convertir un átomo en una cadena binaria: "hello"
IO.puts(Kernel.to_string(:hello))
# Inspeccionar un átomo: :ok
IO.puts(Kernel.inspect(:ok))
