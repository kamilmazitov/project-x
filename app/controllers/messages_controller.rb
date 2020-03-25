class MessagesController < ApplicationController
  expose_decorated(:message)

  MESSAGE_PARAMS = %i[name email message].freeze

  def new
  end

  def create
    if message.save
      MessageMailer.general_message(message).deliver
      redirect_to root_path, notice: "Message was successfuly send"
    else
      render :new, alert: "Can't create a message"
    end
  end

  private

  def message_params
    params.require(:message).permit(*MESSAGE_PARAMS)
  end
end
