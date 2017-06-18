class AddFirstLastStationToWagons < ActiveRecord::Migration[5.1]
  def change
    add_column :wagons, :first_station_id, :integer
    add_column :wagons, :last_station_id, :integer
  end
end
