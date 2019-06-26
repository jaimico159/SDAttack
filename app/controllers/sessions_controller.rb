class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end

  def create
    
    user = User.authenticate(params[:session][:email],params[:session][:password])
    if user
      session[:expiry_time] = Time.current.to_s
      session[:user_id] = user.id
    else
      puts "ERROR"
      flash[:error] = "Invalid email or password"
    end
    
    redirect_to users_path
  end

  def destroy
    # flash[:notice] = "You signed out"
    session[:expiry_time] = nil
    session[:user_id] = nil

    redirect_to auth_path
  end
end
