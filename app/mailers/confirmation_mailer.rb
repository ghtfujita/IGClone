class ConfirmationMailer < ApplicationMailer
  def confirmation_mail(contact)
    @contact = contact
    mail to: @contact.email, subject: "Post Confirmation Email"
  end
end
