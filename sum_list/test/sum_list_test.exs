defmodule SumListTest do
  use ExUnit.Case
  doctest SumList

  describe "call/1" do
    test "returns the list sum" do
      assert SumList.call([1, 2, 3]) == 6
    end
  end
end
