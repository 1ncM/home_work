class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :number
      t.integer :railway_station_first_id
      t.integer :railway_station_last_id
      t.timestamps
    end
  end
end
