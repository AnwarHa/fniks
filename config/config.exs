# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :fniks_db,
  ecto_repos: [FniksDb.Repo]

config :fniks_db_web,
  ecto_repos: [FniksDb.Repo],
  generators: [context_app: :fniks_db]

# Configures the endpoint
config :fniks_db_web, FniksDbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6bYpEkyMgZvc0cgD2VVUQ0hfhShvlf5vIS+Dj+Zs+Vo+/DUHMMvF5wQppeii5YpX",
  render_errors: [view: FniksDbWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FniksDbWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "BCs5t4UT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
