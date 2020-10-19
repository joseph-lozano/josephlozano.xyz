defmodule JLWeb.ArticleController do
  use JLWeb, :controller
  alias JL.Content

  def get(conn, %{"slug" => slug}) do
    IO.inspect(slug, label: "SLUG")

    case slug do
      "notes" ->
        render(conn, "notes.html", notes: Content.all_notes())

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
