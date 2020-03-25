class MessageMailer < ApplicationMailer
  def general_message(message)
    @message = message
    mail(from: message.email,
         to: "admin@example.com",
         subject: "You Have a Message From Your Website")
  end
end
