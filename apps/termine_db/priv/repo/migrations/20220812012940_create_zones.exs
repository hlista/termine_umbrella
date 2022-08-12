defmodule TermineDb.Repo.Migrations.CreateZones do
  use Ecto.Migration

  use Ecto.Migration

  def change do
    create table(:zones) do
      add :name, :string
      add :description, :text
      add :current_mob_id, references(:mobs, on_delete: :nothing)
      add :current_mob_health, :integer
      add :neighbors, :map
    end

    create unique_index(:zones, [:name])
  end
end
