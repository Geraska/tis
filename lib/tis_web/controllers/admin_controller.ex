defmodule TisWeb.AdminController do
  use TisWeb, :controller

  def admin_login(conn, params) do
    IO.inspect(params)
    conn
    |> put_layout("app.html")
    |> render("login_form.html")
  end
  def admin(conn, params) do
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
end
