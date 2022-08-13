defmodule TermineDb.Repo.Migrations.CreateInventoryTable do
  use Ecto.Migration

  def change do
    create table(:inventories) do
      add :player_id, references(:players, on_delete: :delete_all)
      add :contents, :map
    end

    create unique_index(:inventories, [:player_id])
  end
end
