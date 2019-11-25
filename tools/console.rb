# require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'
require 'pry'


artist1 = Artist.new('Artist1', 11)
artist2 = Artist.new('Artist2', 12)
artist3 = Artist.new('Artist3', 13)


gal1 = Gallery.new('Gallery1', 'London')
gal2 = Gallery.new('Gallery2', 'Moscow')
gal3 = Gallery.new('Gallery3', 'Dubai')


painting1 = Painting.new('Painting1', 1000, artist1, gal1)
painting2 = Painting.new('Painting2', 2000, artist2, gal2)
painting3 = Painting.new('Painting3', 3000, artist3, gal3)


binding.pry

puts "Bob Ross rules."
