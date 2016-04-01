class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|

      t.timestamps
    end
  end
end
