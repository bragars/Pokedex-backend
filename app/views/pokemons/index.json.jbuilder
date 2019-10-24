json.data @pokemons, partial: "pokemons/pokemon", as: :pokemon
json.size @pokemons.size
json.next_page @pokemons.next_page
json.prev_page @pokemons.prev_page
