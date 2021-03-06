defmodule ReportsGenerator do
  @moduledoc """
  Documentation for `ReportsGenerator`.
  """
  def build(filename) do
    filename
    |> ReportsGenerator.Parser.parse_file()
    |> Enum.reduce(report_acc(), fn [id, _food_name, price], report ->
      Map.put(report, id, report[id] + price)
    end)
  end

  defp report_acc, do: Enum.into(1..30, %{}, &{Integer.to_string(&1), 0})
end
