require "pry"

require_relative "./song"

class Artist

  @@all = []

  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end



  def all
    @all
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    newSong = Song.new(song_name)
    newSong.artist = self
    @songs << newSong
  end

  def self.song_count
    result = []
    @@all.each do |array_item|
      array_item.songs
    end


  end










end #end of artist class
