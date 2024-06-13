class AddIndexToLightNovels < ActiveRecord::Migration[7.1]
  def change
    add_column :light_novels, :title, :string
    add_index :light_novels, :title, unique: true
  end
end
