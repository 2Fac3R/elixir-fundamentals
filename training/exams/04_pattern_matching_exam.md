# Exam: Pattern Matching

**Instructions:** For each question, choose the correct option or write the expected result.

**1. What value will the `x` variable have after this expression?**
`{:ok, x} = {:ok, 100}`

a) `:ok`
b) `100`
c) `x`
d) A `MatchError` will occur

**2. What values will `head` and `tail` have after this expression?**
`[head | tail] = [1, 2, 3]`

a) `head` = `1`, `tail` = `2`
b) `head` = `[1]`, `tail` = `[2, 3]`
c) `head` = `1`, `tail` = `[2, 3]`
d) A `MatchError` will occur

**3. Given the following module, what will the call `Test.get_status({:error, :timeout, "Server not responding"})` return?**
```elixir
defmodule Test do
  def get_status({:ok, data}), do: {:ok, data}
  def get_status({:error, :timeout, _}), do: :timeout
  def get_status({:error, reason}), do: reason
end
```
a) `:timeout`
b) `reason`
c) `{:error, :timeout}`
d) A compilation error will occur.

**4. Which pattern matching expression will correctly extract the `street` from the following map?**
`user = %{name: "John", address: %{street: "Main St", city: "Anytown"}}`

a) `%{street: street} = user`
b) `%{address: %{street: street}} = user`
c) `user.address.street`
d) `%{name: _, address: street} = user`