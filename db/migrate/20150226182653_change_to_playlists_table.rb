class ChangeToPlaylistsTable < ActiveRecord::Migration
  def change
    rename_table :suggestions, :playlists
  end
end
