class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :add_pokemon, :remove_pokemon]
  before_action :set_pokemon, only: [:add_pokemon, :remove_pokemon]



  # GET /users/1
  def show
    render json:{user: @user, pokemons: @user.pokemons }
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user , status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

 
  def add_pokemon
    @starred = @user.starreds.new(pokemon_id: @pokemon.id )
   unless @user.starreds.find_by(pokemon_id: @pokemon.id )
    if @starred.save
      render json:  {user: @user, pokemons: @user.pokemons }, status: :created
    else
      render json:  @starred.erros, status: :unprocessable_entity
    end
   else
    render json: {msg: "Esse pokemon já está em seus favoritos"}, status: :unprocessable_entity
   end

  end

  def remove_pokemon
    @starred = @user.starreds.find_by(pokemon_id: @pokemon.id )
    if @starred.delete 
      render json:  {user: @user, pokemons: @user.pokemons }, status: 200
    else
      render json: {msg: "Ocorreu um erro"}, status: :unprocessable_entity
    end
  end
  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find_by(username: params[:username])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_pokemon
    @pokemon = Pokemon.find_by(name: params[:pokemon])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username)
  end
end
