defmodule QuickchatWeb.PageController do
  use QuickchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
