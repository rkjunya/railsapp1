class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:logout]}

  before_action :forbid_login_user, {only: [:login_form, :login]}

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/kintore_posts/index")
    else
      render("login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end

end
