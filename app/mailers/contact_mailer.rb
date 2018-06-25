class ContactMailer < ApplicationMailer
  default from: 'jessemadison@hotmail.com'
  def send_contact_email(email,message)
    @email = email
    @message = message
    # mail(to: @email, message: @message)

    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    message_params =
    {:from => ENV['MAILGUN_DEFAULT_SMTP'],
    :to      => @email,
    :subject => @message,
    :text    => 'this mail is sent using mailgun API via mailgun-rubyonrails'}

    mg_client.send_message ENV['MAILGUN_DOMAIN_URL'],message_params
  end

end
