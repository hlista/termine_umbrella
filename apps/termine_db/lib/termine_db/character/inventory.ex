defmodule TermineDb.Character.Inventory do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.Player.Player

  schema "inventories" do
    belongs_to :player, Player
    embeds_many :contents do
      field :item_id, :integer
      field :item_name, :string
      field :amount, :integer
    end
  end
end