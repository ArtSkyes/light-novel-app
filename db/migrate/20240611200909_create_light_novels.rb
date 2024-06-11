class CreateLightNovels < ActiveRecord::Migration[7.1]
  def change
    create_table :light_novels do |t|
      t.string :title
      t.string :author
      t.text :description
      t.date :release_date
      t.decimal :price

      t.timestamps
    end
  end
end
