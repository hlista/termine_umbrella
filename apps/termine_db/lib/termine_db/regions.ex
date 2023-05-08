defmodule TermineDb.Regions do
  alias EctoShorts.Actions
  alias TermineDb.World.Region

  def find(params) do
    Actions.find(Region, params)
  end

  def create(params) do
    Actions.create(Region, params)
  end

  def find_or_create(params) do
    Actions.find_or_create(Region, params)
  end

  def update(id, update_params) do
    Actions.update(Region, id, update_params)
  end
end
