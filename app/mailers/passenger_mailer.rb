class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def thank_you_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Thank you for booking a flight!')
  end
end
