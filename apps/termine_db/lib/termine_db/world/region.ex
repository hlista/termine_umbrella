defmodule TermineDb.World.Region do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:name]
  schema "regions" do
    field :name, :string
  end

  @available_fields [:name]

  def create_changeset(params) do
    changeset(%__MODULE__{}, params)
  end

  def changeset(preference, attrs) do
    preference
    |> cast(attrs, @available_fields)
  end
end
