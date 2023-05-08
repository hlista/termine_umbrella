defmodule TermineDb.Exits do
  alias EctoShorts.Actions
  alias TermineDb.World.Exit

  def find(params) do
    Actions.find(Exit, params)
  end

  def create(params) do
    Actions.create(Exit, params)
  end

  def update(id, update_params) do
    Actions.update(Exit, id, update_params)
  end
end
