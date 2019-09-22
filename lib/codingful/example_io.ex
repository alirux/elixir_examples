# Directory structure must be lib/codingful
defmodule Codingful.ExampleIO do
  @file_with_path "/tmp/example_io.txt"

  def write_to_file(content) do
    File.write(@file_with_path, content, [:append])
  end
end
