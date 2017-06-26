class Wagon < ApplicationRecord
  belongs_to :train
  belongs_to :first_station, class_name: "RailwayStation", foreign_key: :first_station_id
  belongs_to :last_station, class_name: "RailwayStation", foreign_key: :last_station_id

  after_validation :set_number

  private

  def set_number
    self.number ||= Wagon.count
  end
end