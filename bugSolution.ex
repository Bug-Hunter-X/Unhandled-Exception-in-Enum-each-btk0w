```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, [], fn x, acc ->
  case try do
    if x == 3 do
      throw(:error)
    end
    [x | acc]
  rescue
    _ -> acc
  end do
    {:ok, acc} -> acc
    {:error, reason} ->  IO.puts("Error: " <> to_string(reason)); acc
  end
end)

IO.inspect(result)
```