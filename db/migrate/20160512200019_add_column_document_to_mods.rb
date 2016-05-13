class AddColumnDocumentToMods < ActiveRecord::Migration
  def change
  	add_column :mods, :document, :string
  end
end
