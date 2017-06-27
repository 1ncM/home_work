class CreateWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :wagons do |t|
      t.string :number
      t.string :type_of_wagon
      t.integer :up_seats
      t.integer :down_seats
      t.integer :train_id, index: true
    end
  end
end
