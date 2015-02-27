class UsersController < ApplicationController
   before_action :authenticate_user!


  def index
    @users = User.all
  end

  def show
    @user = current_user
    render :show
  end

  def vote
    if current_user.can_vote?
      Vote.create(@vote, current_user)
    else
      flash[:alert] = "You currently have no votes to use! Please check back at the start of the new week"
    end
  end

private
  def vote_params
    @vote = Song.find(params[:song_id])
  end

end
