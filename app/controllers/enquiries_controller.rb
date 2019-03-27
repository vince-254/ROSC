class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]

  # GET /enquiries
  # GET /enquiries.json
  def index
    @enquiries = Enquiry.all
  end

  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
  end

  # GET /enquiries/new
  def new
    @enquiry = Enquiry.new
  end

  # GET /enquiries/1/edit

  # POST /enquiries
  # POST /enquiries.json
  def create
    @enquiry = Enquiry.new(enquiry_params)
    respond_to do |format|
      if @enquiry.save
        format.html { redirect_to new_enquiry_path, notice: 'Enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @enquiry }

        ClientMailer.new_enquiry(@enquiry).deliver_now
      else
        format.html { render :new }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /enquiries/1
  # DELETE /enquiries/1.json
  def destroy
    @enquiry.destroy
    respond_to do |format|
      format.html { redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :contact, :email, :question, :service_id)
    end
end
