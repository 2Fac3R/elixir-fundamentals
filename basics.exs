# Alias y referencias a módulos
alias Math, as: MathFunctions
IO.puts(MathFunctions.sum_list([1, 2, 3], 0))

# Módulo Kernel y funciones de utilidad
IO.puts("Current time: #{System.os_time()}")

# Uso de registros (structs)
# defmodule User do
#   defstruct name: "John", age: 30
# end

# user = %User{name: "Alice", age: 25}
# IO.puts("User: #{inspect(user)}")
