class ClientMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.client_mailer.new_enquiry.subject
  #
  def new_enquiry(enquiry)
    @enquiry = enquiry
    @user = User.includes(:service).where(service: enquiry.service).pluck(:email)

     mail to: @user
  end

  def new_appointment(appointment)
    @appointment = appointment
    @user = User.includes(:service).where(service: appointment.service).pluck(:email)
    mail to: @user
  end
  
end
