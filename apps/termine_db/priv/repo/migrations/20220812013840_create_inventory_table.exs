defmodule TermineDb.Repo.Migrations.CreateInventoryTable do
  use Ecto.Migration

  def change do
    create table(:inventories) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :contents, :json
    end

    create unique_index(:inventories, [:user_id])
  end
end
