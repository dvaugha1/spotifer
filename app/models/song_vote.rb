class SongVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :song
  belongs_to :playlist
end


def self.vote(song, user)
    vote = SongVote.new()
    vote.user_id = user.id
    vote.song_id = song.id
    vote.save
  end
