defmodule CartenanceWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :vehicle do
    field :id, :id
    field :model, :string
    field :production_year, :integer
    field :purchase_year, :integer
    field :type, :string
    field :user_id, :id
  end
end
