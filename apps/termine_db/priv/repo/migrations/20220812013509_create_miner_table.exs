defmodule TermineDb.Repo.Migrations.CreateMinerTable do
  use Ecto.Migration

  def change do
    create table(:miners) do
      add :name, :string
      add :user_id, references(:users, on_delete: :delete_all)
      add :stats, :json
    end

    create index(:miners, [:user_id])
  end
end
