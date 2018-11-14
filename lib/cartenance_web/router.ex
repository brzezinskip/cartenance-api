defmodule CartenanceWeb.Router do
  use CartenanceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CartenanceWeb do
    pipe_through :api
  end
end
