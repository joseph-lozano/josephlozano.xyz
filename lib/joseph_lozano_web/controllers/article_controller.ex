defmodule JLWeb.ArticleController do
  use JLWeb, :controller
  alias JL.Content

  def get(conn, params) when not is_map_key(params, "slug") do
    render(conn, "index.html", [])
  end

  def get(conn, %{"slug" => slug}) do
    case slug do
      "notes" ->
        render(conn, "notes.html", notes: Content.all_notes())

      "writings" ->
        render(conn, "writings.html", writings: Content.all_writings())

      "garden" ->
        render(conn, "garden.html", articles: Content.garden())

      "projects" ->
        render(conn, "projects.html", projects: Content.all_projects())

      slug ->
        article = Content.get_article(slug)

        if is_nil(article) do
          render(conn, "not_found.html", slug: slug)
        else
          render(conn, "article.html", article: article)
        end
    end
  end
end
