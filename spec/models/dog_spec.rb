require 'spec_helper'

describe Dog do

  describe "::good_dog" do
    it "returns dogs that are well-trained" do
      dogs = ["Harley", "Charlie", "Bandit", "Rocky", "Bear", "Jack", "Luna", "Lola", "Sophie", "Lucy", "Oliver"]
      expect(Dog.good_dog.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::puppy" do
    it "returns dogs that are younger than 2-years-old" do
      dogs = ["Max", "Bailey"]
      expect(Dog.puppy.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::retriever" do
    it "returns dogs that are either Labradors or Golden Retrievers" do
      dogs = ["Max", "Charlie", "Bandit", "Ace", "Bailey", "Oliver"]
      expect(Dog.retriever.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::young_owner" do
    it "returns dogs with owners younger than 25" do
      dogs = ["Max", "Harley", "Bandit", "Buddy", "Daisy", "Bear", "Sophie", "Lucy", "Oliver"]
      expect(Dog.young_owner.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::full_time_walker" do
    it "returns dogs with full-time dog-walkers" do
      dogs = ["Max", "Harley", "Charlie", "Bandit", "Cooper", "Ace", "Buddy", "Rocky", "Lucy", "Oliver"]
      expect(Dog.full_time_walker.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::fluffy_dog" do
    it "returns dogs whose walkers work for the company nammed 'Fluffy Friends'" do
      dogs = ["Max", "Harley", "Charlie", "Bandit", "Bear", "Luna", "Lola", "Lucy", "Oliver"]
      expect(Dog.fluffy_dog.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::good_boy" do
    it "returns dogs who are younger than 5 AND well-trained" do
      dogs = ["Harley", "Bear", "Jack", "Lucy", "Oliver"]
      expect(Dog.good_boy.pluck(:name).sort).to eq(dogs.sort)
    end
  end

  describe "::three_oldest" do
    it "returns the three oldest dogs" do
      dogs = ["Buddy", "Luna", "Sophie"]
      expect(Dog.three_oldest.pluck(:name).sort).to eq(dogs.sort)
    end

  end

  # describe "::first_five" do
  #   it "returns the first five Boats" do
  #     boats = ["H 28", "Nacra 17", "Regulator 34SS", "Zodiac CZ7", "Boston Whaler"]
  #     expect(Boat.first_five.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::dinghy" do
  #   it "returns boats shorter than 20 feet" do
  #     boats = ["Nacra 17", "Boston Whaler", "49er", "Laser", "Harpoon 4.7", "Sunfish"]
  #     expect(Boat.dinghy.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::ship" do
  #   it "returns boats 20 feet or longer" do
  #     boats = ["H 28", "Regulator 34SS", "Zodiac CZ7", "Cape Dory", "Triton 21 TRX", "Sun Tracker Regency 254 XP3"]
  #     expect(Boat.ship.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::last_three_alphabetically" do
  #   it "returns last three boats in alphabetical order" do
  #     boats = ["Zodiac CZ7", "Triton 21 TRX", "Sunfish"]
  #     expect(Boat.last_three_alphabetically.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::without_a_captain" do
  #   it "returns boats without a captain" do
  #     boats = ["Harpoon 4.7", "Sunfish"]
  #     expect(Boat.without_a_captain.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::sailboats" do
  #   it "returns all boats that are sailboats" do
  #     boats = ["H 28", "Nacra 17", "49er", "Laser", "Harpoon 4.7", "Sunfish"]
  #     expect(Boat.sailboats.pluck(:name)).to eq(boats)
  #   end
  # end
  #
  # describe "::with_three_classifications" do
  #   it "returns boats with three classifications" do
  #     boats = ["Nacra 17", "Zodiac CZ7", "Sun Tracker Regency 254 XP3"].sort
  #     expect(Boat.with_three_classifications.pluck(:name.sort)).to eq(boats)
  #   end
  # end

end
