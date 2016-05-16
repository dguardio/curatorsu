class AddColumnImageToMod < ActiveRecord::Migration
  def change
  	add_column :mods, :image, :string
  end
end
