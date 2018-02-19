# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :personX,
  ecto_repos: [PersonX.Repo]

# Configures the endpoint
config :personX, PersonX.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hqh68R5WFzc7iiF7CKzqe+xmFVIhksewYHDdOEy64WsCIdiI0d7bd5auw6uDYTGA",
  render_errors: [view: PersonX.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PersonX.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
