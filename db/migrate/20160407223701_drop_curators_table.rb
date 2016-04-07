class DropCuratorsTable < ActiveRecord::Migration
  def change
  	drop_table :curators
  end
end
