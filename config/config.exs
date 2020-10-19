# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :joseph_lozano,
  namespace: JL

# Configures the endpoint
config :joseph_lozano, JLWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kA9ymQe6GZ4ps5JKAwJBLQ9HEM8fwOlpGG+ZSkSUHjODnuGdsejhJDBAPSGbgSNc",
  render_errors: [view: JLWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: JL.PubSub,
  live_view: [signing_salt: "AbwNk0lh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
