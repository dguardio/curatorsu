class DropCuratorxesIdFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :curatorxes_id
  end
end
