defmodule TermineDb.Repo.Migrations.CreatePlayerTable do
  use Ecto.Migration
  def change do
    create table(:players) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :zone_id, references(:zones, on_delete: :nothing)
      add :username, :string

    end

    create index(:players, [:user_id])
    create index(:players, [:zone_id])
  end
end
