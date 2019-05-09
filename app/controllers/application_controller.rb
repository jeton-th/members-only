class ApplicationController < ActionController::Base
  include SessionsHelper

  def logged_in
    if logged_in?
      flash[:danger] = "You are already logged in."
      redirect_to root_url
    end
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "You need to sign in."
      redirect_to login_url
    end
  end
end
