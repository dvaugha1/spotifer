class Song < ActiveRecord::Base
  has_many :song_votes
  has_many :users, through: :song_votes
end