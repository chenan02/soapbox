class SubscriptionsController < ApplicationController
  def create
    return redirect_to login_path if session[:user].nil?
    subscription = Subscription.new(
      user_id: session[:user]["id"],
      channel_id: params[:channel_id]
    )
    if subscription.save 
      flash[:success] = "Subscribed!"
      return redirect_to channels_path
    end
    flash[:warning] = "Uh oh, something went wrong :("
    redirect_to channels_path
  end

  def destroy
    Subscription.find_by(user_id: session[:user]["id"], channel_id: params[:id]).destroy
    redirect_to channels_path
  end
end
