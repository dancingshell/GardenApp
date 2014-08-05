# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    

    climates = Climate.create([
      { climate: "Desert", zone: "16" },
      { climate: "Meditteranean", zone: "10"}
    ])

    users = User.create([
      { name: "Mara Jaffe", email: "mara@test.com", zipcode: "91401", climate: climates[0]},
      { name: "Sheila", email: "sheila@test.com", zipcode: "91745", climate: climates[1]}
    ])

    seasons = Season.create([
      { year: "2014", season: "summer"},
      { year: "2014", season: "spring"},
      { year: "2014", season: "summer"}
    ])

    gardens = Garden.create([
      { name: "vegetable", shade: "full_sun", season: seasons[0] },
      { name: "fruit", shade: "partial_sun", season: seasons[0] }
    ])

    varieties = Variety.create([
      { variety: "Tomato", garden: gardens[0]},
      { variety: "Pepper", garden: gardens[0]},
      { variety: "Blueberry", garden: gardens[1]}
    ])

    plants = Plant.create([
      { name: "Red Cherry", health: "3", variety: varieties[0] },
      { name: "Michael Pollen", health: "3", variety: varieties[0] },
      { name: "Californai Blue", health: "2", variety: varieties[1] }
    ])