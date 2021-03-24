class PassengerMailer < ApplicationMailer
default from: 'notifications@example.com'

def thank_you_email
  @user = params[:user]
  mail(to: @user.email, subject: 'Thank you for booking a flight!')
end
