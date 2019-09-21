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

  # falsy: false, nil; truthy: all the rest
  test "&& operator" do
    assert (false && "test") == false, "If the first expression il falsy, return the first expression"
    assert (nil && "test") == nil, "If the first expression il falsy, return the first expression"
    assert (nil && 10) == nil, "If the first expression il falsy, return the first expression"
    assert (true && "result") == "result", "If the first expression is truthy, return the second expression"
    assert (true && 10.0) == 10, "If the first expression is truthy, return the second expression"
    assert ("truthy" && true && "result") == "result", "If the first expression is truthy, return the second expression"
    assert ("truthy" && false && "test") == false, "If the first expression is truthy, return the second expression"
  end

  # falsy: false, nil; truthy: all the rest
  test "|| operator" do
    assert (nil || false || true) == true, "Return the first truthy expression"
    assert (nil || false || "result") == "result", "Return the first truthy expression"
    assert (nil || false || nil) == nil, "Otherwise (all falsy), return the last expression"
    assert (nil || false || false) == false, "Otherwise (all falsy), return the last expression"
  end

  # falsy: false, nil; truthy: all the rest
  test "! operator" do
    assert !true == false
    assert !"truthy" == false
    assert !10 == false
    assert !nil == true
    assert !false == true
  end

end
