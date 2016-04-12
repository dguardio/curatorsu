class RenameColumnVideoUrl < ActiveRecord::Migration
  def change
  	rename_column :mods, :video_url, :video
  end
end
