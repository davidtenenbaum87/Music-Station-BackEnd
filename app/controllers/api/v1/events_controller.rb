class Api::V1::EventsController < ApplicationController
  # before_action :authenticate, only: [:show]

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def update
    @event = Event.find_by(id: params[:id])
    
    @event.event_title = params[:event_title]
    @event.description = params[:description]
    @event.event_date = params[:event_date]
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.user_id = params[:user_id]
    if (@event.save)
      render json: @event
    else
      render json: {
        errors: @event.errors.full_messages
      }, status: :unprocessable_entity
    end
  end


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: Event.all
  end

  private

  def event_params
    params.permit(:event_title, :description, :event_date, :start_time, :end_time, :user_id)
  end

end
