defmodule JLWeb.HomeController do
  use JLWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html", [])
  end
end
