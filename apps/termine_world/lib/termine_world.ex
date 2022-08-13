defmodule TermineWorld do
  @moduledoc """
  Documentation for `TermineWorld`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TermineWorld.hello()
      :world

  """
  #given a list of crafted_item_ids. Gathers their recipes and checks if
  #all of our available items can craft them
  def can_craft_items?(crafted_items, available_items) do
    false
  end

  # Takes a list of the mobs that are currently spawned in the world
  # and outputs all the item_ids on their loot tables
  def build_available_items_id_list(mobs_already_spawned_id_list) do
    available_items = []
    available_mobs = TermineDb.World.all_mobs(%{id: mobs_already_spawned_id_list})

    Enum.reduce(available_mobs, available_items, fn %{loot_table: loot_table}, outer_acc ->
      Enum.reduce(loot_table, outer_acc, fn %{item_id: item_id}, inner_acc ->
        Enum.unique([item_id | inner_acc])
      end)
    end)
  end

  #Given a zone_id and a list of the mobs that are currently in the world
  #Outputs which of it's neighbors are reachable
  def build_reachable_zones(current_zone_id, mobs_already_spawned_id_list) do
    with {:ok, zone} <- TermineDb.World.find_zone(%{id: current_zone_id}) do
      mobs_already_spawned_id_list = Enum.unique([zone.current_mob_id | mobs_already_spawned_id_list])
      available_items = build_available_items_id_list(mobs_already_spawned_id_list)
      reachable_neighbors = []
      Enum.reduce(zone.neighbors, reachable_neighbors, fn 
        %{zone_id: id, required_crafted_items: []}, acc -> [id | acc]
        %{zone_id: id, required_crafted_items: crafted_items}, acc ->
          if can_craft_items?(crafted_items, available_items) do
            [id | acc]
          else
            acc
          end
      end)
    end
  end

  def hello do
    :world
  end
end
