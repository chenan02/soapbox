class SessionsController < ApplicationController
  def create
    @user = User.find_by(phone_number: params[:phone_number])
    if @user && params[:password] == @user.password
      session[:user] = @user
      flash[:success] = "Signed in"
      return redirect_to channels_path
    end
    flash[:danger] = "Invalid credentials"
    redirect_to new_session_path
  end
end
