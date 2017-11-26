defmodule Csvparser do
  @moduledoc """
    CSV Parser Module to populate data
  """
  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Csvparser.Repo, [])
    ] 

    opts = [strategy: :one_for_one, name: Csvparser.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
    Main function 
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
      |> CSV.decode(separator: ?,,headers: true)
      |> Enum.each(fn x -> IO.inspect x end)
    end
  end

  defp check_file(filename) do
    File.exists?(filename)
  end

end
