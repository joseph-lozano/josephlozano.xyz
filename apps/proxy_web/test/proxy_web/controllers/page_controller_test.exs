defmodule ProxyWeb.PageControllerTest do
  use ProxyWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "My blog and all my projects are hosted on this page"
  end
end
