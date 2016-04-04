class RenameForeignKeyColumnInCoursesTable < ActiveRecord::Migration
  def change
  	rename_column :courses, :curators_id, :curator_id
  end
end
