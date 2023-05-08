defmodule TermineDb.Resource.CraftedItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "crafted_items" do
    field :name, :string
    embeds_many :recipe do #{:array, :map}
      field :item_id, :integer
      field :item_name, :string
      field :amount, :integer
    end
  end
end