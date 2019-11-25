# require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/painting.rb'
require_relative '../app/models/gallery.rb'
require 'pry'

art1 = Artist.new('Artist1', 20)
art2 = Artist.new('Artist2', 20)
art3 = Artist.new('Artist3', 30)


gal1 = Gallery.new('Gallery1', 'London')
gal2 = Gallery.new('Gallery2', 'Moscow')
gal3 = Gallery.new('Gallery3', 'Turkey')

paint1 = Painting.new(1000, 'Mona Lisa', art1, gal1)
paint1_2 = Painting.new(1200, 'Lona Misa', art1, gal2) 
paint2 = Painting.new(2000, 'Rubens', art2, gal2)
paint2_2 = Painting.new(4000, 'Rubensesque', art2, gal3)
paint3 = Painting.new(3000, 'Da Vinci', art3, gal3)
paint3_2 = Painting.new(5000, 'Da Vinci Code', art3, gal1)
paint3_3 = Painting.new(5000, 'Da Vinci Code', art2, gal1)

binding.pry

puts "Bob Ross rules."
