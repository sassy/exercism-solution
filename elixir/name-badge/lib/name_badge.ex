defmodule NameBadge do
  def print(id, name, department) do
    "#{if id != nil do
      "[#{id}] - "
    else
      ""
    end}#{name} - #{
      if department != nil do
        String.upcase(department)
      else
        "OWNER"
      end
    }"
  end
end
