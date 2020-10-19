defmodule JL.Content.Article do
  @enforce_keys [:id, :title, :body, :description, :category]
  defstruct [:id, :title, :body, :description, :date, :category, tags: []]

  def build(filename, attrs, body) do
    [category, filename] =
      filename
      |> Path.rootname()
      |> Path.split()
      |> Enum.take(-2)

    case String.split(filename, "-", parts: 4) do
      [year, month, day, id] ->
        date = Date.from_iso8601!("#{year}-#{month}-#{day}")
        attrs = [id: id, date: date, body: body, category: category] ++ Map.to_list(attrs)
        struct!(__MODULE__, attrs)

      [id] ->
        attrs = [id: id, date: nil, body: body, category: category] ++ Map.to_list(attrs)
        struct!(__MODULE__, attrs)
    end
  end
end
