class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.text :question

      t.timestamps
    end
  end
end
