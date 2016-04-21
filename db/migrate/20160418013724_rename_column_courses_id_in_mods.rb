class RenameColumnCoursesIdInMods < ActiveRecord::Migration
  def change
  	rename_column :mods, :courses_id, :course_id
  end
end
