json.extract! enquiry, :id, :name, :contact, :email, :question, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
