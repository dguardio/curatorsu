class AddForeignKeysToCourse < ActiveRecord::Migration
  def change
  	add_reference :courses, :curators
  	add_reference :courses, :curatorxes
  end
end
