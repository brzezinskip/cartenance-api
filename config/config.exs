# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cartenance,
  ecto_repos: [Cartenance.Repo]

# Configures the endpoint
config :cartenance, CartenanceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QBt1F7d8K7FbJ2XVMUFW6r63qhRWXNDVYdBEFIRG/ktErnbb1PC6qD7Dh25BSMB6",
  render_errors: [view: CartenanceWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cartenance.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
