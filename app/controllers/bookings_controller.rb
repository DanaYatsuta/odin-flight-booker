class BookingsController < ApplicationController
  def new
    @booking = Booking.new

    flight_to_book_id = params[:flight_to_book_id].to_i
    passenger_count = params[:passenger_count].to_i
    passenger_count.times { @booking.passengers.build }

    @flight_to_book = Flight.find(flight_to_book_id)
  end
end
