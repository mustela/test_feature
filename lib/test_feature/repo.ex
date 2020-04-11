defmodule TestFeature.Repo do
  use Ecto.Repo,
    otp_app: :test_feature,
    adapter: Ecto.Adapters.Postgres
end
