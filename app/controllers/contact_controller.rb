class ContactController < ApplicationController
  def index
    
  end

  def mail
    #extract the info coming from the form as params to fetch email and message
    #call the mailer class and the mailer method and pass the form paramas  as arguments

    if params[:contact]
      email = params[:contact][:email]
      message = params[:contact][:message]

      if email.present? || message.present?
        #tell the UserMailer to send a welcome email after save
        ContactMailer.send_contact_email(email, message).deliver_now
        # redirect_to '/contact', notice: 'Email sent!'
      else
        flash[:warning] = "Please fill out the form"
        redirect_to'/contact'
      end
    end
  end
end
