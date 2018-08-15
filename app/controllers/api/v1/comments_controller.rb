class Api::V1::CommentsController < ApplicationController

    # before_action :authenticate, only: [:show]

    def index
      @comments = Comment.all
      render json: @comments
    end

    def create

      @comment = Comment.new(comment_params)


      if (@comment.save)
        render json: {comment: @comment, status: 200}
      else
        render json: {
          errors: @comment.errors.full_messages
        }, status: :unprocessable_entity
      end
    end

    def show
      @comment = Comment.find(params[:id])
      render json: @comment
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json: Comment.all
    end

    private

    def comment_params
      params.permit(:measure, :description, :score_id)
    end


end
