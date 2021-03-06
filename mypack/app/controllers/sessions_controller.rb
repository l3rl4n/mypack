class SessionsController < ApplicationController
  def login
  end

  def home
  end

  def profile
  end

  def setting
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      # flash[:notice] = "Wow! Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'login')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => 'login'
  end

  before_filter :authenticate_user, :only => [:home, :profile, :setting, 'index']
  before_filter :save_login_state, :only => [:login, :login_attempt]


end
