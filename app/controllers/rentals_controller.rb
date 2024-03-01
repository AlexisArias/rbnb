class RentalsController < ApplicationController
  def index
    if params[:query].present?
      @rentals = Rental.search_rental_by_character_name(params[:query])
      params[:query] = nil
    else
      @rentals = current_user.rentals
    end
    respond_to do |format|
      format.html
      format.text do
        render partial: "rentals/index", locals: { characters: @characters }, formats: [:html]
      end
    end
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
