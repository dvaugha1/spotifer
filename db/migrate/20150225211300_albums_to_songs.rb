class AlbumsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :albums, :string
  end
end
