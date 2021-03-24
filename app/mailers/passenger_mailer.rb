class PassengerMailer < ApplicationMailer
default from: 'notifications@example.com'

def thank_you_email
  @users = params[:users]
  @users.each do |user|
    mail(to: user.email, subject: 'Thank you for booking a flight!')
  end
end
