defmodule SumList do
  @doc """
    #Examples
      iex-> sum([1,2,3])
        head: 1, tail [2,3], 0 -> acc = 0 + 1, sum([2,3], 1)
      iex-> sum([2,3])
        head: 2, tail [3], 1 -> acc = 1 + 2, sum([3], 3)
      iex-> sum([3])
        head: 3, tail [], 3 -> acc = 3 + 3, sum([], 6)
      iex-> sum([])
        acc = 6
  """

  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end

  def call_enum(list), do: Enum.sum(list)
end
