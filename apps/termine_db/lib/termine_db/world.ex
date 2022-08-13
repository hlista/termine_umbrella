defmodule TermineDb.World do
  alias EctoShorts.Actions
  alias TermineDb.World.{
    Mob,
    Zone
  }

  def all_crafted_items(params \\ %{}) do
    Actions.all(CraftedItem, params)
  end

  def find_crafted_item(params) do
    Actions.find(CraftedItem, params)
  end

  def create_crafted_item(params) do
    Actions.create(CraftedItem, params)
  end

  def find_and_update_crafted_item(find_params, update_params) do
    Actions.find_and_update(CraftedItem, find_params, update_params)
  end

  def update_crafted_item(id, update_params) do
    Actions.update(CraftedItem, id, update_params)
  end

  def delete_crafted_item(id) do
    Actions.delete(CraftedItem, id)
  end


  def all_items(params \\ %{}) do
    Actions.all(Item, params)
  end

  def find_item(params) do
    Actions.find(Item, params)
  end

  def create_tem(params) do
    Actions.create(Item, params)
  end

  def find_and_update_item(find_params, update_params) do
    Actions.find_and_update(Item, find_params, update_params)
  end

  def update_item(id, update_params) do
    Actions.update(Item, id, update_params)
  end

  def delete_item(id) do
    Actions.delete(Item, id)
  end
end