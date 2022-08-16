defmodule ListFilter do
  def call(list), do: count_only_odd(list)

  defp count_only_odd(list) do
    list
    |> filter_integer()
    |> filter_odd()
    |> Enum.count()
  end

  defp filter_integer(list) do
    list
    |> Enum.map(fn elem ->
      case Integer.parse(elem) do
        :error -> nil
        {number, ""} -> number
      end
    end)
    |> Enum.reject(&is_nil/1)
  end

  defp filter_odd(list) do
    list
    |> Enum.filter(fn elem -> rem(elem, 2) != 0 end)
  end
end
