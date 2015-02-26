class RemoveColumnsPlaylists < ActiveRecord::Migration
  def change
    remove_column :playlists, :album, :string
    remove_column :playlists, :title, :string
    remove_column :playlists, :user_id, :integer
    remove_column :playlists, :spotify_id, :integer
    remove_column :playlists, :artist, :string
    remove_column :playlists, :votes, :string
    remove_column :playlists, :vetoes, :string
  end
end
