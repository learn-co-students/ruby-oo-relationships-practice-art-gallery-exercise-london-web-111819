class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.filter {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist }
  end

  def artist_names
   artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    list_of_prices = paintings.map {|painting| painting.price}

    list_of_prices.reverse[0]
  end


end
