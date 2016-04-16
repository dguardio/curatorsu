class RenameColumnRoleAttributes < ActiveRecord::Migration
  def change
  	rename_column :users, :role, :integer
  end
end
