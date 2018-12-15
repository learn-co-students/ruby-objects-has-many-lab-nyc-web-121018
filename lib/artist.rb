class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
    song.artist == self
    end
  end

  def add_song(song)
    # @song = song
    @artist = self
  end

  def add_song_by_name(title)
    @title = Song.new
    @artist = self
  end

  def self.song_count
      @@all.size
  end
    # Song.all.each do |song|
    #   if song.artist = self
    #     puts



end
