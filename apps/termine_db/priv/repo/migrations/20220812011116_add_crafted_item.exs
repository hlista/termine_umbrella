defmodule TermineDb.Repo.Migrations.AddCraftedItem do
  use Ecto.Migration

  def change do
    create table("crafted_items") do
      add :name, :string
      add :recipe, :map
    end
  end
end
