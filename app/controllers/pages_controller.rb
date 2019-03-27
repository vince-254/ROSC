class PagesController < ApplicationController
    before_action :set_user
  def home
    @user
    @post = Post.all
    @enquiry = Enquiry.all
    @appointment = Appointment.all
    @service = Service.all


  end

  private
    def set_user
      @user = current_user
    end

end
