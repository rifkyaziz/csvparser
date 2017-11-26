defmodule Csvparser do
  @moduledoc """
    CSV Parser Module to populate data
  """

  @doc """
  
  """
  def main(args) do
    args
    |> parse_data
    |> process
  end

  defp parse_data(args) do
    {options, _, _} = args 
                      |> OptionParser.parse(switches: [filename: :string])
    options
  end 

  defp process([]), do: IO.puts "No arguments given"

  defp process(options) do
    import CSV

    filename = options[:filename]
    if !check_file(filename) do
      IO.puts "File doesnt exist"
    else
      File.stream!(filename)
      |> CSV.decode
      |> Enum.map(fn x -> IO.puts x end)
    end
  end

  defp check_file(filename) do
    File.exists?(filename)
  end

end
