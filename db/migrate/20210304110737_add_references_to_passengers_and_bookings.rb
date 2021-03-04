class AddReferencesToPassengersAndBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :passengers, :booking
    add_reference :bookings, :flight
  end
end
