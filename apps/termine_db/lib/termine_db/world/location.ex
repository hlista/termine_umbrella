defmodule TermineDb.World.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :name, :string
    belongs_to :region, TermineDb.World.Region
    field :conditional, :string
  end

  @available_fields [:name, :region_id, :conditional]

  def create_changeset(params) do
    changeset(%__MODULE__{}, params)
  end

  def changeset(preference, attrs) do
    preference
    |> cast(attrs, @available_fields)
  end
end
