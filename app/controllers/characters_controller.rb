class CharactersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      @characters = Character.search_by_name(params[:query])
      #params[:query] = nil
    else
      @characters = Character.order(:name)
    end

    respond_to do |format|
      format.html
      format.text do
        render partial: "characters/index", locals: { characters: @characters }, formats: [:html]
      end
    end
  end

  def show
    @characters = index
    @character = Character.find(params[:id])
    @rental = Rental.new
  end

  def search
    @query = params[:query]
    @characters = Character.where("name LIKE ?", "%#{@query}%")
    if @characters.empty?
      flash.now[:alert] = "Nous n'avons pas trouvé de correspondance à votre recherche."
    end
    render partial: 'characters/index'
  end
end
