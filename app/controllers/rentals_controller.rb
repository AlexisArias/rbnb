class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
  end

  def new
    @rental = Rental.new
  end

  def create
    I18n.locale = :fr
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.character = Character.find(params[:character_id])
    if @rental.save!
      flash[:notice] = "Congratulations, you have booked a Kaamelott character!"
      redirect_to user_rentals_path(current_user)
    else
      flash[:alert] = "Warning, there was an issue creating your booking!"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

end
