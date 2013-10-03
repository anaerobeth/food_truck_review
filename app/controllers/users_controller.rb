class UsersController < ApplicationController

  def show
    @user = current_user || params[:user_id]
  end


end
