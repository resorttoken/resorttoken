class UsersController < ApplicationController
  def signup
    @user = User.new
    render :layout => "empty"
  end

  def resetpassword
    render :layout => "empty"
  end
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user

      #Handle a successful save.
      flash[:success] = "Welcome to the Resorttoken!"
      redirect_to @user
    else 
      render :layout => "empty", :template => 'users/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
