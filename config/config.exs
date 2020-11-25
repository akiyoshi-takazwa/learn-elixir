# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_template,
  ecto_repos: [PhoenixTemplate.Repo]

# Configures the endpoint
config :phoenix_template, PhoenixTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9co66VY0dq0+9SRHQ1kxUq3mYBeBbNcyAzl0/43STh5HTDgdYeH3daXIf8jBj2Ax",
  render_errors: [view: PhoenixTemplateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixTemplate.PubSub,
  live_view: [signing_salt: "GL9Z0uDM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
