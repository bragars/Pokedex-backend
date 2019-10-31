class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show]

  # GET /pokemons
  def index
    @pokemons = Pokemon.order(:id).page params[:page]
    render json: {data: @pokemons, size: @pokemons.size,next_page: @pokemons.next_page,prev_page: @pokemons.prev_page}
  end

  # GET /pokemons/1
  def show
    render json: @pokemon 
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pokemon
    @pokemon = Pokemon.find_by(name: params[:name])
  end

end
