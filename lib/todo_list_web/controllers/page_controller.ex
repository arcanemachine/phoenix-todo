defmodule TodoListWeb.PageController do
  use TodoListWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
