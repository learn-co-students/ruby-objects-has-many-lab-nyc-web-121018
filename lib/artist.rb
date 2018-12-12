class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end


#.song_count
    #is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)
