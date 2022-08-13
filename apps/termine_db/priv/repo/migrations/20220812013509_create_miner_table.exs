defmodule TermineDb.Repo.Migrations.CreateMinerTable do
  use Ecto.Migration

  def change do
    create table(:miners) do
      add :name, :string
      add :player_id, references(:players, on_delete: :delete_all)
      add :stats, :map
    end

    create index(:miners, [:player_id])
  end
end
