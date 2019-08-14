defmodule RecursionExamples do
  def doubleList([]) do
    []
  end

  def doubleList([head | tail]) do
    [head * 2 | doubleList(tail)]
  end
end
