class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.string :artist

      t.timestamps null: false
    end
  end
end
