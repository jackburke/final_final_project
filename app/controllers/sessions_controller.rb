class SessionsController < ApplicationController
 def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
       sign_in user
       redirect_to '/stories#index', notice: "Signed in successfully"
    else
     flash.now[:alert] = "Invalid email/password combination"
     render :action => 'new'
    end
  end

  def destroy
   flash.now[:alert] = "Successively logged out"
   render :action => 'new'
   reset_session
   end


end
