defmodule BasketballWebsite do
  defp extract_from_array(data, []) do
    data
  end
  defp extract_from_array(data, [head|tail]) do
    extract_from_array(data[head], tail)
  end

  def extract_from_path(data, path) do
    splits = path
    |> String.split(".")
    extract_from_array(data, splits)
  end

  def get_in_path(data, path) do
    get_in(data, String.split(path, ".", trim: true))
  end
end
