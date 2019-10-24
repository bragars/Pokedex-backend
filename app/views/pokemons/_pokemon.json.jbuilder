json.extract! pokemon, :id, :name, :image_url, :identifier, :weight, :height
json.types pokemon.kind.split(';')
json.url pokemon_url(pokemon, format: :json)
