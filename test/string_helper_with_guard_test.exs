defmodule StringHelperWithGuardTest do
  use ExUnit.Case
  doctest StringHelperWithGuard

  test "with a simple word not palindrome" do
    assert StringHelperWithGuard.palindrome?("hello") == false
  end

  test "with a simple word that is palindrome" do
    assert StringHelperWithGuard.palindrome?("anna") == true
  end

  test "with a number" do
    assert StringHelperWithGuard.palindrome?(100) == { :error, :unsupported_type }
  end
end
