defmodule Person do
  def full_name(person) do
    "#{person.first_name} #{person.last_name}"
  end

  def age(person) do
    days = Date.diff(Date.utc_today(), person.birthday)
    days / 365.25
  end

  def home(person) do
    %{person | location: "home"}
  end

  def away(person) do
    %{person | location: "away"}
  end
end
