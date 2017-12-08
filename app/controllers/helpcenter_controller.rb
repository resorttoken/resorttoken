class HelpcenterController < ApplicationController
  def index
    @user = current_user
  end
  def contact_us
    @user = current_user
  end
  def faq
    @user = current_user
  end
end
