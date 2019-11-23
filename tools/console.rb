require_relative '../config/environment.rb'

#For the model scribble, check the image in ./tools

#Input data below
a_Mike = Artist.new(name:"Mike the Artist",years_experience:10)
a_Jane = Artist.new(name:"Jane the Artist",years_experience:10)
a_Aydanur = Artist.new(name:"Aydanur the Artist",years_experience:10)
g1 = Gallery.new(name:"Warm Gallery",city:"London")
g3 = Gallery.new(name:"Warmer Gallery",city:"London")
g2 = Gallery.new(name:"Cold Gallery",city:"Edinburgh")
a_Mike.create_painting(title:"The Countryside v1",price:9999,gallery_object:g1)
a_Mike.create_painting(title:"The Countryside v3",price:3330,gallery_object:g3)
a_Mike.create_painting(title:"The Countryside v2",price:1000,gallery_object:g2)
a_Aydanur.create_painting(title:"Istanbul Views",price:2000,gallery_object:g1)
a_Jane.create_painting(title:"Snow Dows",price:3000,gallery_object:g1)
binding.pry

puts "Basri works hard. Learning to play as well..."
