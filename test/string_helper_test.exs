defmodule StringHelperTest do
  use ExUnit.Case
  doctest StringHelper

  test "with a simple word not palindrome" do
    assert StringHelper.palindrome?("hello") == false
  end

  test "with a simple word that is palindrome" do
    assert StringHelper.palindrome?("anna") == true
  end

  # test "with a number" do
  #   assert StringHelper.palindrome?(100) == true
  # end
end
