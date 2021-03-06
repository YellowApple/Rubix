defmodule RubixTest do
  use ExUnit.Case

  test "Rubix.eval/1 executes Ruby code" do
    result = "puts 'Hello, world!'" |> Rubix.eval
    assert result == {:ok, "Hello, world!\n"}
  end

  test "Rubix.eval_file/1 runs a .rb file" do
    result = Rubix.eval_file "test/test.rb"
    assert result == {:ok, "Hello, world!\n"}
  end
  
  test "Rubix.eval captures errors" do
    result = "raise 'lol'" |> Rubix.eval
    assert result == {:error, "-e:1:in `<main>': lol (RuntimeError)\n"}
  end
end
