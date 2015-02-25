class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.string :artist
      t.string :title
      t.string :spotify_id, :unique => true
      t.timestamps :created
      t.timestamps :updated
      
    end
  end
end
