class AddColumnsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :name, :string
    add_column :courses, :description, :text
    add_column :courses, :timeline, :string
    add_column :courses, :instructors, :text
  end
end
