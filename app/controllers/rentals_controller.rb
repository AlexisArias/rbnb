class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    character = Character.find(params[:character_id])
    @rental.character = character
    if @rental.save
      flash[:notice] = "Félicitations, vous avez réservé un personnage de Kaamelott ! On est pas sortis du sable !"
      redirect_to user_rentals_path(current_user)
    else
      flash[:alert] = "Aïe, il y a eu une erreur lors de la création de votre réservation. Essayez de chanter Sloubi."
      redirect_to character_path(character)
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

end
