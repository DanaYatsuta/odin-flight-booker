class BookingsController < ApplicationController
  def new
    flight_to_book_id = params[:flight_to_book_id].to_i
    passenger_count = params[:passenger_count].to_i

    @flight_to_book = Flight.find(flight_to_book_id)
    @booking = @flight_to_book.bookings.build

    passenger_count.times { @booking.passengers.build }
  end

  def create
    flight_to_book_id = params[:booking][:flight_to_book_id].to_i
    @flight_to_book = Flight.find(flight_to_book_id)

    @booking = @flight_to_book.bookings.build(booking_params)
    
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(user: passenger).thank_you_email.deliver!
      end
      redirect_to action: :index
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  private 

  def booking_params
    params.require(:booking).permit(passengers_attributes: [:name, :email])
  end
end
