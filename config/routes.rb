Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pokemons", to: "pokemons#index"
  get "/pokemons/:name", to: "pokemons#show"
  post "/users", to: "users#create"
  get "/users/:username", to: "users#show"
  post "/users/:username/starred/:pokemon", to: "users#add_pokemon"
  delete "/users/:username/starred/:pokemon", to: "users#remove_pokemon"
end
