class UpdateLightNovels < ActiveRecord::Migration[7.1]
  def change
    remove_column :light_novels, :price, :decimal
    add_column :light_novels, :genre, :string
    add_column :light_novels, :rating, :decimal, precision: 3, scale: 2
  end
end
