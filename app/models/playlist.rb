class Playlist < ActiveRecord::Base
  has_many :songs through :song_votes
end
