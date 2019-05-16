# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :quickchat,
  ecto_repos: [Quickchat.Repo]

# Configures the endpoint
config :quickchat, QuickchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7ik6NURye7IJTnoF2HyKM4VUSP7edUWhTvGBiWoE9xRiCDP9AbVeoL48Kv6Zcn4b",
  render_errors: [view: QuickchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Quickchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
