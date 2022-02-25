defmodule Tis.Repo do
  use Ecto.Repo,
    otp_app: :tis,
    adapter: Ecto.Adapters.Postgres
end
