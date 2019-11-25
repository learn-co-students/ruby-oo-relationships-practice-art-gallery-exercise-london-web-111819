class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all.push(self)
  end

  # Returns an `array` of all the artists
  def self.all
    @@all
  end

  # Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    Artist.all.inject(0){|sum, artist| sum + artist.years_experience}
  end

  # Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    Artist.all.max_by{|artist| artist.paintings.length.to_f / artist.years_experience }
  end

  # Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  # Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    paintings.map{|painting| painting.gallery}
  end

  # Return an `array` of all cities that an artist has paintings in
  def cities
    galleries.map{|gallery| gallery.city}
  end
  
  # Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
