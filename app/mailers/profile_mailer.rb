class ProfileMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @profile = params[:profile]
    @url  = 'http://example.com/login'
    mail(to: @profile.fname, subject: 'Welcome to Odin Facebook')
  end
end
