## Concatenación de Strings:
string1 = "Hello"
string2 = "World"
concatenated_string = string1 <> " " <> string2
# Output: "Hello World"
IO.puts(concatenated_string)

## Interpolación de Strings:
name = "Alice"
age = 30
interpolated_string = "Hello, my name is #{name} and I am #{age} years old."
# Output: "Hello, my name is Alice and I am 30 years old."
IO.puts(interpolated_string)

## Métodos de Manipulación de Strings:
# Convertir un string a mayúsculas
uppercase_string = String.upcase("hello")
# Output: "HELLO"
IO.puts(uppercase_string)

# Convertir un string a minúsculas
lowercase_string = String.downcase("WORLD")
# Output: "world"
IO.puts(lowercase_string)

capitalize_string = String.capitalize("hello world")
# Output: "Hello world"
IO.puts(capitalize_string)

# Reemplazar una subcadena en un string
replaced_string = String.replace("hello", "e", "a")
# Output: "hallo"
IO.puts(replaced_string)

# Dividir un string en una lista de substrings
split_string = String.split("hello world", " ")
# Output: ["hello", "world"]
IO.inspect(split_string)

## Longitud de un String:
string_length = String.length("hello")
# Output: 5
IO.puts(string_length)

# Verificar si un string comienza con cierto prefijo
starts_with_hello = String.starts_with?("hello world", "hello")
# Output: true
IO.puts(starts_with_hello)

# Verificar si un string termina con cierto sufijo
ends_with_world = String.ends_with?("hello world", "world")
# Output: true
IO.puts(ends_with_world)

char_list = String.to_char_list("hello")
# Output: ['h', 'e', 'l', 'l', 'o']
IO.inspect(char_list)

regex_pattern = String.match?("hello hello hello", ~r/hello/)
# Output: true
IO.puts(regex_pattern)

trimmed_string = String.trim("  hello world  ")
# Output: "hello world"
IO.puts(trimmed_string)
