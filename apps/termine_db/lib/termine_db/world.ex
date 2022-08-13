defmodule TermineDb.World do
  alias EctoShorts.Actions
  alias TermineDb.World.{
    Mob,
    Zone
  }

  def all_mobs(params \\ %{}) do
    Actions.all(Mob, params)
  end

  def find_mob(params) do
    Actions.find(Mob, params)
  end

  def create_mob(params) do
    Actions.create(Mob, params)
  end

  def find_and_update_mob(find_params, update_params) do
    Actions.find_and_update(Mob, find_params, update_params)
  end

  def update_mob(id, update_params) do
    Actions.update(Mob, id, update_params)
  end

  def delete_mob(id) do
    Actions.delete(Mob, id)
  end


  def all_zones(params \\ %{}) do
    Actions.all(Zone, params)
  end

  def find_zone(params) do
    Actions.find(Zone, params)
  end

  def create_zone(params) do
    Actions.create(Zone, params)
  end

  def find_and_update_zone(find_params, update_params) do
    Actions.find_and_update(Zone, find_params, update_params)
  end

  def update_zone(id, update_params) do
    Actions.update(Zone, id, update_params)
  end

  def delete_zone(id) do
    Actions.delete(Zone, id)
  end
end