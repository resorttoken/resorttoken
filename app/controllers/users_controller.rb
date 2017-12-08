class UsersController < ApplicationController
  def new
    @user = User.new
    render :layout => "registeration"
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
      render :layout => "registeration", :template => 'users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
