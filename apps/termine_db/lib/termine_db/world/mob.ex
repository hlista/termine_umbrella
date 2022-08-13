defmodule TermineDb.World.Mob do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mobs" do
    field :name, :string
    field :loot_table, :map
    field :health, :integer
  end
end