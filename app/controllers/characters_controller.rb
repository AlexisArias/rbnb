class CharactersController < ApplicationController
  def index
    @character = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @rental = Rental.new
  end
end
