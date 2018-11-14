defmodule Cartenance.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset


  schema "vehicles" do
    field :model, :string
    field :production_year, :integer
    field :purchase_year, :integer
    field :type, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:model, :type, :production_year, :purchase_year])
    |> validate_required([:model, :type, :production_year, :purchase_year])
  end
end
