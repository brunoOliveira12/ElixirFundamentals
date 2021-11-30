defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  def count_numbers_odd(list) do
    list_integer = Enum.filter(list, fn x -> is_integer(x) end)
    Enum.count(Enum.filter(list_integer, fn im -> rem(im, 2) != 0 end))
  end
end
