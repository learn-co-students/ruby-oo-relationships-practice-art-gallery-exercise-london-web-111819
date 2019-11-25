require_relative '../config/environment.rb'

artist1 = Artist.new("Leonardo DaVinci", "200")
artist2 = Artist.new("Vincent van Gogh", "150")
artist3 = Artist.new("Pablo Picasso", "100")

gallery1 = Gallery.new("The Lourve", "Paris, France")
gallery2 = Gallery.new("Santa Maria delle Grazie", "Milan, Italy")
gallery3 = Gallery.new("The Museum of Modern Art", "New York, United States")

painting1 = Painting.new("Mona Lisa", "1000000", artist1, gallery1)
painting2 = Painting.new("The Starry Night", "1500000", artist2, gallery3)
painting3 = Painting.new("The Last Supper", "2000000", artist1, gallery2)
painting4 = Painting.new("Mona Lisa", "2500000", artist3, gallery3)

binding.pry

puts "Bob Ross does not rule."
