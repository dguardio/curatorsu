class DropColumnTimelineFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :timeline
  	remove_column :courses, :timeline_to
  end
end
