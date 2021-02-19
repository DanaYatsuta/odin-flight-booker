# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(code: 'NYC')
Airport.create(code: 'SFO')

Flight.create(origin_airport_id: 1, destination_airport_id: 2, start: Date.new(2021, 3, 2), duration: 7200)
Flight.create(origin_airport_id: 2, destination_airport_id: 1, start: Date.new(2021, 3, 8), duration: 3600)