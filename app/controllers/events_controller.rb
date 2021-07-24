# frozen_string_literal: true

##
# Events Controller
class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end
end
