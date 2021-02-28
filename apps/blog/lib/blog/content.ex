defmodule Blog.Content do
  alias Blog.Content.Article

  use NimblePublisher,
    build: Article,
    from: "content/**/*.md",
    as: :articles

  if @articles
     |> Enum.frequencies_by(& &1.id)
     |> Enum.map(fn {_key, val} -> val end)
     |> Enum.any?(&(&1 > 1)) do
    raise("Articles must have unique IDs")
  end

  @hide_drafts not Application.get_env(:blog, :show_drafts?, false)

  @articles @articles |> Enum.reject(fn article -> @hide_drafts and article.draft end)

  @writings @articles
            |> Enum.filter(&(&1.category == "writings"))
            |> Enum.sort_by(& &1.date, {:desc, Date})

  @ids @articles
       |> Enum.map(&{&1.id, &1})
       |> Enum.into(%{})

  @tags @writings |> Enum.flat_map(& &1.tags) |> Enum.uniq() |> Enum.sort()

  def all_articles, do: @articles
  def all_writings, do: @writings
  def all_tags, do: @tags

  def get_article(id) do
    Map.get(@ids, id)
  end
end
