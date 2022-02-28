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

  def registration(conn, _params) do
    conn
    |> put_layout("app.html")
    |> render("registration.html")
  end
  def registration_submit(conn, params) do
    login = params["login"]
    password = params["password"]
    re_password = params["re_password"]

    if login != "" and password == re_password do
      conn
      |> put_flash(:info, "Вы удачно зарегестрировались!")
      |> redirect(to: "/admin/login")
    else
      conn
      |> put_flash(:error, "Не введены поле логин или пароль!")
      |> redirect(to: "/admin/registration")
    end
  end
end
