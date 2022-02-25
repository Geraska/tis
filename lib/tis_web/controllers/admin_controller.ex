defmodule TisWeb.AdminController do
  use TisWeb, :controller

  def admin_login(conn, _params) do
    conn
    |> put_layout("app.html")
    |> render("admin_login.html")
  end
end
