# Crear una fecha con el formato año-mes-día:
date = ~D[2023-11-23]
IO.puts(date)

# Obtener la fecha actual:
current_date = Date.utc_today()
IO.puts(current_date)

# Obtener el día de la semana de una fecha:
day_of_week = Date.day_of_week(~D[2023-11-23])
IO.puts(day_of_week)

# Sumar días a una fecha:
new_date = Date.add(~D[2023-11-23], 7)
IO.puts(new_date)

# Restar días a una fecha:
new_date = Date.add(~D[2023-11-23], -7)
IO.puts(new_date)

# Verificar si una fecha es un año bisiesto:
leap_year = Date.leap_year?(~D[2024-01-01])
IO.puts(leap_year)

# Obtener el año, mes y día de una fecha:
{year, month, day} = Date.to_erl(~D[2023-11-23])
IO.puts("#{year} #{month} #{day}")
