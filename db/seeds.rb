# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mass_effect_3 = Game.create(name: "Mass Effect 3", developer: "BioWare", release_date: "March 6th, 2012")
stardew_valley = Game.create(name: "Stardew Valley", developer: "Eric Barone", release_date: "February 26th, 2016")
the_last_of_us = Game.create(name: "The Last of Us", developer: "Naughty Dog", release_date: "June 14th, 2013")
red_dead_redemption = Game.create(name: "Red Dead Redemption", developer: "Rockstar San Diego", release_date: "May 18th, 2010")
fire_emblem_3_houses = Game.create(name: "Fire Emblem: Three Houses", developer: "Intelligent Systems", release_date: "July 26th, 2019")

drew = User.create(name: "Drew Matheny", age: 27, bio: "Flatiron Student")
alex = User.create(name: "Alex", age: 29, bio: "Video Producer")
glenn = User.create(name: "Glenn", age: 30, bio: "Software Developer")
will = User.create(name: "Will", age: 29, bio: "Animation Artist/Producer")
tyler = User.create(name: "Tyler", age: 30, bio: "Project Manager")

rpg = Genre.create(name: "RPG")
action = Genre.create(name: "Action")
adventure = Genre.create(name: "Adventure")
simulation = Genre.create(name: "Simulation")
strategy = Genre.create(name: "Strategy")

GameGenre.create(game_id: mass_effect_3.id, genre_id: rpg.id)
GameGenre.create(game_id: mass_effect_3.id, genre_id: action.id)
GameGenre.create(game_id: red_dead_redemption.id, genre_id: rpg.id)
GameGenre.create(game_id: red_dead_redemption.id, genre_id: action.id)
GameGenre.create(game_id: fire_emblem_3_houses.id, genre_id: rpg.id)
GameGenre.create(game_id: fire_emblem_3_houses.id, genre_id: strategy.id)
GameGenre.create(game_id: the_last_of_us.id, genre_id: action.id)
GameGenre.create(game_id: the_last_of_us.id, genre_id: adventure.id)
GameGenre.create(game_id: stardew_valley.id, genre_id: simulation.id)

Review.create(score: 10, text: "A fantastic game!  I loved every minute of it!", user_id: drew.id, game_id: red_dead_redemption.id, snippet: "A fantastic game!")
Review.create(score: 8, text: "This game was very good and nostalgic", user_id: drew.id, game_id: stardew_valley.id, snippet: "A great game")
Review.create(score: 9, text: "Almost perfect.  Loved the game right until the end.", user_id: drew.id, game_id: fire_emblem_3_houses.id, snippet: "Almost perfect")
Review.create(score: 10, text: "In my top 3 games of all time", user_id: drew.id, game_id: the_last_of_us.id, snippet: "Perfect!")
Review.create(score: 8, text: "This game was great!", user_id: drew.id, game_id: mass_effect_3.id, snippet: "Great!")

Review.create(score: 9, text: "I love cowboy games!", user_id: glenn.id, game_id: red_dead_redemption.id, snippet: "Awesome!")



