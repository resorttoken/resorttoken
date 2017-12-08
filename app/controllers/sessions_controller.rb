class SessionsController < ApplicationController

  def new
    render :layout => "registeration"
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user

      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      # Create an error message.
      @message = 'Invalid email or password. Please try again.'
      @userinfo = params[:session]
      render :layout => "registeration", :template => 'sessions/new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
