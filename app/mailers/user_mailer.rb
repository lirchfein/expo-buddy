class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.export.subject
  #
  def export(user_id, exhibitor_id)
    @user = User.find(user_id) # Instance variable => available in view
    @exhibitor = Exhibitor.find(exhibitor_id) # Instance variable => available in view
    @pictures = Picture.taken_by(@user).for_exhibitor(@exhibitor)
    attachments['attachment.pdf'] = WickedPdf.new.pdf_from_string(
      render_to_string('show.pdf.erb', layout: 'pdf')
    )
    # attachments['exportData.pdf'] = pdf

    mail(to: @user.email, subject: 'Your data export from expo-buddy!')
    # This will render a view in `app/views/user_mailer`!
  end
end
