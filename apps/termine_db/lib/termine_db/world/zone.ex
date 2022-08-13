defmodule TermineDb.World.Zone do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.World.Mob

  schema "zones" do
    field :name, :string
    field :description, :string
    belongs_to :current_mob, Mob
    field :current_mob_health, :integer
    field :neighbors, :map
  end
end