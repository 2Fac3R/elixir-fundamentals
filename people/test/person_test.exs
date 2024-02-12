defmodule People.PersonTest do
  use ExUnit.Case
  alias People.Person
  doctest People.Person

  test "full_name/1" do
    person = %Person{
      first_name: "Gustavo",
      last_name: "Rodriguez"
    }

    assert person |> Person.full_name() === "Gustavo Rodriguez"
  end

  test "full_name/1 with mononyms" do
    teller = %Person{
      first_name: "Teller"
    }

    assert teller |> Person.full_name() === "Teller"
  end
end
