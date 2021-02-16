# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(name: "zeub", bio: "wow", age: 33, genre: "F", email: "zeub@zebi.com", password: "123456") 
user_2 = User.create(name: "zoub", bio: "wow", age: 33, genre: "F", email: "zoub@zebi.com", password: "123456")

player_1 = Player.create(category: "Board games", user: user_1)
player_2 = Player.create(category: "Card games", user: user_2)

