class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all.push(self)
  end

  # Returns an `array` of all the paintings
  def self.all
    @@all
  end

  def self.total_price
    Painting.all.inject(0){|sum, painting| sum + painting.price}
  end

end
