defmodule JLWeb.HomeController do
  use JLWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", [])
  end
end
