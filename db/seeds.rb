#A dog should have a name, gender, age, and breed; vacinnated is optional

Dog.create(
  name: "Fido",
  gender: "male",
  age: 2,
  breed: "Beagle")

Dog.create(
  name: "Honey",
  gender: "female",
  age: 1,
  breed: "Golden Retriever",
  vaccinated?: true)

Dog.create(
  name: "PJ",
  gender: "male",
  age: 4,
  breed: "Pembroke Welsh Corgi",
  vaccinated?: true)
