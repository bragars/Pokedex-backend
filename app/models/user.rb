class User < ApplicationRecord
  has_many :starreds
  has_many :pokemons, through: :starreds
end
