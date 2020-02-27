# Módulos
defmodule Mod do
  defp hello(str) do
    IO.puts "Hello, " <> str <> "!"
  end

  def hello(str, 1) do
    hello str
  end

  def hello(str, n) when is_integer(n) do
    hello str
    hello str, n-1
  end
end
