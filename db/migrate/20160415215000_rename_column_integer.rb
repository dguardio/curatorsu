class RenameColumnInteger < ActiveRecord::Migration
  def change
  	rename_column :users, :integer, :role
  end
end
