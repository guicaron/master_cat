class AddDateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :starting_date, :datetime
    add_column :bookings, :finishing_date, :datetime
  end
end
