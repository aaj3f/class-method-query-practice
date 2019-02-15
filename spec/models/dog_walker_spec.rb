require 'spec_helper'

describe DogWalker do

  describe "::with_preferred_customers" do
    it "returns all dog walkers who walk dogs for preferred customers" do
      dog_walkers = []
      expect(DogWalker.with_preferred_customers.pluck(:name).uniq).to eq(dog_walkers)
    end
  end

  describe "::method" do
    it "" do
      dog_walkers = []
      expect(DogWalker.method.pluck(:name)).to eq(dog_walkers)
    end
  end
end
