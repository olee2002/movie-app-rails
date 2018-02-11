class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :synopsis
      t.string :picture
      t.boolean :add_to_fav
      t.integer :api_id

      t.timestamps
    end
  end
end
