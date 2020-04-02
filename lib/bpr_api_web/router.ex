defmodule BprApiWeb.Router do
  use BprApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BprApiWeb do
    get "/", WelcomeController, :index
  end

  scope "/api", BprApiWeb do
    pipe_through :api
  end
end
