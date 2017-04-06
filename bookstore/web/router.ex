defmodule Bookstore.Router do
  use Bookstore.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Bookstore do
    pipe_through :api
  end
end
