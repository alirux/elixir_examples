defmodule SimpleTest do
  use ExUnit.Case
  doctest Simple

  test "greets the world" do
    assert Simple.hello() == :world
  end

  test "Anon fun without parameters" do
    anon01 = fn  -> :hello end
    assert anon01.() == :hello
  end

  test "Anon fun with one param" do
    anon02 = fn param -> "Param is #{param}" end
    assert anon02.("MyParam") == "Param is MyParam"
  end

  test "Anon with capture" do
    # First & defines the anon fun
    # &1, &2, &n define the parameters
    anon03 = &(&1 + &2) # sum of two numbers
    assert anon03.(1, 1) == 2
    assert anon03.(1, 2) == 3
    # This will result "(ArithmeticError) bad argument in arithmetic expression"
    # assert anon03.("a", "b") == "ab"
  end
end
