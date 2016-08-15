class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def create
    @user = User.where(phone_number: session_params[:phone_number])
    unless @user || session_params[:password] == @user.password
      session[:user] = @user
      flash[:success] = "Signed in"
      redirect_to channels_path
    end
    flash[:danger] = "Invalid credentials"
    redirect_to new_session_path
  end

  private

  def session_params
    params.require(:session).permit(:phone_number, :password)
  end
end
