json.extract! appointment, :id, :name, :contact, :date, :service_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
