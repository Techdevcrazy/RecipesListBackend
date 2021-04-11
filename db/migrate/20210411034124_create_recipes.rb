class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.text :ingredients, array: true, default: []
      t.text :directions, array: true, default: []
      t.integer :prep_time_min
      t.integer :cook_time_min
      t.integer :servings
      t.text :tags, array: true, default: []
      t.string :source_url

      t.timestamps
    end
  end
end
