class DogOwner < ApplicationRecord
  has_many :dogs
  has_many :dog_walkers, through: :dogs
end
