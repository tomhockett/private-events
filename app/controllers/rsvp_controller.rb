class RsvpController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    if @event.attendees.include?(current_user)
      redirect_to @event, notice: 'You are already on the list'
    else
      @event.attendees << current_user
      redirect_to @event
    end
  end
end
