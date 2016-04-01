class AddColumnsToMod < ActiveRecord::Migration
  def change
    add_column :mods, :name, :string
    add_column :mods, :description, :text
    add_column :mods, :post, :text
  end
end
