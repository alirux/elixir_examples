defmodule Codingful.ExampleIOTest do
  use ExUnit.Case
  doctest Codingful.ExampleIO

  test "write e single line to file" do
    assert Codingful.ExampleIO.write_to_file("Hello World!\n") == :ok
  end

end
