class WagonsController < ApplicationController
  def index
    @wagons = Wagon.all
  end

  def show
    @wagon = Wagon.find(params[:id])
  end

  def new
    @train = Train.find(params[:train_id])
    @wagon = Wagon.new
  end

  def create
    @train = Train.find(params[:train_id])
    @wagon = @train.wagons.new(wagon_params)

    if @wagon.save
      redirect_to @train
    else
      render :new
    end
  end

  private

  def wagon_params
    params.require(:wagon).permit(:type_of_wagon, :up_seats, :down_seats, :train_id, :first_station_id, :last_station_id)
  end
end