class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @attended_events = @user.attended_events
  end
end
