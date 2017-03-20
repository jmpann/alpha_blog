class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :food
      t.string :movies
      t.string :music
      t.string :outdoors
      t.string :art
    end
  end
end
