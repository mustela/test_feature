defmodule TestFeature.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_feature,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {TestFeature.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4.4"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_ecto, "~> 4.0"},
      {:fun_with_flags, "~> 1.4.1"},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:distillery, "~> 2.1"},
      {:edeliver, ">= 1.6.0"},
      {:ex_machina, "~> 2.3"},
      {:guardian, "~> 2.0"},
      {:comeonin, "~> 5.1"},
      {:gettext, "0.17.1"},
      {:timex, "~> 3.5"},
      {:bamboo, ">= 1.2.0"},
      {:bamboo_postmark, github: "mustela/bamboo_postmark"},
      {:poison, "~> 4.0"},
      {:phoenix_html, "~> 2.11"},
      {:bcrypt_elixir, "~> 2.0"},
      {:bodyguard, "~> 2.4"},
      {:logger_json, "~> 3.0"},
      {:cors_plug, "~> 2.0"},
      {:scrivener_ecto, "~> 2.0"},
      {:scrivener_list, "~> 2.0"},
      {:absinthe, "~> 1.4.0"},
      {:absinthe_plug, "~> 1.4.0"},
      {:absinthe_phoenix, "~> 1.4.0"},
      {:slugify, "~> 1.2"},
      {:goth, "~> 1.2.0"},
      {:morphix, "~> 0.8.0"},
      {:google_api_analytics, "~> 0.5"},
      {:google_api_analytics_reporting, "~> 0.13"},
      {:oauth2, "~> 2.0"},
      {:faker, "~> 0.12", only: :test},
      {:credo, "~> 1.2.0", only: [:dev, :test], runtime: false},
      {:mock, "~> 0.3.0", only: :test},
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev], runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:prometheus_ecto, "~> 1.4.1"},
      {:prometheus_ex, "~> 3.0.5"},
      {:prometheus_phoenix, "~> 1.3.0"},
      {:prometheus_plugs, "~> 1.1.5"},
      {:prometheus_process_collector, "~> 1.4.3"},
      {:prometheus, "~> 4.5", override: true},
      {:rollbax, ">= 0.0.0"},
      {:fun_with_flags_ui, "~> 0.7.2"},
      {:basic_auth, "~> 2.2.2"},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
