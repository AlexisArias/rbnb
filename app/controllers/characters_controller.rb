class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @characters = index
    @character = Character.find(params[:id])
    @rental = Rental.new
  end
end
