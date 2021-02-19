class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_codes = Airport.pluck(:id, :code).to_h
  end
end
