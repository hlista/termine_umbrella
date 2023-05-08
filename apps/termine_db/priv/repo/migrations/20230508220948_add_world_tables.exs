defmodule TermineDb.Repo.Migrations.AddWorldTables do
  use Ecto.Migration

  def change do
    create table(:regions) do
      add :name, :string
    end
    create table(:locations) do
      add :name, :string
      add :region_id, references(:regions)
      add :conditional, :text
    end
    create table(:exits) do
      add :from_id, references(:regions)
      add :to_id, references(:regions)
      add :conditional, :text
    end
  end
end
