class Gallery

  attr_accessor :name,:city

  @@all = []

  def initialize(name:,city:)
    @name = name
    @city = city
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def paintings
    #Gallery#paintings
    #Returns an array of all paintings in a gallery
    Painting.all.select{|painting|painting.gallery == self}
  end

  def artists
    #Gallery#artists
    #Returns an array of all artists that have a painting in a gallery
    Painting.all.select{|painting|painting.gallery == self}.map{|painting|painting.artist}.uniq
  end

  def artist_names
    #Gallery#artist_names
    #Returns an array of the names of all artists that have a painting in a gallery
    artists.map{|artist|artist.name}
  end

  def most_expensive_painting
    #Gallery#most_expensive_painting
    #Returns an instance of the most expensive painting in a gallery
    Painting.all.select{|painting|painting.gallery == self}.max_by{|painting|
      painting.price
    }
  end
end
