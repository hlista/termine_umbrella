defmodule TermineDb.World.Exit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "exits" do
    belongs_to :to, TermineDb.World.Region
    belongs_to :from, TermineDb.World.Region
    field :conditional, :string
  end

  @available_fields [:to_id, :from_id, :conditional]

  def create_changeset(params) do
    changeset(%__MODULE__{}, params)
  end

  def changeset(preference, attrs) do
    preference
    |> cast(attrs, @available_fields)
  end
end
