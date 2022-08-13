defmodule TermineDb.Resource.CraftedItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "crafted_items" do
    field :name, :string
    field :recipe, :map
  end
end