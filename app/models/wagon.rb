class Wagon < ApplicationRecord
  belongs_to :train
  belongs_to :first_station, class_name: "RailwayStation", foreign_key: :first_station_id
  belongs_to :last_station, class_name: "RailwayStation", foreign_key: :last_station_id

  after_validation :set_name

  private

  def set_name
    self.name ||= "#{first_station} - #{last_station}"
  end
end