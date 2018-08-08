# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :eos_meal,
  ecto_repos: [EosMeal.Repo]

# Configures the endpoint
config :eos_meal, EosMealWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fPI+1dMeFYvrQd5jPo1opm2M65X1Q2ydZRQEWo4AU6gXgzp3jFkwg7PGlvGLbCKe",
  render_errors: [view: EosMealWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EosMeal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
