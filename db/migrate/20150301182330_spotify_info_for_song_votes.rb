class SpotifyInfoForSongVotes < ActiveRecord::Migration
  def change
    add_column :song_votes, :title, :string
    add_column :song_votes, :artist, :string
  end
end
