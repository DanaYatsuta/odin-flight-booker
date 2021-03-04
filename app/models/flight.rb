class Flight < ApplicationRecord
  belongs_to :origin_airport, class_name: 'Airport'
  belongs_to :destination_airport, class_name: 'Airport'

  has_many :bookings

  def start_date_formatted
    start.strftime('%d.%m.%Y')
  end
end
