class DogOwner < ApplicationRecord
  has_many :dogs
  has_many :dog_walkers, through: :dogs

  def self.beagle_owners
    joins(:dogs).where("dogs.breed = 'Beagle'")
  end

  def self.ordered_by_dogs_owned
    joins(:dogs).group("dog_owners.id").order("COUNT(*) DESC")
  end

  def self.with_several_dogs
    joins(:dogs).group("dog_owners.id").having("COUNT(*) >= 3")
  end

  def self.with_good_boys
    joins(:dogs).where(dogs: { well_trained: true }).group("dog_owners.id").having("COUNT(*) >= 2")
  end
end
