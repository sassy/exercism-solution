defmodule Username do
  def sanitize(username) do
    username
    |> Enum.map(fn c -> 
      case c do
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        ?\s -> ''
        _ -> c
      end
    end)
    |> List.flatten()
    |> Enum.filter(fn n -> n >= ?a and n <= ?z or n == ?_ end)
  end
end
