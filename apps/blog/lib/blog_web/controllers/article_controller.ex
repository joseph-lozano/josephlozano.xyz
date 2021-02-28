defmodule BlogWeb.ArticleController do
  use BlogWeb, :controller
  alias Blog.Content

  def get(conn, params) when not is_map_key(params, "slug") do
    render(conn, "index.html", [])
  end

  def get(conn, %{"slug" => slug}) do
    case slug do
      "home" ->
        render(conn, "index.html")

      "writings" ->
        render(conn, "writings.html", writings: Content.all_writings())

      "now" ->
        render(conn, "now.html", now: Content.get_article("now"))

      "contact" ->
        render(conn, "contact.html", contact: Content.get_article("contact"))

      slug ->
        article = Content.get_article(slug)

        if is_nil(article) do
          render(conn, "not_found.html", slug: slug)
        else
          render(conn, "article.html", article: article, description: article.description)
        end
    end
  end
end
