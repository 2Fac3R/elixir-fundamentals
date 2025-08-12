# Exam Solutions: Pattern Matching

**1. What value will the `x` variable have after this expression?**
`{:ok, x} = {:ok, 100}`

- **Answer:** b) `100`
- **Explanation:** Elixir matches the structure of the tuple. The variable `x` is bound to the value in the same position of the pattern, which is `100`.

**2. What values will `head` and `tail` have after this expression?**
`[head | tail] = [1, 2, 3]`

- **Answer:** c) `head` = `1`, `tail` = `[2, 3]`
- **Explanation:** The `|` operator in a list separates the first element (the head) from the rest of the list (the tail).

**3. Given the following module, what will the call `Test.get_status({:error, :timeout, "Server not responding"})` return?**

- **Answer:** a) `:timeout`
- **Explanation:** Elixir will look for the first function clause that matches. The second clause, `get_status({:error, :timeout, _})`, matches perfectly. The `_` ignores the third element of the tuple.

**4. Which pattern matching expression will correctly extract the `street` from the following map?**
`user = %{name: "John", address: %{street: "Main St", city: "Anytown"}}`

- **Answer:** b) `%{address: %{street: street}} = user`
- **Explanation:** This pattern mirrors the nested structure of the map. It matches the `:address` key and, within its value, matches the `:street` key, binding its value to the `street` variable.