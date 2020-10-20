defmodule JL.Content.Article do
  @enforce_keys [:id, :title, :body, :category]
  defstruct [:id, :title, :body, :date, :category, tags: [], description: nil, draft: false]

  def build(filename, attrs, body) do
    [category, filename] =
      filename
      |> Path.rootname()
      |> Path.split()
      |> Enum.take(-2)

    attrs =
      case String.split(filename, "-", parts: 4) do
        [year, month, day, id] ->
          date = Date.from_iso8601!("#{year}-#{month}-#{day}")
          [id: id, date: date, body: body, category: category] ++ Map.to_list(attrs)

        [id] ->
          [id: id, date: nil, body: body, category: category] ++ Map.to_list(attrs)
      end

    struct!(__MODULE__, attrs)
  end
end
