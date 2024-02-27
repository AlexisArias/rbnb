class RentalsController < ApplicationController
  def index
    @rental = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.save
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :character_id, :user_id)
  end

end
