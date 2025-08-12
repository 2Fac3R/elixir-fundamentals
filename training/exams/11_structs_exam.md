# Exam: Structs

**1. What is the primary purpose of a struct?**

a) To create a list with a fixed size.
b) To provide a map with guaranteed keys and default values.
c) To define a new type of anonymous function.
d) To replace the `Enum` module.

**2. Given `defmodule Car, do: defstruct [:make, :model]`, which of the following is a VALID way to create a Car struct?**

a) `Car.new("Ford", "Mustang")`
b) `%Car{make: "Ford", model: "Mustang"}`
c) `%{make: "Ford", model: "Mustang"}`
d) `defstruct Car, make: "Ford", model: "Mustang"`

**3. If you try to create a struct with a key that was not defined in `defstruct`, what happens?**

a) The key is silently ignored.
b) The key is added to the struct dynamically.
c) A runtime error occurs.
d) A compile-time error occurs.

**4. What is the correct syntax for updating a field in a struct?**
`my_car = %Car{make: "Ford", model: "Mustang"}`

a) `my_car.model = "Fiesta"`
b) `Map.put(my_car, :model, "Fiesta")`
c) `%{my_car | model: "Fiesta"}`
d) `my_car |> Car.update(model: "Fiesta")`
