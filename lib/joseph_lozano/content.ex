defmodule JL.Content do
  alias JL.Content.Article

  use NimblePublisher,
    build: Article,
    from: "content/**/*.md",
    as: :articles

  @notes @articles
         |> Enum.filter(&(&1.category == "notes"))
         |> Enum.sort_by(& &1.date, {:desc, Date})

  @ids @articles
       |> Enum.map(&{&1.id, &1})
       |> Enum.into(%{})

  @tags @notes |> Enum.flat_map(& &1.tags) |> Enum.uniq() |> Enum.sort()

  def all_articles, do: @articles
  def all_notes, do: @notes
  def all_tags, do: @tags

  def get_article(id) do
    Map.get(@ids, id)
  end
end
