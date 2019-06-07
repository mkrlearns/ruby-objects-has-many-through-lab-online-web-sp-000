class Artist
  attr_accessor :name
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Artist.new(self, name, genre)
  end
 
end