class User < ApplicationRecord
  has_many :starreds
  has_many :pokemons, through: :starreds

  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
end
