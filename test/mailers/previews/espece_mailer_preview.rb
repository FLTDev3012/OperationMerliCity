# Preview all emails at http://localhost:3000/rails/mailers/espece_mailer
class EspeceMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/espece_mailer/creation_confirmation
  def creation_confirmation
    EspeceMailer.creation_confirmation
  end

end
