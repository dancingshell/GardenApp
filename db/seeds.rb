# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    

    # climates = Climate.create([
    #   { climate: "Nil Climate", zone: "0" },
    #   { climate: "Climate1", zone: "1" },
    #   { climate: "Climate2", zone: "2" },
    #   { climate: "Climate3", zone: "3" },
    #   { climate: "Climate4", zone: "4" },
    #   { climate: "Climate5", zone: "5" },
    #   { climate: "Climate6", zone: "6" },
    #   { climate: "Climate7", zone: "7" },
    #   { climate: "Climate8", zone: "8" },
    #   { climate: "Climate9", zone: "9" },
    #   { climate: "Climate10", zone: "10" },
    #   { climate: "Climate11", zone: "11" },
    #   { climate: "Climate12", zone: "12" },
    #   { climate: "Climate13", zone: "13" },
    #   { climate: "Climate14", zone: "14" },
    #   { climate: "Climate15", zone: "15" },
    #   { climate: "Climate16", zone: "16" },
    #   { climate: "Climate17", zone: "17" },
    #   { climate: "Climate18", zone: "17" },
    # ])

    # users = User.create([
    #   { name: "Mara Jaffe", email: "mara@test.com", zipcode: "91401", climate: climates[0]},
    #   { name: "Sheila", email: "sheila@test.com", zipcode: "91745", climate: climates[1]}
    # ])

    # seasons = Season.create([
    #   { season: "Winter"},
    #   { season: "Spring"},
    #   { season: "Summer"},
    #   { season: "Autumn"}
    # ])
    
    scores = Score.create([
      { score: "1"},
      { score: "2"},
      { score: "3"},
      { score: "4"},
      { score: "5"}
    ])

    # gardens = Garden.create([
    #   { name: "vegetable", shade: "full_sun", season: seasons[0] },
    #   { name: "fruit", shade: "partial_sun", season: seasons[0] }
    # ])

    # varieties = Variety.create([
    #   { variety: "Tomato", garden: gardens[0]},
    #   { variety: "Pepper", garden: gardens[0]},
    #   { variety: "Blueberry", garden: gardens[1]}
    # ])

    # plants = Plant.create([
    #   { name: "Red Cherry", health: "3", variety: varieties[0] },
    #   { name: "Michael Pollen", health: "3", variety: varieties[0] },
    #   { name: "Californai Blue", health: "2", variety: varieties[1] }
    # ])