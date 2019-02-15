class Dog < ApplicationRecord
  belongs_to :dog_owner
  belongs_to :dog_walker

  def self.good_dog
    where(well_trained: true)
  end

  def self.puppy
    where("age < 2")
  end

  def self.retriever
    where(breed: ["Labrador", "Golden Retriever"])
  end

  def self.young_owner
    joins(:dog_owner).where("dog_owners.age < 25")
  end

  def self.full_time_walker
    joins(:dog_walker).where(dog_walkers: { full_time: true } )
  end

  def self.fluffy_dog
    joins(dog_walker: :dog_walking_company).where("dog_walking_companies.name = 'Fluffy Friends'")
  end

  def self.good_boy
    where("age < 5 AND well_trained = 1")
  end

  def self.three_oldest
    order(age: :desc).limit(3)
  end

end
