defmodule CartenanceWeb.Resolvers.Content do

  def list_vehicles(_parent, _args, _resolution) do
    {:ok, Cartenance.Vehicle.list_vehicles()}
  end

  def create_vehicle(_parent, args, _resolution) do
    Cartenance.Vehicle.create_vehicle(args)
  end

  def create_vehicle(_parent, _args, _resolution) do
    {:error, "Couldn't create vehicle"}
  end

end
