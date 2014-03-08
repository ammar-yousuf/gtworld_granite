class NotificationsMailer < ActionMailer::Base

  default :from => "gtworldgranitesite@gmail.com"
  # default :to => "you@youremail.dev"

  def new_message(message)
    @message = message
    mail(:subject => "Contact from site: #{message.subject}", :to => "gtworld1@gmail.com")
  end

end