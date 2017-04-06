# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bookstore,
  ecto_repos: [Bookstore.Repo]

# Configures the endpoint
config :bookstore, Bookstore.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LKl5ADpIz5SAxMwUWZhJIxHwRy9KvEK9qF6ljWDdBovYLisGlHbVeNyT1btXDv+Y",
  render_errors: [view: Bookstore.ErrorView, accepts: ~w(json)],
  pubsub: [name: Bookstore.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
