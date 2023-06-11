defmodule ReOne.Repo do
  use Ecto.Repo,
    otp_app: :reOne,
    adapter: Ecto.Adapters.Postgres
end
