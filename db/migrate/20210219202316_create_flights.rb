class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :origin_airport, null: false
      t.references :destination_airport, null: false
      t.date :start
      t.integer :duration

      t.timestamps
    end
  end
end
