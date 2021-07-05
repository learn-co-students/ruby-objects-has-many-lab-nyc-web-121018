class Song
  attr_accessor :name, :song, :artist
  ## initialize will need to add song to Artist
  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @song
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

end
