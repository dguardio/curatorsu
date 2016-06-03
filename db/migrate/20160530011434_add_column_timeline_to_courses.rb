class AddColumnTimelineToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :timeline, :date  	
  	add_column :courses, :timeline_to, :date
  end
end
