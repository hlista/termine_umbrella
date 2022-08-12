defmodule TermineDb.Repo do
  use Ecto.Repo,
    otp_app: :termine_db,
    adapter: Ecto.Adapters.Postgres
end
