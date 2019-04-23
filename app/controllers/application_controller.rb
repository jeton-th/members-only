class ApplicationController < ActionController::Base
  include SessionsHelper

  def logged_in
    if logged_in?
      flash[:danger] = "You are already logged in."
      redirect_to root_url
    end
  end
end
