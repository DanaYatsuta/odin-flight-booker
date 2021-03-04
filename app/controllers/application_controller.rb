class ApplicationController < ActionController::Base
  helper_method :airport_codes

  def airport_codes
    @airport_options = Airport.pluck(:id, :code)
    return @airport_options.to_h
  end
end
