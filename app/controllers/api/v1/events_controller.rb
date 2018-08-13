class Api::V1::EventsController < ApplicationController
  before_action :authenticate, only: [:show]

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
