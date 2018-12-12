class Artist
  @@counter  = 0
  attr_accessor :name, :genre
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def songs
    @songs
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@counter +=1
  end
  
  def add_song_by_name(name)
    song1 = Song.new(name)
    song1.artist = self
    @songs << song1
    @@counter +=1
  end 
  
  def self.song_count
    @@counter
  end
end