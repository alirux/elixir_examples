defmodule StringHelperWithGuard do
  def palindrome?(term) when is_bitstring(term) do
    String.reverse(term) == term
  end

  def palindrome?(_term), do: { :error, :unsupported_type }
end
