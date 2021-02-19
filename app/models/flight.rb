class Flight < ApplicationRecord
  belongs_to :origin_airport
  belongs_to :destination_airport
end
