require 'spec_helper'

describe DogOwner do

  describe "::beagle_owners" do
    it "returns all dog owners who have beagles" do
      dog_owners = ["Shohei", "Taka"]
      expect(DogOwner.beagle_owners.pluck(:name).sort).to eq(dog_owners.sort)
    end
  end

  describe "::ordered_by_dogs_owned" do
    it "sorts all dog owners from most dogs owned to least dogs owned" do
      dog_owners = ["Yuudai", "Taka", "Tsubasa", "Shion", "Shohei", "Ami", "Seina"]
      expect(DogOwner.ordered_by_dogs_owned.pluck(:name)).to eq(dog_owners)
    end
  end

  describe "::with_several_dogs" do
    it "returns all dog owners with 3 or more dogs" do
      dog_owners = ["Yuudai", "Taka", "Tsubasa"]
      expect(DogOwner.with_several_dogs.pluck(:name).sort).to eq(dog_owners.sort)
    end
  end

  describe "::with_good_boys" do
    it "returns dog owners with 2 or more well-trained dogs" do
      dog_owners = ["Yuudai", "Taka", "Shion", "Shohei"]
      expect(DogOwner.with_good_boys.pluck(:name).sort).to eq(dog_owners.sort)
    end
  end

end
