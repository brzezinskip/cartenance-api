defmodule CartenanceWeb.Router do
  use CartenanceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: CartenanceWeb.Schema

    forward "/", Absinthe.Plug,
      schema: CartenanceWeb.Schema
  end
end
