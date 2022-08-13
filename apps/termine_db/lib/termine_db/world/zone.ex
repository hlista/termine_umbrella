defmodule TermineDb.World.Zone do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.World.Mob

  schema "zones" do
    field :name, :string
    field :description, :string
    belongs_to :current_mob, Mob
    field :current_mob_health, :integer
    embeds_many :neighbors do
      field :zone_id, :integer
      field :zone_name, :string
      embeds_many :required_crafted_items do
        field :crafted_item_id, :integer
        field :crafted_item_name, :string
      end
    end
  end
end