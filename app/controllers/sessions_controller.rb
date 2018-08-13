class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])

    if (@user && @user.authenticate(params["password"]))
      render json: {
        username: @user.username,
        id: @user.id,
        scores: @user.scores,
        events: @user.events,
        token: gen_token()
      }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database"
      }, status: :unauthorized
    end
  end

end
