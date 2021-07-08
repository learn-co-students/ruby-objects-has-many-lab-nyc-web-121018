class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name, artist = nil)
      @name = name
      @artist = artist

      @@all << self
    end

    def self.all
      @@all
    end

    def artist_name
      # Artist.all.select do |song|
      #   song.artist == self
      # end
      if @artist
        @artist.name
      else
        nil
      end
    end


end
