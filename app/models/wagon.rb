class Wagon < ApplicationRecord
  validates :number, uniqueness: true
  belongs_to :train
  belongs_to :first_station, class_name: "RailwayStation", foreign_key: :first_station_id
  belongs_to :last_station, class_name: "RailwayStation", foreign_key: :last_station_id

  after_validation :set_number

  scope :asc, -> { order(:id)}
  scope :desc, -> { order("Id desc")}

  private

  def set_number
    self.number ||= Wagon.count
  end
end