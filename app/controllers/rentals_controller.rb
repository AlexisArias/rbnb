class RentalsController < ApplicationController
  def index
    if params[:query].present?
      @rentals = Rental.search_rental_by_character_name(params[:query])
      params[:query] = nil
    else
      @rentals = current_user.rentals
    end
  end

  def new
    @rental = Rental.new
  end

  def create
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
