defmodule TermineDb.World.Mob do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mobs" do
    field :name, :string
    embeds_many :loot_table do
      field :item_id, :integer
      field :item_name, :string
      field :probability, :decimal
    end
    field :health, :integer
  end
end