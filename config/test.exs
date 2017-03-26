use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_sqlite_ecto2, PhxSqliteEcto2.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phx_sqlite_ecto2, PhxSqliteEcto2.Repo,
  adapter: Sqlite.Ecto2,
  database: "myapp_test",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10
