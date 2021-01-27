# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flavor.destroy_all
ToppingType.destroy_all

choc = Flavor.create(name: "Chocolate")
van = Flavor.create(name: "Vanilla")
straw = Flavor.create(name: "Strawberry")
mint = Flavor.create(name: "Mint Chip")
cookie = Flavor.create(name: "Cookie Dough")
pecan = Flavor.create(name: "Butter Pecan")

carm = ToppingType.create(name: "Caramel Sauce")
strawb = ToppingType.create(name: "Strawberry Sauce")
fudge = ToppingType.create(name: "Fudge Sauce")
whip = ToppingType.create(name: "Whip Cream")
sprink = ToppingType.create(name: "Sprinkles")
crunch = ToppingType.create(name: "Toffee Crunchies")
cherry = ToppingType.create(name: "Cherry on Top")