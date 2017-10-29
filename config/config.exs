# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :jaffan_api,
  ecto_repos: [JaffanApi.Repo]

# Configures the endpoint
config :jaffan_api, JaffanApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kbUhuqAFyk2pjXbFu9cDZVZ2zVMhGUd4mlG2uWuNXnyhsPbVn0eoZj+5/3iHcYWQ",
  render_errors: [view: JaffanApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: JaffanApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
