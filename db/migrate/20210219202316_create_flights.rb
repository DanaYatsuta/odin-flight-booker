class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :origin_airport, null: false, foreign_key: true
      t.references :destination_airport, null: false, foreign_key: true
      t.date :start
      t.integer :duration

      t.timestamps
    end
  end
end
