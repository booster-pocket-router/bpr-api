defmodule BprApiWeb.Router do
  use BprApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BprApiWeb do
    get "/", WelcomeController, :index
  end

  scope "/api/v1", BprApiWeb do
    pipe_through :api

    get "/status/nodes", StatusController, :nodes
    get "/status/utilization", StatusController, :utilization
    get "/settings/set", SettingsController, :set
    get "/settings/get", SettingsController, :get
  end
end
