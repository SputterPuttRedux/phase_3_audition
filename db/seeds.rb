dionne = User.create(
  name: "dionne",
  password: "cat"
  )

baby = Movie.create(
  name: "Adventures in Babysitting",
  description: "A lifetime of fun. In just one night",
  rating: 5
  )

live_action = Genre.create(
  name: "Live-Action"
  )

baby.genres << live_action
dionne.movies << baby

genres = ["Live-Action", "Foreign", "Comedy", "Drama", "Political","Science-Fiction", "Fantasy", "Historical"]

10.times do |i|
  Genre.create(
    name: genres[i]
    )
end

10.times do |i|
  Movie.create(
    name: Faker::Lorem.word,
    description: Faker::Lorem.paragraph,
    rating: rand(1..5)
    )
end

Movie.all.each do |mov|
  mov.genres << Genre.all.sample(2)
end

10.times do |i|
  User.create(
    name: Faker::Name.name,
    password: "cat"
    )
end

User.all.each do |usr|
  usr.movies << Movie.all.sample(rand(1..3))
end