class PartneradminareaController < ApplicationController
  def index
    @user = current_user
  end

  def dashboard
    @user = current_user
  end
  def invite_and_earn
    @user = current_user
  end

  def list_your_property
    @user = current_user
  end

  def reports
    @user = current_user
  end
  def settings
    @user = current_user
  end

end
