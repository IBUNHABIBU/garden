class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :tour_type
      t.date :start_date
      t.date :end_date
      t.text :special_requests

      t.timestamps
    end
  end
end
