class Painting
  attr_reader :price, :title, :artist, :gallery

  @@all = []

  def initialize(price, title, artist, gallery)
    @price = price
    @title = title
    @artist = artist
    @gallery = gallery
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.inject(0){|sum, painting| sum + painting.price}
  end
end
