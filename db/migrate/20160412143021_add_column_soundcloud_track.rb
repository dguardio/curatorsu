class AddColumnSoundcloudTrack < ActiveRecord::Migration
  def change
  	add_column :mods, :soundcloud_track, :text
  end
end
