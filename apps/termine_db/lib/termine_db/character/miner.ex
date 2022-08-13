defmodule TermineDb.Character.Miner do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.Player.Player

  schema "miners" do
    field :name, :string
    belongs_to :player, Player
    embeds_one :stats do
      field :health, :integer
    end
  end
end