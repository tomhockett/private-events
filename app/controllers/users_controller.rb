class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @events = User.find(params[:id]).events
  end
end
