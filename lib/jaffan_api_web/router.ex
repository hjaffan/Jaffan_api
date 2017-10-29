defmodule JaffanApiWeb.Router do
  use JaffanApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JaffanApiWeb do
    pipe_through :api
  end
end
