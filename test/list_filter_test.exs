defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the number of odd in the list" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end

    test "returns 0 when list is only even" do
      assert ListFilter.call(["2", "4", "6"]) == 0
    end

    test "returns 0 when list is not empty but only no integer elements" do
      assert ListFilter.call(["banana", "uva"]) == 0
    end

    test "returns 0 when the list is empty" do
      assert ListFilter.call([]) == 0
    end
  end
end
