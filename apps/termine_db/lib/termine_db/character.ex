defmodule TermineDb.Character do
  alias EctoShorts.Actions
  alias TermineDb.Character.{
    Inventory,
    Miner,
    Player
  }

  def all_inventories(params \\ %{}) do
    Actions.all(Inventory, params)
  end

  def find_inventory(params) do
    Actions.find(Inventory, params)
  end

  def create_inventory(params) do
    Actions.create(Inventory, params)
  end

  def find_and_update_inventory(find_params, update_params) do
    Actions.find_and_update(Inventory, find_params, update_params)
  end

  def update_inventory(id, update_params) do
    Actions.update(Inventory, id, update_params)
  end

  def delete_inventory(id) do
    Actions.delete(Inventory, id)
  end


  def all_miners(params \\ %{}) do
    Actions.all(Miner, params)
  end

  def find_miner(params) do
    Actions.find(Miner, params)
  end

  def create_miner(params) do
    Actions.create(Miner, params)
  end

  def find_and_update_miner(find_params, update_params) do
    Actions.find_and_update(Miner, find_params, update_params)
  end

  def update_miner(id, update_params) do
    Actions.update(Miner, id, update_params)
  end

  def delete_miner(id) do
    Actions.delete(Miner, id)
  end


  def all_players(params \\ %{}) do
    Actions.all(Player, params)
  end

  def find_player(params) do
    Actions.find(Player, params)
  end

  def create_player(params) do
    Actions.create(Player, params)
  end

  def find_and_update_player(find_params, update_params) do
    Actions.find_and_update(Player, find_params, update_params)
  end

  def update_player(id, update_params) do
    Actions.update(Player, id, update_params)
  end

  def delete_player(id) do
    Actions.delete(Player, id)
  end
end