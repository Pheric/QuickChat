defmodule QuickchatWeb.ChatController do
  use QuickchatWeb, :controller

  def index(conn, _params) do # ignoring "params"
    # can also use an atom instead of a string path, but then it would choose the template
    # according to the request headers. Example: index.html, index.json
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "index.html", messenger: messenger
  end
end