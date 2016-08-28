class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def send_message
    channel = Channel.find(params[:id])
    channel.send_news
    redirect_to channels_path
  end
end
