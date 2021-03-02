require_relative '../config/environment.rb'

pablo_picasso=Artist.new("Pablo Picasso", 56)
shepard_fairey=Artist.new("Shepard Fairey", 35)
bob_ross=Artist.new("Bob Ross", 45)
rachel_coan=Artist.new("Rachel Coan", 13)

peanut_gallery=Gallery.new("Peanut Gallery", "Lexington")
gallerio_di_poopo=Gallery.new("Gallerio di Poopo", "Milan")
museum_of_sex=Gallery.new("Museum of Sex", "Manhattan")

almond_sunrise=Painting.new("Almond Sunrise",10000000, pablo_picasso, peanut_gallery)
cashew_nightmare=Painting.new("Cashew Nightmare", 5000000, pablo_picasso, gallerio_di_poopo)
smelly_chicken_head=Painting.new("Smelly Chicken Head", 700, rachel_coan, museum_of_sex)
oddball_weird_shit=Painting.new("Oddball Weird Shit", 35000001, bob_ross, museum_of_sex)
death_of_andre=Painting.new("Death of Andre", 700000003, shepard_fairey, peanut_gallery)



binding.pry

puts "Bob Ross rules."
