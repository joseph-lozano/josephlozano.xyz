defmodule BlogWeb.PageControllerTest do
  use BlogWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/blog")
    assert html_response(conn, 200) =~ "Home"
    assert html_response(conn, 200) =~ "Writings"
    assert html_response(conn, 200) =~ "About"
    assert html_response(conn, 200) =~ "Now"
  end
end
