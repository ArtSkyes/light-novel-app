class AddIndexToLightNovels < ActiveRecord::Migration[7.1]
  def change
    add_index :light_novels, :title, unique: true
  end
end
