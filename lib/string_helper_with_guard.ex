defmodule StringHelperWithGuard do
  def palindrome?(term) when is_bitstring(term) do
    String.reverse(term) == term
  end

  def palindrome?(_term), do: { :error, :unsupported_type }

  def say_greeting(who \\ "world") do
    "Hello #{who}!"
  end
end
