defmodule BlogWeb.HomeController do
  use BlogWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html", [])
  end
end
