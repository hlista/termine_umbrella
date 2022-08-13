defmodule TermineDb.Resource.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :name, :string
  end
end