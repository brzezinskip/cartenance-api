defmodule Cartenance.Repo do
  use Ecto.Repo,
    otp_app: :cartenance,
    adapter: Ecto.Adapters.Postgres
end
