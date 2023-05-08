defmodule TermineDb.Locations do
  alias EctoShorts.Actions
  alias TermineDb.World.Location

  def find(params) do
    Actions.find(Location, params)
  end

  def create(params) do
    Actions.create(Location, params)
  end

  def update(id, update_params) do
    Actions.update(Location, id, update_params)
  end
end
