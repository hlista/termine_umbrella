defmodule TermineDb.Repo.Migrations.AddMob do
  use Ecto.Migration

  def change do
    create table("mobs") do
      add :name, :string
      add :loot_table, :json
      add :health, :integer
    end
  end
end
