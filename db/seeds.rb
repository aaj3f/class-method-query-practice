ami = DogOwner.create(name: "Ami", age: 21, preferred_customer: false)
yuudai = DogOwner.create(name: "Yuudai", age: 20, preferred_customer: false)
taka = DogOwner.create(name: "Taka", age: 31, preferred_customer: true)
tsubasa = DogOwner.create(name: "Tsubasa", age: 25, preferred_customer: true)
shion = DogOwner.create(name: "Shion", age: 23, preferred_customer: false)
shohei = DogOwner.create(name: "Shohei", age: 28, preferred_customer: false)
seina = DogOwner.create(name: "Seina", age: 30, preferred_customer: true)

fluffys = DogWalkingCompany.create(name: "Fluffy Friends")
dogdays = DogWalkingCompany.create(name: "Doggy Days")

jim = fluffys.dog_walkers.create(name: "Jim Halpert", full_time: true)
pam = fluffys.dog_walkers.create(name: "Pam Beasley", full_time: true)
dwight = dogdays.dog_walkers.create(name: "Dwight Schrute", full_time: true)
michael = dogdays.dog_walkers.create(name: "Michael Scott", full_time: true)
kelly = dogdays.dog_walkers.create(name: "Kelly Kapoor", full_time: false)
creed = fluffys.dog_walkers.create(name: "Creed Bratton", full_time: false)
angela = dogdays.dog_walkers.create(name: "Angela Martin", full_time: false)
phyllis = fluffys.dog_walkers.create(name: "Phyllis Vance", full_time: false)
stanley = fluffys.dog_walkers.create(name: "Stanley Hudson", full_time: false)
ryan = dogdays.dog_walkers.create(name: "Ryan Howard", full_time: false)
oscar = dogdays.dog_walkers.create(name: "Oscar Martinez", full_time: false)
kevin = dogdays.dog_walkers.create(name: "Kevin Malone", full_time: false)
darryl = fluffys.dog_walkers.create(name: "Darryl Philbin", full_time: true)

max = Dog.new(name: "Max", breed: "Labrador", age: 1, weight: 55, well_trained: false)
charlie = Dog.new(name: "Charlie", breed: "Golden Retriever", age: 11, weight: 70, well_trained: true)
cooper = Dog.new(name: "Cooper", breed: "English Bulldog", age: 2, weight: 50, well_trained: false)
buddy = Dog.new(name: "Buddy", breed: "Poodle", age: 12, weight: 70, well_trained: false)
jack = Dog.new(name: "Jack", breed: "Beagle", age: 3, weight: 30, well_trained: true)
bella = Dog.new(name: "Bella", breed: "Chihuahua", age: 10, weight: 9, well_trained: false)
lucy = Dog.new(name: "Lucy", breed: "Pug", age: 3, weight: 19, well_trained: true)
daisy = Dog.new(name: "Daisy", breed: "German Shepherd", age: 2, weight: 80, well_trained: false)
luna = Dog.new(name: "Luna", breed: "Pomeranian", age: 12, weight: 8, well_trained: true)
lola = Dog.new(name: "Lola", breed: "Pomeranian", age: 10, weight: 11, well_trained: true)
bear = Dog.new(name: "Bear", breed: "Chihuahua", age: 4, weight: 12, well_trained: true)
oliver = Dog.new(name: "Oliver", breed: "Labrador", age: 3, weight: 85, well_trained: true)
sophie = Dog.new(name: "Sophie", breed: "German Shepherd", age: 12, weight: 70, well_trained: true)
bailey = Dog.new(name: "Bailey", breed: "Golden Retriever", age: 1, weight: 55, well_trained: false)
rocky = Dog.new(name: "Rocky", breed: "Beagle", age: 10, weight: 30, well_trained: true)
ace = Dog.new(name: "Ace", breed: "Labrador", age: 11, weight: 60, well_trained: false)
bandit = Dog.new(name: "Bandit", breed: "Golden Retriever", age: 6, weight: 65, well_trained: true)
harley = Dog.new(name: "Harley", breed: "Chow Chow", age: 4, weight: 55, well_trained: true)

ami.dogs << max
yuudai.dogs << [buddy, daisy, oliver, sophie, harley, bandit]
taka.dogs << [jack, luna, bailey]
tsubasa.dogs << [bella, lola, ace]
shion.dogs << [lucy, bear]
shohei.dogs << [charlie, rocky]
seina.dogs << cooper

jim.dogs << [max, harley]
pam.dogs << [charlie, bandit]
dwight.dogs << [cooper, ace]
michael.dogs << [buddy, rocky]
kelly.dogs << daisy
creed.dogs << bear
angela.dogs << jack
phyllis.dogs << luna
stanley.dogs << lola
ryan.dogs << bailey
oscar.dogs << bella
kevin.dogs << sophie
darryl.dogs << [lucy, oliver]

max.save
charlie.save
cooper.save
buddy.save
jack.save
bella.save
lucy.save
daisy.save
luna.save
lola.save
bear.save
oliver.save
sophie.save
bailey.save
rocky.save
ace.save
bandit.save
harley.save
