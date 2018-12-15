require 'pry'

require_relative "./artist"

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist.name.length > 0
      @artist.name
    else
      nil
    end
  end

end #end of song class
