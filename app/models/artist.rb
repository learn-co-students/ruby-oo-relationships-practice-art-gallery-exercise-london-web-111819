class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.filter {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery }
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def years_experience
    @years_experience
  end

  def self.total_experience
    #add all the yoe of each artist

    list_of_artist_experience = self.all.map {|artist| artist.years_experience}
    total_yoe = 0

    list_of_artist_experience.each do |yoe|
      total_yoe += yoe.to_i
    end

    total_yoe
  end

  def self.most_prolific

  self.all.max_by {|artist| artist.paintings.length.to_f/artist.years_experience.to_i }

  end

  def create_painting (title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
