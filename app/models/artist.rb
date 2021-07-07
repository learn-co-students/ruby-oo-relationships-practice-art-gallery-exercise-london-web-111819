class Artist

  attr_accessor :name, :years_experience

  @@all = []

  def initialize(name:,years_experience:)
    @name = name
    @years_experience = years_experience
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def create_painting(title:,price:,gallery_object:)
    #Artist#create_painting
    #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    #TODO: ASSUMES the gallery already exists #found_gallery = Gallery.all.find{|current_gallery|current_gallery == gallery} || nil
    Painting.new(title:title, price:price, artist:self,gallery:gallery_object)
  end

  def paintings
    #Returns an array all the paintings by an artist
    Painting.all.find{|painting|painting.artist == self}
  end

  def galleries
    #Artist#galleries
    #Returns an array of all the galleries that an artist has paintings in
    Painting.all.select{|painting|painting.artist == self}.map{|painting|painting.gallery}.uniq
  end

  def cities
    #Artist#cities
    #Return an array of all cities that an artist has paintings in
    galleries.map{|gallery|gallery.city}.uniq
  end

  def self.total_experience
    #Artist.total_experience
    #Returns an integer that is the total years of experience of all artists
    Artist.all.map{|artist|artist.years_experience}.reduce(initial_value=0){|running_sum,number|running_sum+number}
  end

  def self.most_prolific 
    #Artist.most_prolific
    #Returns an instance of the artist with the highest amount of paintings per year of experience.
    #for each artist find: paintings_number, years_experience. 
    #  calculate paintings_number/years_experience
    #  find the maximum and return object of that maximum
    Artist.all.max_by{|artist|
      (Painting.all.select{|painting|painting.artist == artist}.count/artist.years_experience)
    }
  end

end
