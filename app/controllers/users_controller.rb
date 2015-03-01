class UsersController < ApplicationController
  # before_action :set_song, only: [:vote]
  before_action :authenticate_user!


  def index
    @users = User.all
  end

  def show
    @user = current_user
    render :show
  end

  def vote
    if current_user.vote_count > 0
      @vote = SongVote.new(vote_params)
      @vote.save
      @user = User.find(current_user)
      total_votes = current_user.vote_count - 1
      @user.update(:vote_count => total_votes)
      render :vote
    else
      flash[:alert] = "You currently have no votes to use! Please check back at the start of the new week"
      render :show
    end
  end


private
  def vote_params
    params.require(:song_vote).permit(:song_id, :user_id, :artist, :title)
  end
end
