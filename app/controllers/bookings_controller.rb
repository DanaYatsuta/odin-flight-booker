class BookingsController < ApplicationController
  def new
    flight_to_book_id = params[:flight_to_book_id].to_i
    passenger_count = params[:passenger_count].to_i

    @flight_to_book = Flight.find(flight_to_book_id)
    @booking = @flight_to_book.bookings.build

    passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Flight.bookings.build


  end
end
