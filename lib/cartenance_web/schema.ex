defmodule CartenanceWeb.Schema do
  use Absinthe.Schema
  import_types CartenanceWeb.Schema.ContentTypes

  alias CartenanceWeb.Resolvers

  query do
    @desc "Get all vehicles"
    field :vehicles, list_of(:vehicle) do
      resolve &Resolvers.Content.list_vehicles/3
    end
  end

  mutation do
    @desc "Create vehicle"
    field :create_vehicle, type: :vehicle do
      arg :production_year, non_null(:integer)
      arg :purchase_year, non_null(:integer)
      arg :model, non_null(:string)
      arg :type, non_null(:string)
      arg :user_id, non_null(:id)

      resolve &Resolvers.Content.create_vehicle/3
    end
  end
end
