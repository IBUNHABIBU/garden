class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :tour_date
      t.integer :number_of_people
      t.text :special_requests

      t.timestamps
    end
  end
end
