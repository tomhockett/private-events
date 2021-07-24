# frozen_string_literal: true

##
# Events Controller
class EventsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'Your event was saved! 🎉'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date_time)
  end
end
