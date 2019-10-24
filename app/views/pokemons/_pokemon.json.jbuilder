json.extract! pokemon, :id, :name, :image_url, :identifier, :weight, :height, :kind
json.url pokemon_url(pokemon, format: :json)
