# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
Player.destroy_all
User.destroy_all

user_1 = User.create(name: "Lomyg", bio: "Bien le bonjour, j'ai hâte de partager de bons moments de reflexion et de stratégie avec vous!", age: 27, genre: "M", email: "lom@game.com", password: "123456") 
user_2 = User.create(name: "Julyen", bio: "Hello tout le monde, je suis passioné de poker mais je suis ouvert aux découvertes", age: 28, genre: "M", email: "jul@game.com", password: "123456")
user_3 = User.create(name: "Dymytry", bio: "Salut! Je fais du Donjon et Dragons depuis tout petit, mais je m'adapte à tout et suis dispo pour intégrer une campagne entière", age: 28, genre: "M", email: "dym@game.com", password: "123456") 
user_4 = User.create(name: "Alexandre", bio: "Bonjour à tous, ma passion pour la fondation scp m'a mené à l'attention du détail, je fais principalement game master", age: 29, genre: "M", email: "ale@game.com", password: "123456") 
user_5 = User.create(name: "Charles", bio: "Hello, je suis pro player Dawn of War entre autres, je monte parallèlement ma boite de game design", age: 24, genre: "M", email: "cha@game.com", password: "123456") 
user_6 = User.create(name: "Marie", bio: "Salut, j'adore le deck building et la belote", age: 28, genre: "F", email: "mar@game.com", password: "123456") 
user_7 = User.create(name: "Obi Juan", bio: "Hello there", age: 28, genre: "F", email: "obi@game.com", password: "123456") 
user_8 = User.create(name: "Doge", bio: "wow", age: 28, genre: "F", email: "dog@game.com", password: "123456")
user_9 = User.create(name: "Dani", bio: "Je n'ai que deux amis mais j'aime jouer", age: "29", genre: "F", email: "dan@game.com", password: "123456")


player_1 = Player.create(category: "Board-Games", nickname: "Lom", price: 9999, gender: "Male", user: user_1)
player_2 = Player.create(category: "Card-Games", nickname: "Jul", price: 9999, gender: "Male", user: user_2)
player_3 = Player.create(category: "Role-Playing-Games", nickname: "Dym", price: 9999, gender: "Female", user: user_3)
player_4 = Player.create(category: "Role-Playing-Games", nickname: "Ale", price: 9999, gender: "Male", user: user_4)
player_5 = Player.create(category: "Video-Games", nickname: "Cha", price: 9999, gender: "Male", user: user_5)
player_6 = Player.create(category: "Card-Games", nickname: "Mar", price: 9999, gender: "Female", user: user_6)
player_7 = Player.create(category: "Board-Games", nickname: "Obi", price: 9999, gender: "Male", user: user_7)
player_8 = Player.create(category: "Video-Games", nickname: "Dog", price: 9999, gender: "Female", user: user_8)
player_9 = Player.create(category: "Board-Games", nickname: "Dym2", price: 9999, gender: "Female", user: user_3)
