defmodule TestFeatureWeb.Router do
  use TestFeatureWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TestFeatureWeb do
    pipe_through :api
  end
end
