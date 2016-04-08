class AddColumnVideoIdToModsTable < ActiveRecord::Migration
  def change
    add_column :mods, :video_id, :string
  end
end
