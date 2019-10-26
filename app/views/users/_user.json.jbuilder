json.extract! user, :id, :name, :username

json.starred user.pokemons do |poke|
  json.partial! "pokemons/pokemon", pokemon: poke
end
