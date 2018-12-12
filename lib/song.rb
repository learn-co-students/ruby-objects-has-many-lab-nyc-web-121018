class Song
  attr_accessor :name, :artist

  @@all = []

  # def artist
  #   @artist
  # end
  #
  # def artist=(artist)
  #   @artist = artist
  # end

  def initialize(name, *artist)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
     if !artist
       nil
     else
       self.artist.name
     end
    #{!artist ? nil : self.artist.name }
  end

end
