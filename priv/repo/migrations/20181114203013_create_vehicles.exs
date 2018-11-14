defmodule Cartenance.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles) do
      add :model, :string
      add :type, :string
      add :production_year, :integer
      add :purchase_year, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:vehicles, [:user_id])
  end
end
