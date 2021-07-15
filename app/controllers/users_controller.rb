class UsersController < ApplicationController
  def index
    @users = if params[:category_name]

               Category.joins(:ideas).select('ideas.id, name AS category, body').where(name: params[:category_name])
             else
               Category.joins(:ideas).select('ideas.id, name AS category, body')
             end

    render json: { data: @ideas }
  end
end
