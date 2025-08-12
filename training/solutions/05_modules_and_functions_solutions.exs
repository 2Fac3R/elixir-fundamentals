# Solutions: Modules and Functions

defmodule ModuleSolutions do
  # Challenge 1 and 2: Public and Private Function
  @pi 3.14159

  def circle_area(radius) do
    # Explanation: `circle_area/1` is the public interface of the module.
    # It delegates the squaring calculation to a private function to keep
    # the internal logic encapsulated and reusable within the module.
    square(radius) * @pi
  end

  defp square(number) do
    number * number
  end

  # Challenge 3: Pipe Operator
  def process_numbers(list) do
    # Explanation: The pipe operator `|>` makes the code very readable.
    # The result of each line is passed as the first argument to the next,
    # creating a clear and concise data transformation pipeline.
    list
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
    |> Enum.map(&square/1) # We use the private function defined above
    |> Enum.sum()
  end
end