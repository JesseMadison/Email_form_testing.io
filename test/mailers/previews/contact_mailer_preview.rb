# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def elephant
    email = "jessemadison@hotmail.com"
    message = "hola"
    ContactMailer.send_contact_email(email,message)
  end

end
