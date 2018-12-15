class Song

  attr_accessor :artist, :name

  @@all =[]

  def initialize(name, artist = nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end

  # def new
  #   Song.new(name)
  #   @@all << self
  # end


end
