class RemoveColumnCuratorIdFromCoursesTable < ActiveRecord::Migration
  def change
  	remove_column :courses, :curator_id
  end
end
