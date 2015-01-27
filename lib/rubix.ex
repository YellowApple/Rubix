defmodule Rubix do
  def eval(ruby_code) do
    {output, status} = System.cmd("ruby", ["-e", ruby_code], stderr_to_stdout: true)
    case status do
      0 ->
        {:ok, output}
      _ ->
        {:error, output}
    end
  end

  def eval_file(ruby_file) do
    {output, status} = System.cmd("ruby", [ruby_file], stderr_to_stdout: true)
    case status do
      0 ->
        {:ok, output}
      _ ->
        {:error, output}
    end
  end
end
