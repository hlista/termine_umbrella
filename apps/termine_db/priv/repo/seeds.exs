# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TermineDb.Repo.insert!(%TermineDb.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

json_files = Path.wildcard("priv/World/*.json")
TermineDb.Repo.delete_all(TermineDb.World.Location)
TermineDb.Repo.delete_all(TermineDb.World.Exit)
TermineDb.Repo.delete_all(TermineDb.World.Region)

#create Regions with locations
Enum.each(json_files, fn file_name ->
  file = File.read!(file_name)
  zone = Jason.decode!(file)
  Enum.each(zone, fn %{
    "region_name" => region_name
    } = region ->
    {:ok, %{id: region_id}} = TermineDb.Regions.create(%{name: region_name})
    if Map.has_key?(region, "locations") do
      Enum.each(region["locations"], fn {name, conditional} ->
        TermineDb.Locations.create(%{
          name: name,
          conditional: conditional,
          region_id: region_id
        })
      end)
    end
  end)
end)

Enum.each(json_files, fn file_name ->
  file = File.read!(file_name)
  zone = Jason.decode!(file)
  Enum.each(zone, fn
    %{
    "region_name" => region_name,
    "exits" => exits
    } ->
      {:ok, from_region} = TermineDb.Regions.find(%{name: region_name})
      Enum.each(exits, fn {to_region, conditional} ->
        {:ok, to_region} = TermineDb.Regions.find(%{name: to_region})
        TermineDb.Exits.create(%{
          from_id: from_region.id,
          to_id: to_region.id,
          conditional: conditional
        })
      end)
    _ -> nil
  end)
end)

