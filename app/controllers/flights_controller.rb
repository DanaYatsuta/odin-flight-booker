class FlightsController < ApplicationController
  def index
    if params.has_key?(:query)
      @query = params[:query]

      @flights = Flight.where(
        origin_airport_id: params[:query][:origin_airport_id],
        destination_airport_id: params[:query][:destination_airport_id],
        start: params[:query][:start]
      )
    else
      @flights = Flight.all
    end
  end
end
