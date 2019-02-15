class DogWalker < ApplicationRecord
  belongs_to :dog_walking_company
  has_many :dogs
  has_many :dog_owners, through: :dogs
end
