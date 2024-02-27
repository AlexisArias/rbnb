class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Charcater.find(params[:id])
  end
end
