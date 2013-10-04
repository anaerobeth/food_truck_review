class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def update

    if params[:user] && current_user.update_attributes!( user_params )
      redirect_to user_path(current_user)
    else
      render :show
    end


  end


  def user_params
    params.require(:user).permit(:photo)
  end

end
