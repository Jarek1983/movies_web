# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.new(name: 'action').save
Genre.new(name: 'adventure').save
Genre.new(name: 'animation').save
Genre.new(name: 'biography').save
Genre.new(name: 'comedy').save
Genre.new(name: 'crime').save
Genre.new(name: 'documentary').save
Genre.new(name: 'drama').save
Genre.new(name: 'family').save
Genre.new(name: 'fantasy').save
Genre.new(name: 'history').save
Genre.new(name: 'horror').save
Genre.new(name: 'musical').save
Genre.new(name: 'romance').save
Genre.new(name: 'scifi').save
Genre.new(name: 'thriller').save
Genre.new(name: 'war').save
Genre.new(name: 'western').save

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

