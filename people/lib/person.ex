defmodule People.Person do
  @moduledoc """
  Documentation for the People.Person module.
  """

  defstruct first_name: nil,
            last_name: nil,
            birthday: nil,
            location: "home"

  @doc """
  Joins together a person's first name and last name.
  If that person only has a first name, then will only show that name.

  ## Examples

      iex> ryan = %Person{first_name: "Ryan", last_name: "Bigg"}
      iex> ryan |> Person.full_name
      "Ryan Bigg"

      iex> madonna = %Person{first_name: "Madonna"}
      iex> madonna |> Person.full_name
      "Madonna"

  """
  def full_name(%__MODULE__{
        first_name: first_name,
        last_name: nil
      }) do
    "#{first_name}"
  end

  def full_name(%__MODULE__{} = person) do
    "#{person.first_name} #{person.last_name}"
  end

  @doc """
  Calculates the age of a person based on their birthday.

  ## Examples

      iex> person = %People.Person{first_name: "John", last_name: "Doe", birthday: ~D[1990-01-01]}
      iex> People.Person.age(person)
      34

      iex> person = %People.Person{first_name: "Jane", last_name: "Doe", birthday: ~D[1992-02-29]}
      iex> People.Person.age(person)
      32

      iex> today = Date.utc_today()
      iex> person = %People.Person{first_name: "Alice", last_name: "Smith", birthday: today}
      iex> People.Person.age(person)
      0
  """
  def age(%__MODULE__{} = person) do
    days = Date.diff(Date.utc_today(), person.birthday)
    days / 365.25 |> round
  end

  @doc """
  Toggles a person's location between "home" and "away".

  ## Examples

      iex> person = %Person{location: "home"}
      iex> Person.toggle_location(person)
      %Person{location: "away"}

      iex> person = %Person{location: "away"}
      iex> Person.toggle_location(person)
      %Person{location: "home"}
  """
  def toggle_location(%__MODULE__{location: "away"} = person) do
    person |> set_location("home")
  end

  def toggle_location(%__MODULE__{location: "home"} = person) do
    person |> set_location("away")
  end

  defp set_location(%__MODULE__{} = person, location) do
    %{person | location: location}
  end

  defimpl Inspect do
    def inspect(
          %{
            first_name: first_name,
            last_name: last_name,
            location: location
          },
          _
        ) do
      "Person[#{first_name} #{last_name}, #{location}]"
    end
  end
end
