class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def update

    if current_user.update_attributes!( user_params )
      redirect_to user_path(current_user)
    else
      render :show
    end


  end


  def user_params
    params.require(:user).permit(:photo)
  end

end

#def update
#  @book = Book.find(params[:id])
#  if @book.update_attributes(params[:book])
#    redirect_to :action => 'show', :id => @book
#  else
#    @subjects = Subject.find(:all)
#    render :action => 'edit'
#  end
