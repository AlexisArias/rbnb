class CharactersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @rental = Rental.new
  end
end
