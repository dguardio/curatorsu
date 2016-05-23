class AddColumnTimelineToToCourse < ActiveRecord::Migration
  def change
  	add_column :courses, :timeline_to, :string
  end
end
