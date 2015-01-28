dionne = User.create(
  name: "dionne",
  password: "cat"
  )

baby = Movie.create(
  name: "Adventures in Babysitting",
  description: "A lifetime of fun. In just one night"
  )

live_action = Genre.create(
  name: "Live-Action"
  )

baby.genres << live_action
dionne.movies << baby