class CharactersController < ApplicationController
  def index
    @character = Character.all
  end

  def show
    @character = Charcater.find(params[:id])
  end
end
