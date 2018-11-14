defmodule Cartenance.Vehicle do
  import Ecto.Query, warn: false

  use Ecto.Schema
  import Ecto.Changeset
  alias Cartenance.Repo
  alias Cartenance.Vehicle



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

  def list_vehicles do
    Repo.all(Vehicle)
  end

  def create_vehicle(attrs \\ %{}) do
    %Vehicle{}
    |> Vehicle.changeset(attrs)
    |> Repo.insert()
  end
end
