class Api::V1::ScoresController < ApplicationController
  # before_action :authenticate, only: [:show]

  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @score = Score.create(score_params)
    render json: @score
  end

  def show
    @score = Score.find(params[:id])
    @url = Rails.application.routes.url_helpers.rails_blob_path(@score.music_score, only_path: true)
    @json = {url: @url, score: @score}
    render json: @json
  end

  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    render json: Score.all
  end

  private

  def score_params
    params.permit(:title, :composer, :instrumentation, :user_id, :music_score)
  end

end
