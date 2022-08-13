defmodule TermineDb.Character.Inventory do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.Player.Player

  schema "inventories" do
    belongs_to :player, Player
    field :contents, :map
  end
end