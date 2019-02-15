class DogWalker < ApplicationRecord
  belongs_to :dog_walking_company
  has_many :dogs
  has_many :dog_owners, through: :dogs

  def self.with_preferred_customers
    joins(dogs: :dog_owner).group("dog_walkers.id").having(dog_owners: { preferred_customer: true } )
  end

  def self.with_big_dogs
    joins(:dogs).group("dog_walkers.id").having("dogs.weight >= 50")
  end
end
