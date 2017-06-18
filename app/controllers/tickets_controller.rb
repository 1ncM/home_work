class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])  
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.create(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:number, :railway_station_first_id, :railway_station_last_id, :user_id, :train_id)
  end
end