class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :contact
      t.date :date
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
