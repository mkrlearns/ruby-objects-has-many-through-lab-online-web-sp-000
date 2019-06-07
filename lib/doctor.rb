class Artist
  attr_accessor :name, :patient, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{ |song| song.artist == self }
  end

  def genres
    self.songs.collect{ |song| song.genre }
  end

end