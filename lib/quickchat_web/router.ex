defmodule QuickchatWeb.Router do
  use QuickchatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", QuickchatWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/chat", ChatController, :index
    get "/chat/:messenger", ChatController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", QuickchatWeb do
  #   pipe_through :api
  # end
end
