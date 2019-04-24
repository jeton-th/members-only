class UsersController < ApplicationController
  before_action :logged_in, only: [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # log_in @user
      flash[:info] = "Thanks for signing in! Please wait 1-7 days for an admin to approve your account."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end

