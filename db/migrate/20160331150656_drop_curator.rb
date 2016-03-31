class DropCurator < ActiveRecord::Migration
  def change
  	drop_table :curators
  end
end
