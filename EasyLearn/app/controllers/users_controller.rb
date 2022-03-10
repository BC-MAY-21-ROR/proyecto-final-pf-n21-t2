class UsersController < ApplicationController
  before_action :require_login
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
        redirect_to root_path
      else
        render :new
      end
    end
  end

  def editUser
    @user = @current_user
  end

  def edit
    @user = @current_user
    if @user.update(update_params)
      redirect_to root_path
    end
  end

  private
  def user_params 
    params.require(:user).permit(:name, :email, :password)
  end
  def update_params 
    params.require(:user).permit(:name, :email, :description ,:password)
  end

  

end
