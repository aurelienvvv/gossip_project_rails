class PrivateMessagesController < ApplicationController
  def show

  end

  def new
  end

  def create
    message = PrivateMessage.new
    message.content = params['message']
    message.sender_id = cookies.signed.encrypted[:user_id]
    message.recipient_id = session[:receip]

    if message.save
      redirect_to conversations_path
    end
  end

  def destroy
  end

  def edit
  end

end
