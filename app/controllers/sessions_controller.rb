class SessionsController < ApplicationController
  before_action :logged_in, only: [:new]

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to root_path
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to login_path(email: params[:session][:email])
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
