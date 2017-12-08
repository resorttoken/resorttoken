class ClientprofileController < ApplicationController
  def index
    @user = current_user
  end
  def invite_and_earn
    @user = current_user
  end
  def settings
    @user = current_user
  end

  def verification
    @user = current_user
  end
end
