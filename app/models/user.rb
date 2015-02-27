class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :song_votes
  has_many :playlists
  has_many :songs, through: :song_votes



  def can_vote?
    self.vote_count > 0
  end

  def voted
    if self.can_vote?
      self.vote_count -= 1
      self.save
    end
  end


end
