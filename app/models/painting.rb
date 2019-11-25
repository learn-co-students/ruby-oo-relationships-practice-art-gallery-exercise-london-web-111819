class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def price
    @price
  end

  def self.list_of_prices
    self.all.map {|painting| painting.price}
  end

  def self.total_price
    total_price = 0

    self.list_of_prices.each do |price|
      total_price += price.to_i
    end

    total_price

  end

end