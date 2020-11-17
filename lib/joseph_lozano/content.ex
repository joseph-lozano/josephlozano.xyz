defmodule JL.Content do
  alias JL.Content.Article

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

  @hide_drafts not Application.get_env(:joseph_lozano, :show_drafts?, false)
  @articles @articles |> Enum.reject(fn article -> @hide_drafts and article.draft end)

  @notes @articles
         |> Enum.filter(&(&1.category == "notes"))
         |> Enum.sort_by(& &1.date, {:desc, Date})

  @writings @articles
            |> Enum.filter(&(&1.category == "writings"))
            |> Enum.sort_by(& &1.date, {:desc, Date})

  @projects @articles
            |> Enum.filter(&(&1.category == "projects"))
            |> Enum.sort_by(& &1.date, {:desc, Date})

  @ids @articles
       |> Enum.map(&{&1.id, &1})
       |> Enum.into(%{})

  @tags @notes |> Enum.flat_map(& &1.tags) |> Enum.uniq() |> Enum.sort()

  def all_articles, do: @articles
  def all_notes, do: @notes
  def all_writings, do: @writings
  def all_projects, do: @projects
  def all_tags, do: @tags

  def get_article(id) do
    Map.get(@ids, id)
  end

  def about(:notes) do
    ~S"""
    Notes are short-form writings. These should take less than 5 minutes to read.
    """
  end

  def about(:writings) do
    ~S"""
    These are long-form essays. These should take more than 10 minutes to read.
    """
  end

  def about(:projects) do
    ~S"""
    These are portifolio pieces/public projects I've built.
    """
  end

  def about(:about) do
    ~S"""
    Information about this webpage, and myself
    """
  end

  def about(:now) do
    ~s"""
    What I am up to currently.
    """
  end
end
