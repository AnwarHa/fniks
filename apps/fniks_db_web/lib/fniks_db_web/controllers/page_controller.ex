defmodule FniksDbWeb.PageController do
  use FniksDbWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
