class AddServiceToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :enquiries, :service, foreign_key: true
  end
end
