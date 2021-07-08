class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    Song.new(song_name, self)
      # song_name.artist = self
  end

  def self.song_count
    all_songs = Song.all.select do |song|
      song.artist.class == self
    end
    all_songs.count
  end


end
