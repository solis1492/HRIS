class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.validate_login(
  		params[:session][:name],
  		params[:session][:password_digest]
  		)
  	if user
  		sessions[:user_id]=user.id
  		redirect_to :controller => 'users'
  	else
  		flash[:status] = FALSE
  		flash[:alert] = "Invalid username and Password"
  		redirect_to login_path
  		
  	
     end
  end
  
  def destroy
  	session[:id]=nil
  	redirect_to login_path
  end

end



