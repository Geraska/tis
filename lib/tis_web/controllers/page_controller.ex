defmodule TisWeb.PageController do
  use TisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
