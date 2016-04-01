class AddForeignKeyToMod < ActiveRecord::Migration
  def change
  	add_foreign_key :mods, :courses
  end
end
