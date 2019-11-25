require_relative '../config/environment.rb'


artist1 = Artist.new("Robert", 4)
artist2 = Artist.new("Angelo" ,11)

gal1 = Gallery.new("aka","NY")
gal2 = Gallery.new("townhall", "Denver")
gal3 = Gallery.new("main", "London")

pic1 = Painting.new("face", 120, artist1, gal1)
pic2 = Painting.new("Hands", 220, artist1, gal2)
pic3 = Painting.new("Tree", 350, artist2, gal3)

binding.pry

puts "Bob Ross rules."
