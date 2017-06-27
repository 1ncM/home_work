class AddSortingWagonsToTrains < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :sorting_wagons, :boolean
  end
end
