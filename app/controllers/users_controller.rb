class UsersController < ApplicationController
  def index
    @users = User.all.select('id, name, friends AS ')

    render json: { data: @users }
  end
end
