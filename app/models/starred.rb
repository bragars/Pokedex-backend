class Starred < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
end
