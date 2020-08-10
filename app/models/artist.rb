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
    #self is an instance of Artist
    Painting.all.select{|painting| painting.artist == self}
  end

  def cities
    self.paintings.map{|painting| painting.gallery.city}
  end

  def self.total_experience
    Artist.all.map{|artist| artist.years_experience}.reduce(:+)
  end

  def painting_count
    self.paintings.count
  end

  def self.most_prolific
    Artist.all.max_by do |artist|
      artist.painting_count / artist.years_experience  
    end
  end

  def creating_painting(title, price, gallery)
    painting = Painting.new(title, price)
    painting.gallery = gallery
    painting.artist = self
  end

end
