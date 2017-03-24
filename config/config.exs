# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_sqlite_ecto2,
  ecto_repos: [PhxSqliteEcto2.Repo]

# Configures the endpoint
config :phx_sqlite_ecto2, PhxSqliteEcto2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hJCemCGNDT+7MVe4cIHdpc6jYMmUIRWAFaAYaxlYZq08pRg/IcTFdGRwdItnlvkj",
  render_errors: [view: PhxSqliteEcto2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxSqliteEcto2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
