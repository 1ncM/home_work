class SearchesController < ApplicationController

  def show
  end

  def new
    search_ticket
    render :show  
  end

  def search_ticket
    @first_station = RailwayStation.find(params[:first_station])
    @last_station = RailwayStation.find(params[:last_station])
    @routes = @first_station.routes & @last_station.routes
  end
end