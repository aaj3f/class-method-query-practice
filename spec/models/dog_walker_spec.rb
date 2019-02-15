require 'spec_helper'

describe DogWalker do

  describe "::with_preferred_customers" do
    it "returns all dog walkers who walk dogs for preferred customers" do
      dog_walkers = ["Dwight Schrute", "Angela Martin", "Phyllis Vance", "Stanley Hudson", "Ryan Howard", "Oscar Martinez"]
      expect(DogWalker.with_preferred_customers.pluck(:name).sort).to eq(dog_walkers.sort)
    end
  end

  describe "::with_big_dogs" do
    it "returns all dog walkers who walk dogs weighing 50 pounds or more" do
      dog_walkers = ["Jim Halpert", "Pam Beasley", "Dwight Schrute", "Michael Scott", "Kelly Kapoor", "Ryan Howard", "Kevin Malone"]
      expect(DogWalker.with_big_dogs.pluck(:name)).to eq(dog_walkers)
    end
  end
end
