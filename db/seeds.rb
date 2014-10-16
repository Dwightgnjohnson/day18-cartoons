# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cartoon.create(
               name: "Batman Beyond",
          characters: "Bruce Wayne, Ace, Terry McGinnis",
          photo_url: "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Ftheepicbeyond.com%2Fblog%2Fwp-content%2Fuploads%2F2013%2F01%2FBatman-Beyond-580x333.png&f=1",
          onair: false,
          dvd_price: 80
               )
