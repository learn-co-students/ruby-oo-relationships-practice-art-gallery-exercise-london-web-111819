class Painting

  attr_accessor :title,:price,:artist,:gallery

  @@all = []

  def initialize(title:,price:,artist:,gallery:)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.total_price
    #Painting.total_price
    #Returns an integer that is the total price of all paintings
    Painting.all.map{|painting|painting.price}.reduce(starting_value=0){|sum,num|sum+num}
  end

end
