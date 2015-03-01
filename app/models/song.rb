class Song < ActiveRecord::Base
  # has_many :song_votes
  # has_many :playlists
  # has_many :users, through: :song_votes
  belongs_to :user
  belongs_to :playlists
  has_many :song_votes
end
