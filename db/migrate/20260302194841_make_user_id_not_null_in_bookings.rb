class MakeUserIdNotNullInBookings < ActiveRecord::Migration[8.0]
  def change
    change_column_null :bookings, :user_id, false
  end
end
