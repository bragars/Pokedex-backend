json.extract! pokemon, :id, :name, :image_url, :identifier, :weight, :heigth, :kind, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
