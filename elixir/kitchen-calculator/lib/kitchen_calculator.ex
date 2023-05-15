defmodule KitchenCalculator do
  def get_volume({_, x}) do
    x
  end

  def to_milliliter({unit, volume}) do
    case unit do
      :cup -> {:milliliter, volume * 240}
      :fluid_ounce -> {:milliliter, volume * 30}
      :teaspoon -> {:milliliter, volume * 5}
      :tablespoon -> {:milliliter, volume * 15}
      :milliliter -> {:milliliter, volume}
    end
  end

  def from_milliliter({:milliliter, volume}, unit) do
    case unit do
      :cup -> {:cup, volume / 240}
      :fluid_ounce -> {:fluid_ounce, volume / 30}
      :teaspoon -> {:teaspoon, volume / 5}
      :tablespoon -> {:tablespoon, volume / 15}
      :milliliter -> {:milliliter, volume}
    end
  end

  def convert(volume_pair, unit) do
     volume_pair
     |> to_milliliter
     |> from_milliliter(unit)
  end
end
