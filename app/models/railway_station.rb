class RailwayStation < ApplicationRecord
  validates :title, presence: true
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  def update_position(route, position)
    station_route = railway_stations_routes.where(route: route).first
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route = railway_stations_routes.where(route: route).first
    station_route.position if station_route
  end
end
