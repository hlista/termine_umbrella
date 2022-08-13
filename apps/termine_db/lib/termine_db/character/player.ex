defmodule TermineDb.Character.Player do
  use Ecto.Schema
  import Ecto.Changeset
  alias TermineDb.Accounts.User
  alias TermineDB.World.Zone
  alias TermineDb.Character.{
    Inventory,
    Miner
  }

  schema "players" do
    belongs_to :user, User
    belongs_to :zone, Zone
    field :username, :string
    has_one :inventory, Inventory
    has_many :miners, Miner
  end
end