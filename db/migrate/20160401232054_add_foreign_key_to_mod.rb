class AddForeignKeyToMod < ActiveRecord::Migration
  def change
  	add_reference :mods, :courses
  end
end
