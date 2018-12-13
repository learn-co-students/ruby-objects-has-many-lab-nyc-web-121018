class Song

  attr_accessor :song, :artist, :name
  @@all = []

  def initialize(name)
    @song = song
    @name = name
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def artist_name
    if !artist
      nil
    else self.artist.name
    end
  end

end
