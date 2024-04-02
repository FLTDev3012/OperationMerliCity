class EspeceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.espece_mailer.creation_confirmation.subject
  #


  def creation_confirmation(espece)
    @espece = espece

    mail(
      to:       @espece.user.email,
      subject:  "Espece #{@espece.nom} created!"
    )
  end
end
