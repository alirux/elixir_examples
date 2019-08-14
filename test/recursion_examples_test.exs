defmodule RecursionExamplesTest do
  use ExUnit.Case
  doctest RecursionExamples

  test "Empty list" do
    assert RecursionExamples.doubleList([ ]) == [ ]
  end

  test "List with one number" do
    assert RecursionExamples.doubleList([ 1 ]) == [ 2 ]
  end

  test "List with two numbers" do
    assert RecursionExamples.doubleList([ 1, 2 ]) == [ 2, 4 ]
  end

  test "List with three numbers" do
    assert RecursionExamples.doubleList([ 1, 2, 3 ]) == [ 2, 4, 6 ]
  end

end
