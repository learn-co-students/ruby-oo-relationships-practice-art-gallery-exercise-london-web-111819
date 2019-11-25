class Artist
  attr_reader :name
  attr_accessor :total_experience

  @@all = []

  def initialize(name, total_experience)
    @name = name
    @total_experience= total_experience
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.total_experience
    Artist.all.inject(0){|sum, artist| sum + artist.total_experience}
  end

  def self.most_prolific
    Artist.all.min_by{|artist| artist.total_experience / artist.paintings.length }
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    paintings.map{|painting| painting.gallery.city}
  end

  def create_painting(title, price, gallery)
    Painting.new(price, title, self, gallery)
  end

end
