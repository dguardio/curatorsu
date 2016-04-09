class RenameVideoIdColumnToVideoUrl < ActiveRecord::Migration
  def change
  	rename_column :mods, :video_id, :video_url
  end
end
