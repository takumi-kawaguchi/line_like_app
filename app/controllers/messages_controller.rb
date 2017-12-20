class MessagesController < ApplicationController
  def index
    @messages = Message.where(talk_id: params[:talk_id]).all
    @message  = Message.new
  end

  def create
    @message = Message.create(message_params)
    if @message.save
      redirect_to talk_messages_path
    else
      render 'index'
    end
  end

private
  def message_params
    params.require(:message).permit(:text, :talk_id, :user_id)
  end
end
