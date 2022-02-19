class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user2 = User.find_by(email:params[:email])
      redirect_to new_path, notice: 'This email already exist'
    else
      if @user.save
        flash[:notice] = "User created."
        redirect_to home_path
      else
        render :new
      end
    end
  end
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
 
end
