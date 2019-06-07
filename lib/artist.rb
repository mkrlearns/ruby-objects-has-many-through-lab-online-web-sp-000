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
    Song.new(self, name, genre)
  end

  def songs
    Song.all.select{ |song| song.artist == self }
  end

  def genres
    self.songs.collect{|song| song.genre}
  end
 
end