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
    Painting.all.select{|painting|painting.artist == self}
  end

  def galleries
    self.paintings.map{|painting|painting.gallery}
  end
 
  def cities
    self.galleries.map{|gallery| gallery.city}
  end
    
  def self.total_experience ###############################
    total = 0
    self.all.each {|a| total += a.years_experience}
    return total
    
  end


end
