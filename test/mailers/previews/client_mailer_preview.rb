# Preview all emails at http://localhost:3000/rails/mailers/client_mailer
class ClientMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/client_mailer/new_enquiry
  def new_enquiry
    enquiry = Enquiry.last
    ClientMailer.new_enquiry(enquiry)
  end
  
  def new_appointment
    appointment = Appointment.last
    ClientMailer.new_appointment(appointment)
  end

end
