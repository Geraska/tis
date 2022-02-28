defmodule TisWeb.AdminController do
  use TisWeb, :controller

  def admin_login(conn, _params) do
    conn
    |> put_layout("app.html")
    |> render("login_form.html")
  end
  def login_submit(conn, params) do
    login = params["login"]
    password = params["password"]

    if login == "" or password == "" do
      conn
      |> put_flash(:error, "Нет параля")
      |> render("login_form.html")
    else
      conn
      |> put_flash(:info, "Добро пожаловать!")
      |> render("admin.html")
    end
  end
  def admin(conn, _params) do
    conn
    |> put_layout("app.html")
    |> render("admin.html")
  end

end
