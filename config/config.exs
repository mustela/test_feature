# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test_feature,
  ecto_repos: [TestFeature.Repo]

# Configures the endpoint
config :test_feature, TestFeatureWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TUJOx+DLP8/IHeEGAlH2lxe7h8rdBEGjo/EeKJb1e06CbmS+teBHyylQA49bOFIJ",
  render_errors: [view: TestFeatureWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TestFeature.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "/nOxcsEE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# FunWithFlags configuration.
config :fun_with_flags, :persistence,
  adapter: FunWithFlags.Store.Persistent.Ecto,
  repo: EventsApi.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
