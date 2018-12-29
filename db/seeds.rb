# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.new(name: 'action', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'adventure', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'animation', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'biography', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'comedy', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'crime', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'documentary', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'drama', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'family', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'fantasy', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'history', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'horror', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'musical', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'romance', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'scifi', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'thriller', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'war', description: 'Lorem ipsum dolor sit amet').save
Genre.new(name: 'western', description: 'Lorem ipsum dolor sit amet').save

Director.new(name: 'Steven Spilberg').save
Director.new(name: 'Alfred Hitckcock').save
Director.new(name: 'Martin Scorsese').save
Director.new(name: 'Ridley Scott').save
Director.new(name: 'Quentin Tarantino').save
Director.new(name: 'Francis Ford Copolla').save
Director.new(name: 'Stanley Kubrick').save
Director.new(name: 'George Lucas').save
Director.new(name: 'Woody Allen').save
Director.new(name: 'Mel Brooks').save
Director.new(name: 'Mel Gibson').save
Director.new(name: 'Daren Aronofsky').save
Director.new(name: 'Wes Anderson').save
Director.new(name: 'Peter Jackson').save

