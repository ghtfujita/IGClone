class ConfirmationMailer < ApplicationMailer
  def confirmation_mail(contact)
    @contact = contact
    mail to: "mail.takeshi.fujita@gmail.com", subject: "Post Confirmation Email"
  end
end
